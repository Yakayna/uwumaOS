#!/usr/bin/env python

# uwumaOS Custom OEM ROM Project
# Copyright (C) 2026 Chau Vinh Tien
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

import os
import sys

# Magic for the vbmeta image header
AVB_MAGIC = b"AVB0"
AVB_MAGIC_LEN = 4

# Information about the verification flags
FLAGS_OFFSET = 123
FLAGS_TO_SET = b'\x03'

if __name__ == "__main__":

    # if a correct argument is not provided
    if len(sys.argv) != 2:
        sys.exit(f"Usage: python ./{os.path.basename(__file__)} <vbmeta-image>")

    # try reading the file with read/write to make sure it exists
    FILE = sys.argv[1]

    try:
        fd = os.open(FILE, os.O_RDWR)
    except OSError:
        sys.exit(f"Error reading file: {FILE}\nFile not modified. Exiting...")

    # making sure it's a vbmeta image by reading the magic bytes at the start of the file
    magic = os.read(fd, AVB_MAGIC_LEN)

    if magic != AVB_MAGIC:
        fd.close()
        sys.exit("Error: The provided image is not a valid vbmeta image.\nFile not modified. Exiting...")

    # set the disable-verity and disable-verification flags at offset 123
    try:
        os.lseek(fd, FLAGS_OFFSET, os.SEEK_SET)
        os.write(fd, FLAGS_TO_SET)
    except OSError:
        fd.close()
        sys.exit("Error: Failed when patching the vbmeta image.\nExiting...")

    # end of program
    os.close(fd)
    print("Patching successful.")
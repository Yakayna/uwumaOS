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
import sys	
from configobj import ConfigObj

# Functions
# Author : @trungmmmmt

def lineNumByPhrase(phrase, source, isText=0, startsAt=0):
	if isText:
		if isText == 1 or isText == True:
			source = source.splitlines()
		for (i, line) in enumerate(source):
			if i >= startsAt and line.startswith(phrase):
				return i
	else:
		with open(source, 'r') as f:
			return lineNumByPhrase(phrase, f, 2, startsAt)
	return -1


def fileReplaceRange(filename, startIndex, endIndex, content):
	lines = []
	with open(filename, 'r') as f:
		lines = f.readlines()

	with open(filename, 'w') as f:
		wrote = False
		for i, line in enumerate(lines):
			if i not in range(startIndex, endIndex + 1):
				f.write(line)
			else:
				if not wrote:
					f.write(content + '\n')
					wrote = True


# Main script
# Loading configs

for i, arg in enumerate(sys.argv):
	if i > 0:
		ini = ConfigObj(str(sys.argv[1]))
		config = ini['main']
		replaceFile = str(sys.argv[2])
		phraseStart = config['phraseStart']
		phraseEnd = config['phraseEnd']
		replaceWith = config['replaceWith']
		startIndex = lineNumByPhrase(phraseStart, replaceFile)
		endIndex = lineNumByPhrase(phraseEnd, replaceFile, 0, startIndex)
		fileReplaceRange(replaceFile, startIndex, endIndex, replaceWith)

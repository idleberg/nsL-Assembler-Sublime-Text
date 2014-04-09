# nsL Assembler for SublimeText

[nsL Assembler](http://sourceforge.net/projects/nslassembler/) syntax definitions, command completions and build system for [Sublime Text](http://www.sublimetext.com/).

nsL is a new C-like programming language for writing [NSIS](http://nsis.sourceforge.net) installation wizards. The nsL assembler takes nsL code and translates it into original NSIS script which can then be compiled.

![Screenshot](https://raw.github.com/idleberg/nsL-Assembler-Sublime-Text/master/screenshot.png)

## Installation

### Package Control

1. Make sure you already have [Package Control](http://wbond.net/sublime_packages/package_control/) installed
2. Choose *Install Package* from the Command Palette (`Ctrl+Shift+P` on Windows/Linux, `⇧⌘P` on OS X)
3. Select *nsL Assembler* and press `Enter`

With [auto_upgrade](http://wbond.net/sublime_packages/package_control/settings/) enabled, Package Control will keep all installed packages up-to-date!

### GitHub

1. Change to your Sublime Text `Packages/User` directory
2. Clone repository `git clone https://github.com/idleberg/nsL-Assembler-Sublime-Text.git`

### Download Manually

* Download the files using the GitHub [.zip](https://github.com/idleberg/nsL-Assembler-Sublime-Text/archive/master.zip) download option
* Unzip the files to your Sublime Text `Packages/User` directory

## Usage

### Completions

You can complete all nsL (and NSIS) commands using the `Tab` key. Hit `Tab` again to jump between fields.

### Building

You can build your script using the default shortcut or from the Tools menu. Output scripts will be placed in the same folder as your input. Note that from Windows Vista on you need administrative rights to compile scripts in %PROGRAMFILES%, which is the default location for nsL example scripts!

## License

The MIT License (MIT)

Copyright (c) 2014 Jan T. Sott

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

## Donate

You are welcome support this project using [Flattr](https://flattr.com/submit/auto?user_id=idleberg&url=https://github.com/idleberg/nsL-Assembler-Sublime-Text) or Bitcoin `17CXJuPsmhuTzFV2k4RKYwpEHVjskJktRd`
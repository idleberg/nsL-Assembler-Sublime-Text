# nsL Assembler for SublimeText

[![The MIT License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](http://opensource.org/licenses/MIT)
[![GitHub release](https://img.shields.io/github/release/idleberg/sublime-nsl-assembler.svg?style=flat-square)](https://github.com/idleberg/sublime-nsl-assembler/releases)
[![Travis](https://img.shields.io/travis/idleberg/sublime-nsl-assembler.svg?style=flat-square)](https://travis-ci.org/idleberg/sublime-nsl-assembler)
[![Gitter](https://img.shields.io/badge/chat-Gitter-ff69b4.svg?style=flat-square)](https://gitter.im/NSIS-Dev/SublimeText)

[nsL Assembler](http://sourceforge.net/projects/nslassembler/) syntax definitions, command completions and build system for [Sublime Text](http://www.sublimetext.com/).

nsL is a new C-like programming language for writing [NSIS](http://nsis.sourceforge.net) installation wizards. The nsL assembler takes nsL code and translates it into original NSIS script which can then be compiled.

![Screenshot](https://raw.github.com/idleberg/sublime-nsl-assembler/master/screenshot.png)

## Installation

### Package Control

1. Make sure you already have [Package Control](https://packagecontrol.io/) installed
2. Choose “*Install Package*” from the Command Palette (<kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>)
3. Type “*nsL Assembler*” and press <kbd>Enter</kbd>

With [auto_upgrade](http://wbond.net/sublime_packages/package_control/settings/) enabled, Package Control will keep all installed packages up-to-date!

### GitHub

1. Change to your Sublime Text `Packages` directory
2. Clone repository `git clone https://github.com/idleberg/sublime-nsl-assembler.git 'nsL Assembler'`

### Manual installation

1. Download the latest [stable release](https://github.com/idleberg/sublime-nsl-assembler/releases)
2. Unzip the archive to your Sublime Text `Packages` directory

## Usage

### Completions

You can complete all nsL (and NSIS) commands using the `Tab` key. Hit `Tab` again to jump between fields.

### Scaffolding

Scaffolding snippets start with the prefix scaffold followed by the type of script you'd like to build:

* Basic Script
* MUI2 Script

Example:

With Sublime Text's fuzzy search in mind, you could for instance type `scaffBasic` to trigger the `scaffold:Basic Script`snippet and create the following script:

```nsis
// Scaffolding by https://github.com/idleberg/sublime-nsl-assembler

// Settings ---------------------------------
Name("installer_name");
OutFile("installer_name.exe");
RequestExecutionLevel(user);
InstallDir("$PROGRAMFILES\installer_name");

// Includes ---------------------------------


// Pages ------------------------------------
page Components();
page Directory();
page InstFiles();

// Sections ---------------------------------
section section_index("section_name") {

	// your code here

}

; Functions --------------------------------
```

Use Tab to jump to the next relevant bit of code you might want to change, Shift-Tab to jump back.

### Building

You can build your script using the default shortcut or from the Tools menu. Output scripts will be placed in the same folder as your input. Note that as of Windows Vista you need administrative rights to compile scripts in `%PROGRAMFILES%`, which is the default location for nsL example scripts!

Should the build system be unable to locate the compiler, you should probably re-install NSIS to make sure required registry keys are created. Alternatively, you can specify the install location in the [environment variable](http://superuser.com/a/284351/195953) `%NSIS_HOME%`. In case of a *Permission denied* error, change the permissions of the Bash script: `chmod +x build.sh`.

## License

This work is licensed under the [The MIT License](LICENSE).

## Donate

You are welcome support this project using [Flattr](https://flattr.com/submit/auto?user_id=idleberg&url=https://github.com/idleberg/sublime-nsl-assembler) or Bitcoin `17CXJuPsmhuTzFV2k4RKYwpEHVjskJktRd`
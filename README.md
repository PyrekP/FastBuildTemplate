# FastBuildTemplate
Example on how to use fastbuild for building projects with various compilers, sdk's, and external tools.

Usage:
 1. Download and install selected compilers and [fastbuild](http://fastbuild.org).
 2. Copy necessary compiler files to seleted folders. See files_needed_in_external_folder.txt file for list of files. This step will be replaced by scripts in the future.
 3. Set PATH to include fastbuild folder in external tools.
 4. Enable or disable specific builds/compilers in fbuild.bff file if You didn't prepare them or don't want them:

![builds_compilers](./images/disable_compilers.png)

 5. Open shell prompt and type fbuild while being inside source dir.

Examples were tested on the following compilers:

Platform | Arch | Compiler                                            | Notes
---------|------|-----------------------------------------------------|-------
Windows  | x64  | Clang 5.0.0 Pre-release                             | downloaded from [llvm builds](https://llvm.org/builds/) - to be exact it was [LLVM-5.0.0-r306282-win64.exe](http://prereleases.llvm.org/win-snapshots/LLVM-5.0.0-r306282-win64.exe) version,
Windows  | x64  | MSVC12.4 (Visual Studio 2013, platform toolset 120) | downloaded from [here](http://go.microsoft.com/fwlink/?linkid=530250)
Windows  | x64  | MSVC14.2 (Visual Studio 2015, platform toolset 140) | downloaded from [here](https://www.visualstudio.com/en/vs/older-downloads/)
Windows  | x64  | MSVC15.2 (Visual Studio 2017, platform toolset 141) | downloaded from [here](https://www.visualstudio.com/en/thank-you-downloading-visual-studio/?sku=Community&rel=15#)
Windows  | x64  | MASM                                                | Included in MSVC15.2.
Linux    | x64  | Clang 4.0.0 (on a musl libc based custom Linux)     | Distro provided or Your own build
Linux    | x64  | GCC 6.4.0 (on a musl libc based custom Linux)       | Distro provided or Your own build
Linux    | x64  | NASM 2.13.01                                        | Distro provided or Your own build

With following SDK's:
- Windows SDK 10 (10.0.15063.0) - used with MSVC 14.2 and 15.2,
- Windows SDK 8.1 - used with MSVC12.4.

As a side note - all tests were done on community editions of Visual Studio, so that it can be used by everyone.

## Screens

- Windows build:

![win_build](./images/win_build.png)

- Windows solution generation:

![win_solution](./images/win_solution.png)

- Windows build summary:

![win_summary](./images/win_summary.png)

- Linux build with summary (removed path/username/hostname)

![linux_build_with_summary](./images/linux_build_with_summary.png)

## Future

- on windows 'prepare_compilers.bat' script to copy only required compiler/include/libraries files from default installations),
- on linux 'prepare_compilers.sh' script to setup chroot's/docker's for different compiler/libc combos,
- show how You can use fastbuild for other types of files (to compile hlsl/glsl or texture conversions from tiff to ktx/dds/proprietary, etc),

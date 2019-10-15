# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /wasm/libpng

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wasm/libpng

# Utility rule file for genfiles.

# Include the progress variables for this target.
include CMakeFiles/genfiles.dir/progress.make

CMakeFiles/genfiles: libpng.sym
CMakeFiles/genfiles: libpng.vers
CMakeFiles/genfiles: pnglibconf.c
CMakeFiles/genfiles: pnglibconf.h
CMakeFiles/genfiles: pnglibconf.out
CMakeFiles/genfiles: pngprefix.h
CMakeFiles/genfiles: scripts/intprefix.out
CMakeFiles/genfiles: scripts/pnglibconf.c
CMakeFiles/genfiles: scripts/prefix.out
CMakeFiles/genfiles: scripts/sym.out
CMakeFiles/genfiles: scripts/symbols.chk
CMakeFiles/genfiles: scripts/symbols.out
CMakeFiles/genfiles: scripts/vers.out


libpng.sym: scripts/sym.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating libpng.sym"
	/opt/cmake/bin/cmake -E remove /wasm/libpng/libpng.sym
	/opt/cmake/bin/cmake -E copy /wasm/libpng/scripts/sym.out /wasm/libpng/libpng.sym

libpng.vers: scripts/vers.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating libpng.vers"
	/opt/cmake/bin/cmake -E remove /wasm/libpng/libpng.vers
	/opt/cmake/bin/cmake -E copy /wasm/libpng/scripts/vers.out /wasm/libpng/libpng.vers

pnglibconf.c: scripts/pnglibconf.dfa
pnglibconf.c: scripts/options.awk
pnglibconf.c: pngconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating pnglibconf.c"
	/opt/cmake/bin/cmake -DOUTPUT=pnglibconf.c -P /wasm/libpng/scripts/gensrc.cmake

pnglibconf.h: pnglibconf.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating pnglibconf.h"
	/opt/cmake/bin/cmake -DOUTPUT=pnglibconf.h -P /wasm/libpng/scripts/gensrc.cmake

pnglibconf.out: pnglibconf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating pnglibconf.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/pnglibconf.c -DOUTPUT=/wasm/libpng/pnglibconf.out -P /wasm/libpng/scripts/genout.cmake

pngprefix.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating pngprefix.h"
	/opt/cmake/bin/cmake -DOUTPUT=pngprefix.h -P /wasm/libpng/scripts/gensrc.cmake

scripts/intprefix.out: scripts/intprefix.c
scripts/intprefix.out: pnglibconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating scripts/intprefix.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/intprefix.c -DOUTPUT=/wasm/libpng/scripts/intprefix.out -P /wasm/libpng/scripts/genout.cmake

scripts/pnglibconf.c: scripts/pnglibconf.dfa
scripts/pnglibconf.c: scripts/options.awk
scripts/pnglibconf.c: pngconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating scripts/pnglibconf.c"
	/opt/cmake/bin/cmake -DOUTPUT=scripts/pnglibconf.c -P /wasm/libpng/scripts/gensrc.cmake

scripts/prefix.out: scripts/prefix.c
scripts/prefix.out: png.h
scripts/prefix.out: pngconf.h
scripts/prefix.out: pnglibconf.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating scripts/prefix.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/prefix.c -DOUTPUT=/wasm/libpng/scripts/prefix.out -P /wasm/libpng/scripts/genout.cmake

scripts/sym.out: scripts/sym.c
scripts/sym.out: pnglibconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Generating scripts/sym.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/sym.c -DOUTPUT=/wasm/libpng/scripts/sym.out -P /wasm/libpng/scripts/genout.cmake

scripts/symbols.chk: scripts/symbols.out
scripts/symbols.chk: scripts/checksym.awk
scripts/symbols.chk: scripts/symbols.def
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Generating scripts/symbols.chk"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/symbols.out -DOUTPUT=/wasm/libpng/scripts/symbols.chk -P /wasm/libpng/scripts/genchk.cmake

scripts/symbols.out: scripts/symbols.c
scripts/symbols.out: png.h
scripts/symbols.out: pngconf.h
scripts/symbols.out: scripts/pnglibconf.h.prebuilt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Generating scripts/symbols.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/symbols.c -DOUTPUT=/wasm/libpng/scripts/symbols.out -P /wasm/libpng/scripts/genout.cmake

scripts/vers.out: scripts/vers.c
scripts/vers.out: png.h
scripts/vers.out: pngconf.h
scripts/vers.out: pnglibconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wasm/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Generating scripts/vers.out"
	/opt/cmake/bin/cmake -DINPUT=/wasm/libpng/scripts/vers.c -DOUTPUT=/wasm/libpng/scripts/vers.out -P /wasm/libpng/scripts/genout.cmake

genfiles: CMakeFiles/genfiles
genfiles: libpng.sym
genfiles: libpng.vers
genfiles: pnglibconf.c
genfiles: pnglibconf.h
genfiles: pnglibconf.out
genfiles: pngprefix.h
genfiles: scripts/intprefix.out
genfiles: scripts/pnglibconf.c
genfiles: scripts/prefix.out
genfiles: scripts/sym.out
genfiles: scripts/symbols.chk
genfiles: scripts/symbols.out
genfiles: scripts/vers.out
genfiles: CMakeFiles/genfiles.dir/build.make

.PHONY : genfiles

# Rule to build all files generated by this target.
CMakeFiles/genfiles.dir/build: genfiles

.PHONY : CMakeFiles/genfiles.dir/build

CMakeFiles/genfiles.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/genfiles.dir/cmake_clean.cmake
.PHONY : CMakeFiles/genfiles.dir/clean

CMakeFiles/genfiles.dir/depend:
	cd /wasm/libpng && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wasm/libpng /wasm/libpng /wasm/libpng /wasm/libpng /wasm/libpng/CMakeFiles/genfiles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/genfiles.dir/depend


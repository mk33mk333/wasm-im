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

# Utility rule file for genprebuilt.

# Include the progress variables for this target.
include CMakeFiles/genprebuilt.dir/progress.make

CMakeFiles/genprebuilt:
	/opt/cmake/bin/cmake -DOUTPUT=scripts/pnglibconf.h.prebuilt -P /wasm/libpng/scripts/gensrc.cmake

genprebuilt: CMakeFiles/genprebuilt
genprebuilt: CMakeFiles/genprebuilt.dir/build.make

.PHONY : genprebuilt

# Rule to build all files generated by this target.
CMakeFiles/genprebuilt.dir/build: genprebuilt

.PHONY : CMakeFiles/genprebuilt.dir/build

CMakeFiles/genprebuilt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/genprebuilt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/genprebuilt.dir/clean

CMakeFiles/genprebuilt.dir/depend:
	cd /wasm/libpng && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wasm/libpng /wasm/libpng /wasm/libpng /wasm/libpng /wasm/libpng/CMakeFiles/genprebuilt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/genprebuilt.dir/depend


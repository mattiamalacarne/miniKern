# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/mattia/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/mattia/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mattia/Documenti/Workspace/C/miniKern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/miniOS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/miniOS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/miniOS.dir/flags.make

CMakeFiles/miniOS.dir/main.c.o: CMakeFiles/miniOS.dir/flags.make
CMakeFiles/miniOS.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/miniOS.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniOS.dir/main.c.o   -c /home/mattia/Documenti/Workspace/C/miniKern/main.c

CMakeFiles/miniOS.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniOS.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mattia/Documenti/Workspace/C/miniKern/main.c > CMakeFiles/miniOS.dir/main.c.i

CMakeFiles/miniOS.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniOS.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mattia/Documenti/Workspace/C/miniKern/main.c -o CMakeFiles/miniOS.dir/main.c.s

CMakeFiles/miniOS.dir/main.c.o.requires:

.PHONY : CMakeFiles/miniOS.dir/main.c.o.requires

CMakeFiles/miniOS.dir/main.c.o.provides: CMakeFiles/miniOS.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/miniOS.dir/build.make CMakeFiles/miniOS.dir/main.c.o.provides.build
.PHONY : CMakeFiles/miniOS.dir/main.c.o.provides

CMakeFiles/miniOS.dir/main.c.o.provides.build: CMakeFiles/miniOS.dir/main.c.o


# Object files for target miniOS
miniOS_OBJECTS = \
"CMakeFiles/miniOS.dir/main.c.o"

# External object files for target miniOS
miniOS_EXTERNAL_OBJECTS =

miniOS: CMakeFiles/miniOS.dir/main.c.o
miniOS: CMakeFiles/miniOS.dir/build.make
miniOS: CMakeFiles/miniOS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable miniOS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/miniOS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/miniOS.dir/build: miniOS

.PHONY : CMakeFiles/miniOS.dir/build

CMakeFiles/miniOS.dir/requires: CMakeFiles/miniOS.dir/main.c.o.requires

.PHONY : CMakeFiles/miniOS.dir/requires

CMakeFiles/miniOS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/miniOS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/miniOS.dir/clean

CMakeFiles/miniOS.dir/depend:
	cd /home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mattia/Documenti/Workspace/C/miniKern /home/mattia/Documenti/Workspace/C/miniKern /home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug /home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug /home/mattia/Documenti/Workspace/C/miniKern/cmake-build-debug/CMakeFiles/miniOS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/miniOS.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/beeps/cppproj/crypto/third-party/jsoncpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug

# Include any dependencies generated for this target.
include src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/depend.make

# Include the progress variables for this target.
include src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/progress.make

# Include the compile flags for this target's objects.
include src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/flags.make

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/flags.make
src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o: ../../src/jsontestrunner/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o"
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/jsontestrunner_exe.dir/main.cpp.o -c /home/beeps/cppproj/crypto/third-party/jsoncpp/src/jsontestrunner/main.cpp

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jsontestrunner_exe.dir/main.cpp.i"
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/beeps/cppproj/crypto/third-party/jsoncpp/src/jsontestrunner/main.cpp > CMakeFiles/jsontestrunner_exe.dir/main.cpp.i

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jsontestrunner_exe.dir/main.cpp.s"
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/beeps/cppproj/crypto/third-party/jsoncpp/src/jsontestrunner/main.cpp -o CMakeFiles/jsontestrunner_exe.dir/main.cpp.s

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.requires:
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.requires

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.provides: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.requires
	$(MAKE) -f src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/build.make src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.provides.build
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.provides

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.provides.build: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o

# Object files for target jsontestrunner_exe
jsontestrunner_exe_OBJECTS = \
"CMakeFiles/jsontestrunner_exe.dir/main.cpp.o"

# External object files for target jsontestrunner_exe
jsontestrunner_exe_EXTERNAL_OBJECTS =

src/jsontestrunner/jsontestrunner_exe: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o
src/jsontestrunner/jsontestrunner_exe: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/build.make
src/jsontestrunner/jsontestrunner_exe: src/lib_json/libjsoncpp.a
src/jsontestrunner/jsontestrunner_exe: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable jsontestrunner_exe"
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jsontestrunner_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/build: src/jsontestrunner/jsontestrunner_exe
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/build

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/requires: src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/main.cpp.o.requires
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/requires

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/clean:
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner && $(CMAKE_COMMAND) -P CMakeFiles/jsontestrunner_exe.dir/cmake_clean.cmake
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/clean

src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/depend:
	cd /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/beeps/cppproj/crypto/third-party/jsoncpp /home/beeps/cppproj/crypto/third-party/jsoncpp/src/jsontestrunner /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner /home/beeps/cppproj/crypto/third-party/jsoncpp/build/debug/src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/jsontestrunner/CMakeFiles/jsontestrunner_exe.dir/depend


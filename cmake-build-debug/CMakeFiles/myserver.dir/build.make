# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/rostom/Documents/clion-2018.1.6/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/rostom/Documents/clion-2018.1.6/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rostom/CLionProjects/myserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rostom/CLionProjects/myserver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/myserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myserver.dir/flags.make

CMakeFiles/myserver.dir/src/main.cpp.o: CMakeFiles/myserver.dir/flags.make
CMakeFiles/myserver.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rostom/CLionProjects/myserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/myserver.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myserver.dir/src/main.cpp.o -c /home/rostom/CLionProjects/myserver/src/main.cpp

CMakeFiles/myserver.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myserver.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rostom/CLionProjects/myserver/src/main.cpp > CMakeFiles/myserver.dir/src/main.cpp.i

CMakeFiles/myserver.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myserver.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rostom/CLionProjects/myserver/src/main.cpp -o CMakeFiles/myserver.dir/src/main.cpp.s

CMakeFiles/myserver.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/myserver.dir/src/main.cpp.o.requires

CMakeFiles/myserver.dir/src/main.cpp.o.provides: CMakeFiles/myserver.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/myserver.dir/build.make CMakeFiles/myserver.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/myserver.dir/src/main.cpp.o.provides

CMakeFiles/myserver.dir/src/main.cpp.o.provides.build: CMakeFiles/myserver.dir/src/main.cpp.o


CMakeFiles/myserver.dir/src/profile.cpp.o: CMakeFiles/myserver.dir/flags.make
CMakeFiles/myserver.dir/src/profile.cpp.o: ../src/profile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rostom/CLionProjects/myserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/myserver.dir/src/profile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myserver.dir/src/profile.cpp.o -c /home/rostom/CLionProjects/myserver/src/profile.cpp

CMakeFiles/myserver.dir/src/profile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myserver.dir/src/profile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rostom/CLionProjects/myserver/src/profile.cpp > CMakeFiles/myserver.dir/src/profile.cpp.i

CMakeFiles/myserver.dir/src/profile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myserver.dir/src/profile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rostom/CLionProjects/myserver/src/profile.cpp -o CMakeFiles/myserver.dir/src/profile.cpp.s

CMakeFiles/myserver.dir/src/profile.cpp.o.requires:

.PHONY : CMakeFiles/myserver.dir/src/profile.cpp.o.requires

CMakeFiles/myserver.dir/src/profile.cpp.o.provides: CMakeFiles/myserver.dir/src/profile.cpp.o.requires
	$(MAKE) -f CMakeFiles/myserver.dir/build.make CMakeFiles/myserver.dir/src/profile.cpp.o.provides.build
.PHONY : CMakeFiles/myserver.dir/src/profile.cpp.o.provides

CMakeFiles/myserver.dir/src/profile.cpp.o.provides.build: CMakeFiles/myserver.dir/src/profile.cpp.o


# Object files for target myserver
myserver_OBJECTS = \
"CMakeFiles/myserver.dir/src/main.cpp.o" \
"CMakeFiles/myserver.dir/src/profile.cpp.o"

# External object files for target myserver
myserver_EXTERNAL_OBJECTS =

myserver: CMakeFiles/myserver.dir/src/main.cpp.o
myserver: CMakeFiles/myserver.dir/src/profile.cpp.o
myserver: CMakeFiles/myserver.dir/build.make
myserver: /usr/local/lib/libpqxx.a
myserver: /usr/lib/x86_64-linux-gnu/libpq.so
myserver: CMakeFiles/myserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rostom/CLionProjects/myserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable myserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myserver.dir/build: myserver

.PHONY : CMakeFiles/myserver.dir/build

CMakeFiles/myserver.dir/requires: CMakeFiles/myserver.dir/src/main.cpp.o.requires
CMakeFiles/myserver.dir/requires: CMakeFiles/myserver.dir/src/profile.cpp.o.requires

.PHONY : CMakeFiles/myserver.dir/requires

CMakeFiles/myserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myserver.dir/clean

CMakeFiles/myserver.dir/depend:
	cd /home/rostom/CLionProjects/myserver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rostom/CLionProjects/myserver /home/rostom/CLionProjects/myserver /home/rostom/CLionProjects/myserver/cmake-build-debug /home/rostom/CLionProjects/myserver/cmake-build-debug /home/rostom/CLionProjects/myserver/cmake-build-debug/CMakeFiles/myserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myserver.dir/depend

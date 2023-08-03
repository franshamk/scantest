CXX := g++
CXXFLAGS := -std=c++11 -Wall "-Ideps\boost_1_82_0"  # Replace "/path/to/boost" with your Boost include directory

# Change the following line to your preferred output executable name
OUTPUT := hello_world.exe

# List of source files
SOURCES := main.cpp

# Object files list (automatically generated from source files)
OBJECTS := $(SOURCES:.cpp=.o)

# Compile and link the application
$(OUTPUT): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(OUTPUT)

# Compile source files into object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up object files and the output executable
clean:
	rm -f $(OBJECTS) $(OUTPUT)

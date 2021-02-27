# Compiler
CXX ?= g++
CXXFLAGS = -g -Weffc++ -Wno-error=effc++ -pedantic -pedantic-errors -Wconversion -Wfloat-equal -Wformat-nonliteral -Wformat-security -Wformat-y2k -Wimport -Winvalid-pch -Winit-self -Wlong-long -Winline -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Wno-unused -Wunreachable-code -Wmissing-field-initializers -Wmissing-format-attribute -Wmissing-noreturn -Wredundant-decls -Wshadow -Wstack-protector -Wunused-parameter -Wwrite-strings -Wvariadic-macros

# Linker
# If <math.h>, add here -lm
# If libs, add here -L. or -L<path> like -L./lib/
LINKER ?= $(CXX)
LFLAGS ?= -Wall -Wextra -std=c99

SRCDIR ?= src
OBJDIR ?= obj
BINDIR ?= bin

# Get all files based on project structure
SOURCES := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

# Executable name
OUTPUT=executable

# Link
$(BINDIR)/$(OUTPUT): $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(LINKER) $^ $(LFLAGS) -o $@
	@echo "Linking complete!"

# Compile
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(OBJDIR)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<
	@echo "Compiled "$<" successfully!"

.PHONY: clean
clean:
	@rm -rf $(OBJDIR)
	@rm -rf $(BINDIR)
	@echo "Cleanup complete!"

# Project Name
TARGET = TouchMIDI

# Sources
CPP_SOURCES = TouchMIDI.cpp $(wildcard touch/*.cpp)

# Library Locations
LIBDAISY_DIR = lib/libDaisy
DAISYSP_DIR = lib/DaisySP

# Core location, and generic Makefile.
SYSTEM_FILES_DIR = $(LIBDAISY_DIR)/core
include $(SYSTEM_FILES_DIR)/Makefile

CPP_STANDARD = -std=gnu++17

libs:
	$(MAKE) -C $(LIBDAISY_DIR)
	$(MAKE) -C $(DAISYSP_DIR)

.PHONY: libs

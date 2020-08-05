TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = reimagine

reimagine_FILES = main.c helper.c opensn0w-X/src/image3.c opensn0w-X/src/util.c opensn0w-X/src/ibootsup.c opensn0w-X/src/patch.c opensn0w-X/src/kcache.c \
opensn0w-X/src/macho_loader.c
reimagine_CFLAGS = -m32 -O2 -c -pipe -Wall -Wno-unused-function -std=c99 -Iopensn0w-X/include -Wno-error
reimagine_LDFLAGS =-lcrypto -m32
reimagine_CODESIGN_FLAGS = -Sentitlements.plist
reimagine_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk

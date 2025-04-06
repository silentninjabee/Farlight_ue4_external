ARCHS = arm64 arm64e
TARGET = iphone:clang:15.5:15.0
THEOS_PACKAGE_DIR_NAME = debs
# THEOS_DEVICE_IP = localhost

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Farlight

Farlight_FILES = main.cpp \
                 utils/driver.cpp \
                 imgui/imgui_widgets.cpp \
                 imgui/imgui_tables.cpp \
                 imgui/imgui.cpp \
                 imgui/imgui_draw.cpp \
                 imgui/imgui_impl_dx9.cpp \
                 imgui/imgui_impl_win32.cpp \
                 utils/mouse_controller.cpp
                 
Farlight_CFLAGS = -std=c++20 -Wall -fno-rtti
Farlight_LDFLAGS = -static -static-libgcc -static-libstdc++

include $(THEOS_MAKE_PATH)/tweak.mk

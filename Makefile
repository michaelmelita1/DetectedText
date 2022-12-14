FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:14.5
INSTALL_TARGET_PROCESSES = Camera

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = detectedtext
detectedtext_FILES = Tweak.x
detectedtext_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk

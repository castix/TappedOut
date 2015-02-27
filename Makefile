include theos/makefiles/common.mk

TWEAK_NAME = TappedOut
TappedOut_FILES = Hooks.xm

export ARCHS = arm64 armv7 armv7s

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += tappedoutsettings
include $(THEOS_MAKE_PATH)/aggregate.mk

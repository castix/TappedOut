include theos/makefiles/common.mk

BUNDLE_NAME = TappedOutSettings
TappedOutSettings_FILES = TappedOutSettings.mm
TappedOutSettings_INSTALL_PATH = /Library/PreferenceBundles
TappedOutSettings_FRAMEWORKS = UIKit
TappedOutSettings_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TappedOutSettings.plist$(ECHO_END)


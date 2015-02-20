#import <Preferences/Preferences.h>

@interface TappedOutSettingsListController: PSListController {
}
@end

@implementation TappedOutSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"TappedOutSettings" target:self] retain];
	}
	return _specifiers;
}
- (void)contact { 
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:development.castix@gmail.com"]]; 
}
@end

@interface MITLicenseListController: PSListController {
}
@end

@implementation MITLicenseListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"MITLicense" target:self] retain];
	}
	return _specifiers;
}
@end
// vim:ft=objc


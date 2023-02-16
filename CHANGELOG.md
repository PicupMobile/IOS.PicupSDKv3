# Changelog

## [2.5.2]

### Added
- Add setting to use all numbers, specific number, or campaign numbers (default).

### Fixed
- Move prolonged actions off the main thread.

## [2.5.1]

### Changed
- Allow to get existing signature verification key.

## [2.5.0]

### Added
- Add image signature verification.
- Contact expiration improvements.
- Allow multiple organization to co-exist on the same user device.

### Fixed
- iOS 16 improvements.
- Reduce network requests.

## [2.4.5]

### Changed
- More flexible timing specifications for asking permissions.

## [2.4.4]

### Fixed
- avoid rare opt-in popup on activating app.

## [2.4.3]

### Changed
- Full Objective-C interface

## [2.4.2]

### Added
- Add option to describe contacts.
- Respond to status requests.

## [2.4.1]

### Added
- custom opt-in view.

## [2.4.0]

### Added
- Enable branded opt-in screen before asking user to grant Contacts access.
- show "test version" banner when `testingMode` is 1.
- add `refresh()` function to call from background fetch. 

## [2.3.3]

### Added
- Allow testing silent push notifications in development environment.

## [2.3.2]

### Changed
- Change register() signature to make it clearer and easier to use.

## [2.3.1]

### Fixed
- fix occasional server-side decryption error.

## [2.3.0]

### Added
- support silent push notifications by allowing the app to call `didReceiveMessage()`.
- add contact groups.
- add test server configuration.

## [2.2.3]

### Added
- new card designs and configuration options.
- allow to disable service from either client or server, which will automatically clear all data.
- add `permissionMode` that defaults to `external`. 
- add `isDebugMode` and only print to the console when it's `true`, with "PicUP" prefix.

### Fixed
- fix duplicates.
- prevent possible crash by ensuring host app has contacts usage description.


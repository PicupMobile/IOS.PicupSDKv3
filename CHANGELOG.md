# Changelog

## [2.3.3]

### Added
- Allow testing silent push notifications in development environment.

## [2.3.2]

### Changed
- Change register() signature to make it clearer and easier to use.

## [2.3.1]

### Fixed
- fix decryption error.

## [2.3.0]

### Added
- support silent push notifications by allowing the app to call `didReceiveMessage()`.
- add contact groups.
- add test server configuration.

## [2.2.3]

### Added
- new card designs and configuration options.

### Added
- allow to disable service from either client or server, which will automatically clear all data.
- add `permissionMode` that defaults to `external`. 
- add `isDebugMode` and only print to the console when it's `true`, with "PicUP" prefix.

### Fixed
- fix duplicates.
- prevent possible crash by ensuring host app has contacts usage description.


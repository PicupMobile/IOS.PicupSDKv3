# PicUP

Want your app to enable the next generation of phone calls? Look no further! 

By utilizing PicUP patented technology, PicUP client SDK enables rich digital communication over phone calls. PicUP Client iOS SDK is a Swift library for iOS that is part of PicUP Optimization & Personalization Platform for Phone Calls ©. 

## Features
* Design beautiful visual calling screens.
* Let your customers know who's calling them and why, using your brands' images and logo.
* Give them a good reason to pick up. They definitely will.

<p align="center">
<img src="https://picup.io/wp-content/uploads/2020/06/pickap_a1-–-1-2.png" height="200">
</p>


## Requirements

Your app needs to have Contacts permission from the user, as described [here](https://developer.apple.com/documentation/contacts/requesting_authorization_to_access_contacts):

1. Add the required `NSContactsUsageDescription` key to your app’s `Info.plist` file, with a string that describes what your app does with the user’s contacts.
2. _(Optional)_ Call `CNContactStore().requestAccess(for: CNEntityType.contacts) {...}` to request contacts access. (If you don't, the SDK will request access when you initialize it.)

## Installation

### CocoaPods

Add the following line to your Podfile:

```ruby
pod 'PicUPSDKv3'
```

Then run:

```
pod install
```

### Swift Package Manager

Navigate to the Swift packages section in your project, add a new package, enter

`https://github.com/PicupMobile/IOS.PicupSDKv3`

and click "Next".

### Manual

Download the latest version from [here](https://github.com/PicupMobile/IOS.PicupSDKv3/releases) and extract it. Copy **SDKFramework/PicUPSDKv3.framework** to your project by drag and dropping it into Xcode project navigator. When asked, choose to **Copy items if needed**:

<p align="center">
<img src="Screenshots/manual-install.png" height="280">
</p>

## Initialization

Initialize the SDK by calling `register()`:

```swift
import PicUPSDKv3

// ...

PicUpSDK.shared.register(
    clientName,
    clientPhoneNumber: userPhoneNumber, // hashed - see below
    organizationCode: organizationCode, // from management console
    securityCode: securityCode, // from management console
    uuid: persistentUniqueString, // e.g. push token
    completion: { result in
        // ...
    }
)
```

Arguments:

* **`clientName`** String with name of the client organization.

* **`clientPhoneNumber `** Hashed representation of the actual phone number. Used as an opaque identifier in the management console. To create the hash, you can use the code below.

  For iOS 13 or later:

  ```swift
  import CryptoKit
  
  func hashedRepresentation(phoneNumber: String) -> String? {
      guard let phoneNumberData = phoneNumber.data(using: .utf8) else { return nil }
      let digest = SHA256.hash(data: phoneNumberData)
      return Data(digest).base64EncodedString()
  }
  ```

  For earlier versions of iOS you can use [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift):

  ```swift
  import CryptoSwift

  func hashedRepresentation(phoneNumber: String) -> String? {
      guard let phoneNumberData = phoneNumber.data(using: .utf8) else { return nil }
      return phoneNumberData.sha256().base64EncodedString()
  }
  ```

* **`organizationCode`** From the web management console.

* **`securityCode`** From the web management console.

* **`uuid`** Persistent unique string, like firebase token or `UIDevice.current.identifierForVendor?.uuidString`.

* **`completion`** Called when the registration is complete, with a `PicUpResult` parameter that contains optional error data.

## Optional Usage

### Should the SDK ask the user for Contacts permissions?

By default, the SDK does nothing if the app didn't acquire the user's permission to access Contacts.  
You can let the SDK handle requesting permissions from the user when necessary, by changing its `permissionMode`:

```swift
PicUpSDK.shared.permissionMode = .internal
```

### Disable the SDK or enable it back:

```swift
PicUpSDK.shared.disableService()
PicUpSDK.shared.enableService()
```

### Clear all data and restore the user's contacts to what was before:

```swift
PicUpSDK.shared.clearData()
```

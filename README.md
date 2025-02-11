# Capacitor 3 Face ID Plugin

[![npm version](https://badge.fury.io/js/capacitor-face-id.svg)](https://badge.fury.io/js/capacitor-face-id)
![Build](https://github.com/danielsogl/capacitor-face-id/workflows/Build/badge.svg)

Allow users to authenticate with Face ID or Touch ID on iOS devices

![Logo](https://www.intego.com/mac-security-blog/wp-content/uploads/2017/10/Touch-ID-vs-Face-ID.png)

## Installation

```sh
npm install github.com/dghathway/capacitor-face-id
```

## iOS Notes

iOS requires the following usage description be added and filled out for your app in `Info.plist`:

 ```
 <key>NSFaceIDUsageDescription</key>
<string>$(PRODUCT_NAME) Authentication with TouchId or FaceID</string>
```

## Example

```ts
import {FaceId} from 'capacitor-face-id';

...
// check if device supports Face ID or Touch ID
FaceId.isAvailable().then(checkResult => {
  if(checkResult.value) {
    FaceId.auth().then(() => {
      console.log('authenticated');
    }).catch((error: PluginResultError) => {
      // handle rejection errors
      console.error(error.message);
    });
  } else {
    // use custom fallback authentication here
  }
});

```

## API

| Method                            | Default                                             | Type                         | Description                                                         |
| --------------------------------- | --------------------------------------------------- | ---------------------------- | ------------------------------------------------------------------- |
| isAvailable()                     |                                                     | `Promise<{ value: string }>` | Checks if Face ID or Touch ID is available, and returns type if so. |
| auth(options?: {reason?: string}) | options: {reason: "Access requires authentication"} | `Promise<void>`              | Displays the Face ID or Touch ID screen                             |

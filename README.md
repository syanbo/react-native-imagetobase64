
# react-native-image-to-base64

## Getting started

`$ npm install https://github.com/syanbo/react-native-imagetobase64.git --save`

### Mostly automatic installation

`$ react-native link react-native-image-to-base64`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-image-to-base64` and add `RNImageToBase64.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNImageToBase64.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNImageToBase64Package;` to the imports at the top of the file
  - Add `new RNImageToBase64Package()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-image-to-base64'
  	project(':react-native-image-to-base64').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-image-to-base64/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-image-to-base64')
  	```


## Usage
```javascript
import RNImageToBase64 from 'react-native-image-to-base64';

// TODO: What to do with the module?
RNImageToBase64.getBase64(uri,(err, base64)=>{})
```
  

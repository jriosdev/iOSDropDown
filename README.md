# iOS DropDown

[![Version](https://img.shields.io/cocoapods/v/iOSDropDown.svg?style=flat)](https://cocoapods.org/pods/iOSDropDown)
[![Cocoapods](http://img.shields.io/badge/Cocoapods-available-green.svg?style=flat)](https://cocoapods.org/pods/iOSDropDown)
[![Swift 4.0](https://img.shields.io/badge/Swift-4-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-ios-blue.svg?style=flat)](https://cocoapods.org/pods/iOSDropDown)
[![Star](https://img.shields.io/amo/stars/dustman.svg?style=flat)]()

## Drop Down With Search for iOS
It's a Swift Library to support Drop Down Menu in iOS

Watch Video on : 
[![](https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/youtube.png)](https://www.youtube.com/watch?v=zfKE0Blu3Z0)


### Support Search and Return Correct index
[![](https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/1.gif)](images/1.gif)
### Customizing
[![](https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/2.gif)](images/2.gif)
### hideOptionWhenSelect = false




## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Features
 1. Simple UITextField Extension And simple to use  , We can Access all properties of UITextField
    [![](https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/4.gif)](images/4.gif)
 2. DropDown Search can enable or disable
 3. Change color of List background and selected color 
 4. Change Maximum Hieght of List and Height of each Row

## Installation
### CocoaPods

Use [CocoaPods](http://www.cocoapods.org).
iOSDropDown is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
1. Add `pod 'iOSDropDown'` to your *Podfile*.
2. Install the pod(s) by running `pod install`.
3. Add `iOSDropDown.framework` in Build Phases > Link Binary with Libraries
4. Add `import iOSDropDown` in the .swift files where you want to use it

### Carthage

Use [Carthage](https://github.com/Carthage/Carthage).

1. Create a file name `Cartfile`.
2. Add the line `github "jriosdev/iOSDropDown"`.
3. Run `carthage update`.
4. Drag the built `iOSDropDown.framework` into your Xcode project.

### Manual

Just clone and add the following Swift files to your project:
- iOSDropDown.swfit

## Basic usage ✨
### StoryBoard Method
  Simply add UITextField to Your ViewCOntroller And Connect @IBOutlet - DropDown Class
  
[![](https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/5.gif)](images/5.gif)

```swift

@IBOutlet weak var dropDown : DropDown!

// The list of array to display. Can be changed dynamically
dropDown.optionArray = ["Option 1", "Option 2", "Option 3"]
//Its Id Values and its optional
dropDown.optionIds = [1,23,54,22] 

// Image Array its optional
dropDown.ImageArray = [👩🏻‍🦳,🙊,🥞]
// The the Closure returns Selected Index and String 
dropDown.didSelect{(selectedText , index ,id) in
self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
}
```
###                  OR

### Code Method
```swift
let  dropDown = DropDown(frame: CGRect(x: 110, y: 140, width: 200, height: 30)) // set frame

// The list of array to display. Can be changed dynamically
dropDown.optionArray = ["Option 1", "Option 2", "Option 3"]
// Its Id Values and its optional
dropDown.optionIds = [1,23,54,22] 
// Image Array its optional
dropDown.ImageArray = [👩🏻‍🦳,🙊,🥞]

// The the Closure returns Selected Index and String 
dropDown.didSelect{(selectedText , index ,id) in
self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
    }
}
```
### Other Options
 Actions 
 
   ```swift
    dropDown.showList()  // To show the Drop Down Menu
    dropDown.hideList() // To hide the Drop Down Menu
   
````

Closures

 ```swift
  listWillAppear() {
   //You can Do anything when iOS DropDown willAppear 
  }
 
 listDidAppear() {
     //You can Do anything when iOS DropDown listDidAppear
 }
 
 listWillDisappear() {
   //You can Do anything when iOS DropDown listWillDisappear 
 }
 
  listDidDisappear() {
   //You can Do anything when iOS DropDown listDidDisappear
 }
 ```

## Customize iOSDropDown 🖌

You can customize these properties of the drop down:
- `isSearchEnabled ` : You can Enable or Disable on DropDown .Default value Is `true`
- `hideOptionsWhenSelect` : This  option to hide the list when click option one item. Default value is `true`
- `selectedRowColor` : Color of selected Row item in DropDown Default value is `.cyan`
- `rowBackgroundColor` : Color of  DropDown Default value is `.white`
- `listHeight`: The maximum Height of of List. Default value is `150 ` 
- `rowHeight`: The  Height of of List in the List. Default value is  ` 30`
- `selectedIndex`:For preSelection of any of item in list
- `Alingment and Fonts are same as TextField You Can change it`
- `arrowSize`: The Size of arrow . Default value is `15 ` 
- `arrowColor`: The Color of arrow . Default value is `.black ` 
- `checkMarkEnabled`: The check Mark Enabled for selection of Row. Default value is `true ` 

## Note :
    
    1.After Update the pod just do clean your buld folder 
          Product > Clean Build Folder . 
    
## Author
### ✨✨If you like my project please Give me a STAR on Github✨✨
### If this project help you to reduce develop time, can you offer a cup of coffee :) 

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/jishnurajt)

Jishnu Raj T, jriosdev@gmail.com
[![Contact](https://img.shields.io/badge/Contact-%40jishnurajt-blue.svg?style=flat)](https://twitter.com/jishnurajt)

## License

iOSDropDown is available under the MIT license. See the LICENSE file for more info.

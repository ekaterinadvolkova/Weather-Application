# Weather Application

This app shows temperature and short weather report in the current position of the user.

## Layout
App is made with `SwiftUI`. It has a vertical layout. In the layout there are two main parts: <br>
* icon for the current weather
* temperature as a text

[SF symbols](https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/) are used to reproduce weather icons. More of the icons can be found [here](https://developer.apple.com/sf-symbols/).<br>

## API
* Third party API [tomorrow.io](https://app.tomorrow.io/home) is used to get the weather information.
*The response from API is received in a nested json format. Therefore, some  structs need to be to parsed with Swift’s `Codable` protocol.
* API usage requres personal access key, which is received after signup.
* For this app [timelines API](https://docs.tomorrow.io/reference/get-timelines) is used. 
* `temperature` and `weatherCode` fields are received for the current hour in the response.

## Privacy
* User loaction upon initialization is requested. Later, every time the user location is updated we request the weather update.
* Used keys for `info.plist` file: [`requestWhenInUseAuthorization()`](https://developer.apple.com/documentation/corelocation/cllocationmanager/1620562-requestwheninuseauthorization) , [`requestAlwaysAuthorization()`](https://developer.apple.com/documentation/corelocation/cllocationmanager/1620551-requestalwaysauthorization)
* A SwiftUI project generated using Xcode 13.1 does not get separate info.plist file. Instead, keys are added in `Info tab`. 

## Result

<img src="https://github.com/ekaterinadvolkova/Weather-Application/blob/main/Screens/RefreshScreen.PNG" alt="drawing" style="width:200px;"/> &emsp; &emsp; <img src="https://github.com/ekaterinadvolkova/Weather-Application/blob/main/Screens/LocationRequest.PNG" alt="drawing" style="width:200px;"/>  &emsp; &emsp; <img src="https://github.com/ekaterinadvolkova/Weather-Application/blob/main/Screens/Result.PNG" alt="drawing" style="width:200px;"/>

## Important before Cloning
* API key is deleted from github for safety reasons. You need to create your own key so make the app work.
* Corrent `line23` `WeatherAPIClient. swift`

## References
The app is built with [this tutorial](https://betterprogramming.pub/simple-weather-app-with-swiftui-ac41200a9d4d).

## SwiftUI-Introduction-View

This is a simple IOS SwiftUI application that demonstrates how to integrate custom introduction screen with customizable features in your swiftUI projects.

## Table of Contents 

- [Demo UI](#demo)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
- [Contributing](#contributing)
- [Need Help / Support?](#need-help)
- [Collection of Components](#collection-of-Components)
- [License](#license)
- [Acknowledgements](#acknowledgements)
- [Keywords](#keywords)

# Demo UI 📱


<img src="./introductionview.gif" alt="Demo Preview">

# Features 🥳

App has main feature as:

* Page indicator visibility and style can be customized."
* Easily swipe page content left and right.
* Page UI elements are fully configurable.
* Easily integrated by using model data.
* Navigation buttons can be easily customized.
* Customize the font and colors of page elements.
* Fully customizable.
* No third-party dependencies.
* Supports the latest iOS 17.0.

# Usage 👩🏾‍🔬
To use Introduction screen features you need to drag and drop the `UtilHelper` folder in your project to integrate introduction view feature in your project, follow these steps:

Open your `ContentView` file to add the following code snippet like:

```swift

VStack{
    CustomIntroductionView(config: config())
}

```

Customise your own Introduction Screen by creating your own `config()` method and pass it as parameter into `CustomIntroductionView()`. Eg. `func config() -> CustomIntroConfig`

# Customization 

These are the customizable properties

```swift

func config() -> CustomIntroConfig {
    var config = CustomIntroConfig(listIntroData: listIntroData, isShowPageIndicator: true)
    config.pageIndicatorAlignment = .bottom
    config.pageIndicatorColor = .indigo
    config.titleFontSize = 24
    config.titleFontColor = .indigo
    config.quoteFontColor = .gray
    config.quoteFontWeight = .thin
    config.descriptionFontSize = 19
    config.descriptionFontColor = .black
    config.imageCornerRadius = 15
    config.isButtonPageIndicatorOverlay = true
    config.buttonAction = {print("started")}
    config.isShowButton = true
    return config
}

```

### Required and Common Props

| Props                       | Type           | Description                                                          | Required | Default |
| :-------------------------- | :------------- | :------------------------------------------------------------------- | :------- | :------ |
| listIntroData               | Array          | array of data for the Introduction details to be render              | required |
| isShowPageIndicator                | Bool            | to show pageIndicator on view                                               | required |
| isPageIndicatorCircle              | Bool           | to show pageIndicator in circle                                             |          | false   |
| isButtonPageIndicatorOverlay       | Bool           | to overlay button/pageIndicator on view                                     |          | false   |
| isShowButton                | Bool           | to show button on view                                               |          | false   |
| introViewBackgroundColor    | Color          | used to set background colour of introduction view                   |          | .white  |
| buttonPageIndicatorBackgroundColor | Color          | used to set background colour of button and pageIndicator                   |          | .white  |


### Default value of UI element properties 

| Props                      | Type        | Description                    | Default   |
| :------------------------- | :---------- | :----------------------------- | :--------------------- |
| imageWidth                 | CGFloat     | set image width                |   330                  |
| imageHeight                | CGFloat     | set image height               |   15      |
| imageCornerRadius          | CGFloat     | set image corner radius        |   0       |
| titleFontSize              | CGFloat     | set custom title font size     |   20      |
| titleFontColor             | Color       | set title font color           |  .black   |
| titleFontWeight            | Font.Weight | set title font weight          |  .bold    |
| quoteFontSize              | CGFloat     | set custom quote font size     |   15      |
| quoteFontColor             | Color       | set quote font color           |  .black   |
| quoteFontWeight            | Font.Weight | set quote font weight          |  .regular |
| descriptionFontSize        | CGFloat     | set description font size      |   15      |
| descriptionFontColor       | Color       | set description font color     |  .black   |
| descriptionFontWeight      | Font.Weight | set description font weight    |  .regular |
| pageIndicatorAlignment.           | Alignment   | set the pageIndicator alignment       |  .bottom  |
| pageIndicatorColor                | Color       | set the pageIndicator color           |  .black  |
| buttonTextSize             | CGFloat     | set button text size           |  .15            |
| buttonTextWeight           | Font.Weight | set button text weight         |  .regular |
| buttonTextTitle            | String      | set button title               |  "Get Started" |
| buttonTextTitleColor       | Color       | set button title color         |  .white       |
| buttonTextBackgroundColor  | Color       | set button background color    |  .black |
| buttonCornerRadius         | CGFloat     | set button corner radius       |  15 |
| buttonPadding              | Edge.Set    | set button padding             |  .all             |
| buttonAction               | () -> Void  | set button action              |  {print("button Tapped")} |   //22
| buttonTextTitle            | String      | set button title               |  "Get Started" |
| buttonTextTitle            | String      | set button title               |  "Get Started" |



# Installation 💾

The instructions on how to install or run this demo:

* Clone the repository.
* Open the project in Xcode.
* Build and run the project.

# Contributing

- Created something awesome, made this code better, added some functionality, or whatever (this is the hardest part).
- [Fork it](http://help.github.com/forking/).
- Create new branch to contribute your changes.
- Commit all your changes to your branch.
- Submit a [pull request](http://help.github.com/pull-requests/).


# Need Help? 

We also provide a free, basic support for all users who want to use this coordinator master demo in project. In case you want to customize this demo input to suit your development needs, then feel free to contact our [iOS Developers](https://www.weblineindia.com/hire-ios-app-developers.html).

# Collection of Components

We have built many other components and free resources for software development in various programming languages. Kindly click here to view our [Free Resources for Software Development.](https://www.weblineindia.com/communities.html)

# Changelog

Detailed changes for each release are documented in [CHANGELOG](./CHANGELOG).

# License 📃

This project is licensed under the MIT License. Feel free to use, modify, and distribute the code as permitted by the license.

# Acknowledgements

This app was created using SwiftUI and leverages various libraries and resources. We would like to acknowledge and express our gratitude to the following:
* SwiftUI: Apple's declarative framework for building user interfaces.
* Xcode: Integrated development environment (IDE) provided by Apple.
* Open-source libraries: Various open-source libraries and frameworks used in the project.
* Community contributors: Contributors who have provided support, bug fixes, and enhancements.

# Keywords

Custom Intro screen swiftUI, Tutorial view component, onboarding screen SwiftUI, Custom info screen, Custom introduction view, SwiftUI5, iOS 17, WeblineIndia



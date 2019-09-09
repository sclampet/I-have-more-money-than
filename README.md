<img src="images/icon.png" width="50"><br>
# I Have More Money Than
By [Scott Clampet](mailto:scott@tao.team)

An app for an eccentric Billionaire. He LOVES his money. The only thing he loves more than counting it is showing people just how rich he really is.  This fantastic new app that will download a list of all of his accounts so that he can lord over all of this “friends” that are merely Millionaires.

## Installation Instructions
1. Navigate to [repo](https://github.com/sclampet/i-have-more-money-than)
2. Clone locally using
   `git clone https://github.com/sclampet/i-have-more-money-than.git`
3. Install dependencies using `pod install`
4. Run tests using `CMD+U in Xcode`
5. Enjoy!


## Requirements
  * The app displays a list of accounts with their names and amounts in a card like format, and when tapping an account you are taken to a new screen that displays the amount bigger and has either a green or a red background depending on the account's ROI.
  * It has clean, readable code.
  * It is written entirely in Swift.
  * It makes use of the 3rd Party Dependency SVProgressHUD.
  

## Specifications
I built the UI programmatically, used URLSession to pull in the account data from the given endpoint, and used the XCTest framework to write unit tests. There isn't any use of persistent storage since this app only makes use of getting data from a given endpoint. I am also properly handling the case of receiving an error from my network call by notifying the user in the UI and offering them a chance to "refresh" when they have a better internet connection.

## Discussion
I used the following technologies: Swift, XCTest, UIKit, SVProgressHUD

I'm most proud of the app's easily extended architecture and simplistic design. 

Ultimately, where I think this app is lacking is in its testing suite. I feel that more time should be dedicated to creating a more robust test suite overall that would include more e2e tests and more unit testing on my network manager specifically. I did create a mock urlsession class to test that the proper endpoint was being targeted, but due to the time constraints I decided to place more emphasis on the UI rather than fully mocking the network manager. I felt that this was a decent tradeoff in this scenario since ultimately this billionaire wants to massage his ego and this first version of the app has a relatively simple network request.  

## Demo
<p align="center">
<img src="images/home.png" width="285"><img src="images/details.png" width="285"><br><img src="images/demo.gif" width="650">
</p>

#Introduction
Welcome to Hello Developer, a simple app to help get you antiquated to the
awesome world of iOS Development. While we won't do any crazy - at least not
yet - it's a great way to get started fast, and we can build on this later.

A couple comments to keep in mind as you explore this project:
* In case you are looking at this project because you missed the workshop, look
at [Apple`s Xcode Workspace Window Overview](https://developer.apple.com/library/prerelease/content/documentation/ToolsLanguages/Conceptual/Xcode_Overview/TheWorkspaceWindow.html#//apple_ref/doc/uid/TP40010215-CH25-SW1) which will show you around the Xcode interface. If you can understand the Xcode interface, learning the development part is much easier.

* Most of these ideas generalize to other platforms you may find yourself writing
apps for; if you learn iOS dev, its only a few tweaks away from macOS programs!

* I encourage you to **Research and Experiment** with anything that seems
confusing.

* I'm always open to suggestions, questions, and comments concerning this app and
iOS development in general. One can contact me via email: joe.durand3[AT]gmail.com.

#Saying Hello
Traditionally, the first program any programmer writes is the Hello World
program. The goal is to simply print out "Hello, World!" We'll make it a bit
more interesting by having the user type in their name, tap a button,
and we will deliver a nice, customized "Hello World!" message.
Check out `Main.storyboard` in the file pane on the left, which will show you what
the app will look like when we run it.

#Quick Tour
Let's have a brief overview of the files contained in this project. I encourage
you to Google these topics and look at Apple documentation to further your
understanding:

###`Hello Developer` (blue icon)
The project file dictates all kinds of settings for building the app, organized
into tabs. Take a quick look and see if you can understand some of the important
basic settings in the General tab.

###`App Delegate`
[`App Delegate`](https://developer.apple.com/reference/uikit/uiapplicationdelegate)
can be thought of at the messenger for our mobile app. Apple Operating Systems by nature
are very secure, and don't let our app just wander around the device asking for
information. If we get a push notification, for instance, `App Delegate` is the
first to know about it. This also goes for opening/closing the app, and
entering background mode when the user clicks the home button.

###`HelloViewController`
`HelloViewController` is a subclass (a type of) [`UIViewController`](https://developer.apple.com/reference/uikit/uiviewcontroller). UIViewControllers
serve as our link between our app's information (the model) and what the user
sees on the screen (the view). This important piece is what lets our data in our
app (the models) talk to what the user sees (the views).

UIViewControllers are a particularly important part of our app - they give us the
opportunity to control what the view looks like to the user. Without them, we're
stuck with a bunch of fancy sliders and switches that don't do anything useful.
It also implements loads of behind-the-scenes functionality that we simply don't
want to deal with and (thankfully) Apple has handled for us.

By subclassing `UIViewController`, we get free access to everything it has to offer,
so all we have to do is handle what our app idea is supposed to bring to the table.
In this case, `HelloViewController` accepts the users name and spits out a Hello
message to the view.

###`Main.storyboard`
While there are several ways to build a user interface in Xcode, the easiest
way is by using [Storyboards](https://developer.apple.com/library/content/documentation/ToolsLanguages/Conceptual/Xcode_Overview/DesigningwithStoryboards.html). Storyboards in Xcode are similar to
storyboards in comics; it's a series of panes that tell a story. They lay out
views and visual elements that make up the user interface. An app might have,
for example, a storyboard for that goes through the registration process, or a
storyboard that takes a user through the checkout process in a shopping app. We
have one main storyboard, since the user stays on the same screen the entire
time.

###`LaunchScreen.storyboard`
As the app starts up, the launch screen is displayed to let the user know
something is going on. Generally, you don't want to do anything too busy on this
screen; it likely won't be there very long. I prefer to have a "skeleton" of
what my screen is going to look like when it starts up. Open up Apple's weather
app to see this done correctly.

###`Assets.xcassets`
Asset directories store images, videos, audio files, and the like to be used in
the app. We won't use it in this project, but remember that your graphics set
should look good on ANY device your app works on.

###`Info.plist`
Working with the project file mentioned first, this stores important details and
settings about the app. A developer can set an app to only work on an iPad or
only work in portrait mode, for example.

Typically, this file can be left alone.

#Working with this project
As an introductory project, I mainly aim to lay out the basic pieces you will
find and use in any future project. Aim to understand why these files are included
from the get go, and when you could use these in the future.

As far as functionality, check out `HelloViewController`. All of the logic is
based in this file, and `Main.storyboard` shows the view that is associated with
this view controller. Use the Assistant Editor and Connection Inspector to compare
them side by side and see where they link up.

#Resources
There are unlimited resources for learning Swift and iOS Development on the web.
Here are a couple of my favorites:

Keep Apple's swift documentation handy! Descriptions of everything Swift are
available: https://developer.apple.com/swift/resources/

Professor Paul Hegarty at Stanford University teaches an excellent class in Swift:
https://itunes.apple.com/us/course/developing-ios-9-apps-swift/id1104579961

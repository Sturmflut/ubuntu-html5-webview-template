# ubuntu-html5-webview-template
Template for making a click package out of any html5 app, using a QML WebView wrapper for more flexibility

Put your HTML5 app in www/

Modify the app.desktop, app.qml and manifest.json to set your app name, version, etc. If you need local storage, pay attenttion to the "path" property in app.qml!

Options for building:

- Open "app.qmlproject" using the Ubuntu SDK or

- Build on the command line with "click build ."


# Options

Look at the commented out options in app.qml, they can be used to rotate the content and scale it. This is e.g. necessary if you want to force Landscape orientation.


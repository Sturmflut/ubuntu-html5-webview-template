import QtQuick 2.0
import com.canonical.Oxide 1.0
import Ubuntu.Components 1.0
import QtQuick.Window 2.1

Window {
    id: window
    visibility: Window.FullScreen

    WebView {
        id: view

        // Disable for 90° rotation
        anchors.fill: parent

        // Enable for 90° rotation
        //rotation: 90
        //width: parent.height
        //height: parent.width

        anchors.centerIn: parent

        url: Qt.resolvedUrl("www/index.html")

        preferences.localStorageEnabled: true
        preferences.appCacheEnabled: true
    }
}

import QtQuick 2.0
import com.canonical.Oxide 1.0
import Ubuntu.Components 1.0
import QtQuick.Window 2.1

Window {
    id: window
    //visibility: Window.FullScreen
    property real guFactor: units.gridUnit/13

    Rectangle {
        id: root
        width:parent.width
        height:parent.height


        WebView {
            id: view
            //rotation: 90
            transformOrigin: Item.TopLeft
            //x: parent.width
            y: 0
            width: 960 * guFactor
            height: 540 * guFactor

            url: "www/index.html"

            preferences.allowUniversalAccessFromFileUrls: true
            preferences.allowFileAccessFromFileUrls: true
            preferences.localStorageEnabled: true
            preferences.appCacheEnabled: true

            context: WebContext {
                sessionCookieMode: {
                    if (typeof webContextSessionCookieMode !== 'undefined') {
                        if (webContextSessionCookieMode === "persistent") {
                            return WebContext.SessionCookieModePersistent
                        } else if (webContextSessionCookieMode === "restored") {
                            return WebContext.SessionCookieModeRestored
                        }
                    }
                    return WebContext.SessionCookieModeEphemeral
                }

                dataPath: "/home/phablet/.config/pandalove-qml.sturmflut"
            }

            //transform: Scale {
            //    xScale: root.width / (540 * guFactor)
            //    yScale: root.height / (960 * guFactor)
            //}
        }
    }
}

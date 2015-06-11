import QtQuick 2.0
import Ubuntu.Web 0.2
import Ubuntu.Components 1.0
import QtQuick.Window 2.1

Window {
    id: window
    //visibility: Window.FullScreen

    WebView {
        //rotation: 90

        anchors.fill: parent

        url: Qt.resolvedUrl("www/index.html")

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

            dataPath: "/home/phablet/.config/html5-app.yourname"
        }
    }
}

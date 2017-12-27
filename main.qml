import QtQuick 2.10
import QtQuick.Controls 2.3
import QtWebSockets 1.1

ApplicationWindow {
    visible: true
    width: 320
    height: 540
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            property int id: 1
            roomLight.onClicked: ws.sendTextMessage('{"type":"call_service","domain":"homeassistant","service":"turn_on","service_data":{"entity_id":"light.living_room_light"},"id":%1}'.arg(id++))
        }

        Page2Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }

    WebSocket {
        id: ws
        active: true
        url: "ws://192.168.1.152:8123/api/websocket"

        onErrorStringChanged: console.error(errorString)
        onBinaryMessageReceived: console.log("WSBIN: " + message)
        onTextMessageReceived: console.log("WS: " + message)
        onStatusChanged: console.log("WS STATUS " + status)
    }
}

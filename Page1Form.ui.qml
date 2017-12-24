import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 320
    height: 480

    header: Label {
        id: label
        text: qsTranslate("", "AAPP :D")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    RoundButton {
        id: roundButton
        x: 5
        y: 6
        text: "="
        anchors.top: label.bottom
        anchors.topMargin: 6
    }

    TextArea {
        id: textArea
        x: 71
        y: 14
        width: 151
        height: 48
        text: qsTranslate("", "LIVING ROOM")
        anchors.bottomMargin: -8
        anchors.bottom: roundButton.bottom
    }

    Frame {
        id: frame
        x: 38
        y: 93
        width: 236
        height: 301
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: rectangle
            x: 10
            y: 46
            width: 104
            height: 0
            color: "#ffffff"
            anchors.horizontalCenterOffset: -61
            anchors.horizontalCenter: parent.horizontalCenter
        }

        GridLayout {
            id: gridLayout
            x: -12
            y: -12
            width: 236
            height: 301
            rows: 3
            flow: GridLayout.TopToBottom
            columns: 0
            anchors.right: parent.right
            anchors.rightMargin: -12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -12
            anchors.top: parent.top
            anchors.topMargin: -12
            anchors.left: parent.left
            anchors.leftMargin: -12

            Button {
                id: button1
                text: qsTr("Button")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button2
                text: qsTr("Button")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button3
                text: qsTr("Button")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("Button")
                Layout.rowSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }

    Image {
        id: image
        x: 228
        y: 6
        width: 54
        height: 48
        anchors.bottomMargin: -18
        anchors.rightMargin: -20
        anchors.right: frame.right
        anchors.bottom: textArea.bottom
        anchors.left: textArea.right
        anchors.leftMargin: 6
        anchors.topMargin: 0
        anchors.top: textArea.top
        source: "../../../Downloads/MJ/LIVING.JPG"
    }
}

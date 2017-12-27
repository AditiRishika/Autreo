import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 320
    height: 480
    opacity: 1
    focusPolicy: Qt.ClickFocus
    font.family: "Verdana"
    font.strikeout: false
    font.bold: false

    header: Label {
        id: label
        color: "#d8d7df"
        text: qsTr("Autreo Plus")
        styleColor: "#00000000"
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        opacity: 0.2
        fillMode: Image.PreserveAspectCrop
        source: "../../../../20171_cobh01a_01_PH137648.jpeg"
    }

    TextArea {
        id: textArea
        x: 69
        y: 14
        width: 151
        height: 45
        text: qsTr("Living Room")
        anchors.bottomMargin: -5
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
            width: 236
            height: 301
            anchors.top: parent.top
            anchors.topMargin: -12
            columnSpacing: 5
            rowSpacing: 4
            rows: 4
            flow: GridLayout.TopToBottom
            columns: 2
            anchors.right: parent.right
            anchors.rightMargin: -12

            Button {
                id: button1
                text: qsTr("fan")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button2
                text: qsTr("light")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button3
                text: qsTr("Ambient light")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button5
                text: qsTr("Socket")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("YeeLight")
                spacing: 5
                transformOrigin: Item.Center
                Layout.rowSpan: 4
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }

    RoundButton {
        id: roundButton
        x: 10
        y: 6
        text: "+"
        anchors.topMargin: 6
        anchors.top: label.bottom
    }
}

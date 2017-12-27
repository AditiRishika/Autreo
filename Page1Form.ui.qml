import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 320
    height: 480
    property alias roomLight: roomLight
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
        opacity: 0.2
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "../../../../lr_rm_bonitasprings_blue_7pc_tx_Bonita-Springs-Blue-5-Pc-Living-Room.jpeg"
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
        height: 40
        text: qsTranslate("", "LIVING ROOM")
        anchors.bottomMargin: 0
        anchors.bottom: roundButton.bottom
    }

    Frame {
        id: frame
        anchors.fill: parent

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
            columns: 1
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
                text: qsTr("DOOR Light")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: roomLight
                text: qsTr("room light")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button3
                text: qsTr("room socket")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("YeeLight")
                Layout.rowSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}

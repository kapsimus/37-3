import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id: win
    width: 240
    height: 680
    visible: true
    GridLayout {
        id: maingrid
        width: parent.width
        property int buttonheight: 30
        rows: 6
        columns: 3
        rowSpacing: 2
        columnSpacing: 2
        Layout.fillWidth : true

        Button {
            text: "1"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "2"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "3"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "4"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "5"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "6"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "7"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "8"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "9"
            Layout.fillWidth : true
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "0"
            Layout.fillWidth : true
            Layout.column: 1
            Layout.row: 3
            height: maingrid.buttonheight
            onClicked: {
                disp.ch = text
            }
        }
        Button {
            text: "Ch+"
            Layout.fillWidth : true
            Layout.column: 0
            Layout.row: 4
            height: maingrid.buttonheight
            onClicked: {
                disp.ch++
            }
        }
        Button {
            text: "Ch-"
            Layout.fillWidth : true
            Layout.column: 0
            Layout.row: 5
            height: maingrid.buttonheight
            onClicked: {
                disp.ch--
                if (disp.ch < 0) disp.ch = 0
            }
        }
        Button {
            text: "Vol+"
            Layout.fillWidth : true
            Layout.column: 2
            Layout.row: 4
            height: maingrid.buttonheight
            onClicked: {
                disp.vol++
            }
        }
        Button {
            text: "Vol-"
            Layout.fillWidth : true
            Layout.column: 2
            Layout.row: 5
            height: maingrid.buttonheight
            onClicked: {
                disp.vol--
                if (disp.vol < 0) disp.vol = 0
            }
        }

    }
    ColumnLayout {
        id: disp
        property int ch: 1
        property int vol: 5
        y: maingrid.height + 30
        Text {
            id: chanel
            font.pointSize: 14
            text: qsTr("Chanel: " + disp.ch)
        }
        Text {
            id: volume
            y: maingrid.height + 30
            font.pointSize: 14
            text: qsTr("volume: " + disp.vol)
        }
    }

}

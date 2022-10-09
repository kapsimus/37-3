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
        Repeater{
            model: ["1","2","3","4","5","6","7","8","9"]
            Button {
                text: modelData
                Layout.fillWidth : true
                height: maingrid.buttonheight
                onClicked: {
                    disp.ch = text
                }
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
                disp.vol+=10
                if (disp.vol > 100) disp.vol = 100
            }
        }
        Button {
            text: "Vol-"
            Layout.fillWidth : true
            Layout.column: 2
            Layout.row: 5
            height: maingrid.buttonheight
            onClicked: {
                disp.vol-=10
                if (disp.vol < 0) disp.vol = 0
            }
        }

    }
    Rectangle {
        color: "lightblue"
        x: 0
        y: maingrid.height + 30
        width: maingrid.width
        height: disp.height
        ColumnLayout {
            id: disp
            property int ch: 1
            property int vol: 10
            Text {
                id: chanel
                font.pointSize: 14
                text: qsTr("Chanel: " + disp.ch)
            }
            Text {
                id: volume
                font.pointSize: 14
                text: qsTr("volume: " + disp.vol + "%")
            }
        }
    }
}

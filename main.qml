import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    property int codeCount:37


    property int oneCodeWidth: 8
    property int updateRate: 100

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Grid{
        id:grid
        anchors.centerIn: parent
        width: codeCount*oneCodeWidth
        height: codeCount*oneCodeWidth
        columns: codeCount
        rows: codeCount
        Repeater{
            id:repeater
            model: codeCount*codeCount
            OneCode{
                 height: oneCodeWidth
                 width: oneCodeWidth
            }
        }
    }
    Rectangle{
        height: oneCodeWidth*8
        width: height
        color: "white"
        anchors.top:grid.top
        anchors.right: grid.right
        CodeConner{
            anchors.top:parent.top
            anchors.right: parent.right
        }
    }
    Rectangle{
        height: oneCodeWidth*8
        width: height
        color: "white"
        anchors.top:grid.top
        anchors.left: grid.left
        CodeConner{
            anchors.top:parent.top
            anchors.left: parent.left
        }
    }
    Rectangle{
        height: oneCodeWidth*8
        width: height
        color: "white"
        anchors.bottom:grid.bottom
        anchors.left: grid.left
        CodeConner{
            anchors.bottom:parent.bottom
            anchors.left: parent.left
        }
    }
    Rectangle{
        id:centerRect
        anchors.centerIn: parent
        color: "white"
        height: width
        width: oneCodeWidth*10
        radius: 4
    }
    Rectangle{
        id:innerRect
        height: oneCodeWidth*5
        width: height
        color: "black"
        anchors.bottom: grid.bottom
        anchors.bottomMargin: oneCodeWidth*4
        anchors.right: grid.right
        anchors.rightMargin: oneCodeWidth*4
        Rectangle{
            anchors.centerIn: parent
            height: oneCodeWidth*3
            width: height
            color: "white"
            Rectangle{
                anchors.centerIn: parent
                height: oneCodeWidth
                width: height
                color: "black"
            }
        }
    }
}

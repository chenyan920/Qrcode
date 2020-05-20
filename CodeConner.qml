import QtQuick 2.12

Rectangle{
    id:secondRect
    height: oneCodeWidth*7
    width: height
    color: "black"
    Rectangle{
        anchors.centerIn: parent
        height: oneCodeWidth*5
        width: height
        color: "white"
        Rectangle{
            anchors.centerIn: parent
            height: oneCodeWidth*3
            width: height
            color: "black"
        }
    }
}


import QtQuick 2.12

Rectangle {
    function getColor(){
        var random = Math.random()
        if(random<0.5) root.color = "white"
        else return root.color = "black"
    }
    id:root
    height: oneCodeWidth
    width: oneCodeWidth
    color:"white"
    //border.width: 1
    Timer{
        interval: updateRate
        running: true
        repeat: true
        onTriggered: {
            getColor()
        }
    }
}

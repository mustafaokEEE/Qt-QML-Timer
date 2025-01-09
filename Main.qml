import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Counter Application"

    property int counter;

    Timer {
        id:myTimer
        interval: 1 // 1 second == 1000 millisecond
        repeat: true
        onTriggered: counter --
    }
    Text {
        id:myText
        anchors.centerIn:parent
        text:"Counter: " + counter
        font.pixelSize:50
        color:"black"
    }
    Button {
        id:myButton
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: myTimer.running ? "Stop" : "Start"
        width: 120
        height: 50
        onClicked: {
            if(myTimer.running) {
                myTimer.stop();
            } else {
                myTimer.start();
            }
        }
    }
}

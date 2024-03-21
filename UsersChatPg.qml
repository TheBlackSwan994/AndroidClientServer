import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12


Page{
    signal backPg();
    signal goChat();

    id: userChat1




          Rectangle {
              id: chatHeader
              width: parent.width
              height: 60
                RowLayout {
                    anchors.fill: parent
                    spacing: 10
                    Button{
                        id:backBut
                        onClicked: {stack_main.pop()}
                        font.pointSize: 24
                        anchors.verticalCenter: parent.verticalCenter
                        text: StackView.depth ? "\u25C0":"\u2190"
                        background: Rectangle{ color: "#ffffff"}
                        }

                    Rectangle{
                    height: 50
                    width: height
                    radius: height/2
                    color: "#f4f3f7"
                    Image{
                    anchors.fill: parent
                    source: "qrc:/qt/qml/Authorization1Mar/anonymous.png"
                    }
                    }

                    Label {
                        font.pointSize: 24
                        color: "#000000"
                    text: "Василий"
                        verticalAlignment: Qt.AlignVCenter
                        Layout.fillWidth: true
                    }
                    Button {
                        text: "+"
                        background: Rectangle{ color:"#ffffff"}
                        font.pointSize: 20
                    }
                }
            }


        Rectangle{
            id:chatsArea
            y:chatHeader.height
        height: userChat1.height -chatHeader.height - 70
        width: userChat1.width


        ListModel {

            id:chatHistory
                ListElement{sender: false; message: "Сообщение 1"; time:"11:15"}
                ListElement{sender: true; message: "Сообщение 2"; time: "11:20"}





          }


          ListView {
              id: openedChatView
              clip: true
              spacing: 55
              anchors.fill: parent
              height: userChat1.height - chatHeader.height -sendArea.height-90
              width: userChat1.width
              y:chatHeader.height
              highlightFollowsCurrentItem: true
                model:chatHistory

                delegate: Item{
                    id: userMSG


                    height: shouldShowTime? backgroundMSG.height +25: backgroundMSG.height
                    width: backgroundMSG.width

                    property bool shouldShowTime: chatHistory.count -1 == index? true :chatHistory.get(index+1).sender !== sender

                    Rectangle {
                        id: backgroundMSG
                        anchors.margins: 5
                        height: messageText.implicitHeight +24
                        width: Math.min(messageText.implicitWidth + 24, (openedChatView.width * 0.8))
                        radius: 32
                        x: sender? 10: openedChatView.width - width -10

                        color: sender? color="#f4f3f7" : color ="#29303C"


                        Text {
                            id: messageText
                            text: message
                            anchors.fill: parent
                            anchors.margins: 12
                            wrapMode: Text.Wrap
                            font.pointSize: 20
                            color: sender? color="#000000":color="#DCDCDC"
                            verticalAlignment: Qt.AlignVCenter
                            horizontalAlignment: sender? Qt.AlignLeft: Qt.AlignRight
                        }

                        Text {
                            anchors.top: backgroundMSG.bottom; anchors.topMargin: 10
                            anchors.right: sender? undefined: parent.right
                            horizontalAlignment: sender? Qt.AlignLeft: Qt.AlignRight
                            text: time
                            width: backgroundMSG.width
                            height: 12

                            color: "#000000"
                            opacity: 0.3
                        }

                    }
                }



          }


        }

        Rectangle{
            id:sendArea
                implicitWidth: userChat1.width*0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom:parent.bottom
                anchors.bottomMargin: 10
                implicitHeight: 60
                clip:true
                color: "#f4f3f7"
                radius: 16



    ScrollView{
        width: parent.width*0.78
        height: parent.height
        anchors.left: parent.left
        anchors.leftMargin: 10
        contentWidth: width

            TextInput
                {

                    autoScroll : true
                    id: youreTextInput
                    color: "#000000"
                    font.pointSize: 18
                    width: sendArea.width*0.74
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                    wrapMode: Text.Wrap
                    onClipChanged: if(text.length>6){Text.Wrap}

                }
    }

            Button{
                id:sendButt
                onClicked: sendMSG();
            anchors.right: sendArea.right
            anchors.rightMargin: 10
            anchors.verticalCenter: sendArea.verticalCenter
            background: Rectangle{
            anchors.centerIn: parent
            color:"#29303C"
            height: sendArea.height*0.8
            width: height
            radius: height/2

                Text {
                    text: StackView.depth?"\u15C6":"\u15C6"
                    color: "#ffffff"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }

            }
            }

            }
        function sendMSG(){
            if(youreTextInput.text == "")
            return;

           var isSender = Math.random() > 0.5;
            console.log("Sending mesage");
           var currentTime = new Date();
           var  hours = currentTime.getHours() < 10 ? "0" + currentTime.getHours() : currentTime.getHours();
           var  minutes = currentTime.getMinutes() < 10 ? "0" + currentTime.getMinutes() : currentTime.getMinutes();

            chatHistory.append({
                "sender": isSender,
                "message": youreTextInput.text,
                "time": hours + ":" + minutes
                                   });
            youreTextInput.text = "";

        }

}


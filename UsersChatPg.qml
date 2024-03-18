import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12


Page{
    signal backPg();
    signal goChat();

    id: userChat1


          Rectangle {
              id: chatsHeader
              width: parent.width
              height: 60
                RowLayout {
                    anchors.fill: parent
                    Button{
                        id:backBut
                        onClicked: {stack_main.pop}
                        font.pointSize: 24
                        anchors.verticalCenter: parent.verticalCenter
                        text: StackView.depth ? "\u25C0":"\u2190"
                        background: Rectangle{
                        color: "#ffffff"
                    }
                }
                    Label {
                        font.pointSize: 24
                        color: "#000000"
                    text: "Василий"
                        elide: Label.ElideRight
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                        Layout.fillWidth: true
                    }
                    Button {
                        text: "+"
                        background: Rectangle{ color:"#ffffff"}
                        font.pointSize: 20
                    }
                }
                Rectangle{id: lineOnHeader; height:1; width:userChat1.width; anchors.bottom: parent.bottom; color:"#000000" }
            }


        Rectangle{
            id:chatsArea
            y:chatsHeader.height
        height: userChat1.height -chatsHeader.height - 70
        width: userChat1.width


        ListModel {
              id: chatsDataModel

            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}
            ListElement{}



          }

        ListView {
                 id: contactView

                 anchors.fill: chatsArea
                 spacing: 1
                 model: chatsDataModel
                 clip: true



                 delegate: Item{
                     id: delegateOfListViewChats
                     width: contactView.width
                     height: 60
                     Rectangle {
                         color: "#000000"

                         anchors.margins: 5
                         anchors.fill: parent










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
                height: 60
                color: "#ffffff"
                radius: 16
                border.width: 1

            TextInput
                {
                    id: inpMSG
                    color: "#000000"
                    maximumLength: 15
                    font.pointSize: 18
                    anchors.centerIn: parent
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    anchors.left: parent
                    anchors.leftMargin: 10
                }
            }

}


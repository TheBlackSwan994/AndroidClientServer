import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
    Page{
        signal backPg();
        signal goChat();

        id: chatsPg


            Drawer{
                id: menu_main
            width: chatsPg.width*0.85
            height: chatsPg.height
            modal: true
            focus: true
            closePolicy: Drawer.CloseOnPressOutside




                Button{
                    anchors.top: parent.top
                    id:buttClose
                    height: 60
                    width: parent.width
                    onClicked: {
                        menu_main.close()
                        backPg()
                    }
                    background: Rectangle{
                        color: "#29303C"
                        Text {
                            anchors.centerIn: parent
                            text:"Выйти"
                            font.pointSize: 16
                            color: "#ffffff"

                        }
                    }


                }

                }
              Rectangle {
                  id: chatsHeader
                  width: parent.width
                  height: 60
                    RowLayout {
                        anchors.fill: parent
                        Button {
                            text: "="
                            background: Rectangle{ color:"#ffffff"}
                            font.pointSize: 28
                              onClicked: menu_main.open()

                        }

                        Label {
                            font.pointSize: 24
                            color: "#000000"
                        text: "Чаты"
                            elide: Label.ElideRight
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                            Layout.fillWidth: true
                        }
                        Button {
                            text: "+"
                            background: Rectangle{ color:"#ffffff"}
                            font.pointSize: 20
                            //onClicked: menu.open()
                        }
                    }
                    Rectangle{id: lineOnHeader; height:1; width:chatsPg.width; anchors.bottom: parent.bottom; color:"#000000" }
                }


            Rectangle{
                id:chatsArea
                y:chatsHeader.height
            height: chatsPg.height -chatsHeader.height
            width: chatsPg.width


            ListModel {
                  id: chatsDataModel

                  ListElement {name:"Василий"; lastMSG:"Привет, как скоро проект будет готов?"; path:"UsersChatPg.qml" }
                  ListElement {name: "Елизавета"; lastMSG:"давай в 20:00" }


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

                            Rectangle{
                                anchors.left: parent.left
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.margins: 5
                            color:"#ffffff"
                            id: imageContact
                            height: 50
                            width: height
                            radius: height/2

                            }

                             Text {
                                 id: userName
                                 anchors.left: imageContact.right
                                 anchors.leftMargin: 10
                                 text: model.name
                                 color: "#ffffff"
                                 font.pointSize: 24
                                 verticalAlignment: Qt.AlignTop
                             }

                             Text {
                                 id:lastMessageText
                                 anchors.top:  userName.bottom
                                 anchors.left: imageContact.right; anchors.leftMargin: 10
                                 verticalAlignment: Qt.AlignBottom
                                 font.pointSize: 12
                                 text: model.lastMSG
                                 color: "#888888"

                             }

                             Text {
                               anchors.right: parent.right
                               text: pageStack.depth?"\uFE19":"\uFE19"
                               font.pointSize: 8
                               color: "#000000"
                             }


                             MouseArea {
                                 id:goToChatPg
                                 anchors.fill: parent
                                 onClicked:{
                                     stack_main.push(Qt.resolvedUrl(model.path))
                                 }



                             }
                         }

                     }




                 }


            }



}

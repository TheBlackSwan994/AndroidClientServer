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
                            //onClicked: menu.open()
                            //onClicked: stack.pop()
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
                anchors.top: parent.top
                anchors.topMargin: 60
            height: parent.height-40
            width: parent.width


            ListModel {
                    id: dataModel




                    ListElement {
                        text: "user 1 (value from DB)"

                        source:"qrc:/ZJNoNvgz-RHNlfIYnh4UsLAN3H64fEJ4v2e7UgXUPC-kUh8Je9FHpKaadD2BhWV4mN2GGGXQksmjAtBCSsOfKRi3.jpg"

                    }
                    ListElement {

                        text: "user 2 (value from DB)"

                    }
                    ListElement {

                        text: "user 3 (value from DB)"

                    }






                }

                ListView {
                    id: view

                    anchors.margins: 10
                    anchors.fill: parent
                    spacing: 10
                    model: dataModel
                    clip: true



                    delegate: Item {
                        id: listDelegate



                        width: view.width
                        height: 60


                        Rectangle {

                            anchors.margins: 1
                            anchors.fill: parent
                            Button
                            {
                            id: toChat
                            anchors.fill: parent
                            onClicked: {goChat(model.id)}
                            }
                            color: toChat.down? "#e0e0e0":"a0a0a0"

                            Rectangle{
                                anchors.left: parent.left
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.margins: 10
                                width: 40
                                height: 40
                                radius: width/2



                            }

                            Text {
                                anchors.centerIn: parent
                                font.pointSize: 12
                                text: "%1".arg(model.text)
                            }


                        }
                    }
                }

            }



}

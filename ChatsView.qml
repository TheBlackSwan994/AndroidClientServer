import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
    Page{
        signal backPg();
        signal goChat();

        id: chatsPg

        Rectangle {
            anchors.fill: parent
            //Место для вспылвающего окна
            Popup{
                id: menu_main
            width: parent.width/2
            height: parent.height
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent



                Button{
                    anchors.top: parent.top
                    id:buttClose
                    height: 30
                    width: parent.width
                    onClicked: menu_main.close()
                    background: Rectangle{
                        color: buttClose.down?"#3A78AC":"#4682B4"
                        Text {
                            anchors.centerIn: parent
                            text: "Закрыть"
                            font.pointSize: 10
                            color: "#ffffff"



                        }
                    }

                    Button{
                        anchors.top: parent.bottom
                        anchors.topMargin: 10
                    id: buttBack
                    height: 30
                    width: parent.width
                    onClicked: {
                        menu_main.close()
                        backPg()
                    }
                    background: Rectangle{
                        color: buttBack.down?"#3A78AC":"#4682B4"
                        Text {
                            anchors.centerIn: parent
                            text:"Выйти"
                            font.pointSize: 10
                            color: "#ffffff"

                             }

                        }
                    }
                }

                }
              ToolBar {
                  width: parent.width
                  height: 40
                    RowLayout {
                        anchors.fill: parent
                        ToolButton {
                            text: StackView.depth ? "\u25C0":"\u2630"
                            font.pointSize: 16
                              onClicked: menu_main.open()
                            //onClicked: menu.open()
                            //onClicked: stack.pop()
                        }

                        Label {
                            font.pointSize: 16
                            color: "#000000"
                        text: "Чаты"
                            elide: Label.ElideRight
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                            Layout.fillWidth: true
                        }
                        ToolButton {
                            text: "+"
                            font.pointSize: 16
                            //onClicked: menu.open()
                        }
                    }
                }


            Rectangle{
                anchors.top: parent.top
                anchors.topMargin: 40
            height: parent.height-40
            width: parent.width

            //Место для тулбара-кнопки снизу справа

            //Место для тулбара-кнопки снизу справа

            ListModel {
                    id: dataModel

                    //Надо реализовать логику с  добавлением элементов в это поле с помощью отдельной кнопки и значениями из базы данных
                    //Также реализовать изменение Icon для каждого элемента вместо дефелтного указанного в delegate
                    //Логику перехода в окно чата
                    //И логику показывания последнего сообщения


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

}

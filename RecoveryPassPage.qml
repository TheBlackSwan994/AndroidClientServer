import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Page{
    id: recoveryPassPg
    signal backPg();

    ToolBar{
        width: parent.width/4
        Button{
            width: parent.width
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 10
            font.pointSize: 20
            onClicked: {backPg()}
            text: StackView.depth ? "\u25C0":"\u2190"
            background: Rectangle{
            color: "#DCDCDC"
    }


        }


        Label{
            anchors.top: parent.bottom
            anchors.topMargin: 70
            anchors.left:  parent.left
            anchors.leftMargin: parent.width/4 -10
            font.pointSize: 12

        text: "Введите номер телефона"
        color: "#000000"


        }
//Элемент на 33 строчке, спэйсер от нго задаётся позиционирование остальных элементов, занимает всю ширину окна
        Rectangle{
            id: spacer
            anchors.top: parent.bottom
            anchors.topMargin: 20
            width: parent.width*4
            height: 10
            visible: true
            color: "#DCDCDC"



        Label{
            anchors.top: parent.bottom
            anchors.topMargin: -10
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Забыли пароль?"
            font.pointSize: 16

        color: "#000000"


        }


        //InpNumber
            Rectangle{
                    //Внешний вид поля TextInput
                width: parent.width-20
                    height: 40
                    border.width: 1
                    color: "#ffffff"
                    radius: 8
                    anchors.top: parent.bottom
                    anchors.topMargin: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                TextInput
                    {
                        id: inputNumber
                        color: "#000000"
                        inputMask:  "+7 (000) 000 00 00"
                        maximumLength: 15
                        font.pointSize: 12
                        anchors.centerIn: parent
                        anchors.fill: parent
                        verticalAlignment: Text.AlignVCenter
                        anchors.left: parent
                        anchors.leftMargin: 10

        Button{
        id: recoveryButt
        anchors.top: parent.bottom
        anchors.topMargin: 100
        anchors.horizontalCenter:parent.horizontalCenter

        width: spacer.width - 20

        enabled: false
           background: Rectangle{
               Text{
                   anchors.centerIn: parent
               text: "Восстановить пароль"
               font.pointSize: 12
               color: "#ffffff"
               }
               implicitHeight: 50
            color: recoveryButt.down?"#3A78AC":"#4682B4"
            radius: 8


           }

            }

        TextInput{
        anchors.top: parent.bottom
        anchors.topMargin: 40
        anchors.leftMargin: -40
        anchors.left: parent.horizontalCenter
        verticalAlignment:  Text.AlignVCenter
        text: ""



        font.pointSize: 16

        inputMask: "0 0 0 0"
        maximumLength: 4



        Label{
        anchors.top: parent.bottom
        anchors.topMargin: -20
        text: "_ _ _ _"
        font.pointSize: 16


            }
            }
        }

        }

    }
    }
    }

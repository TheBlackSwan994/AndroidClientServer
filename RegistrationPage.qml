import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

    Page{
        id: registrationPg
        signal backPg();


        ColumnLayout{
            spacing: 1
            anchors.fill: parent
            anchors.margins: 20




    ToolBar{
        Button{
        Layout.alignment: Qt.AlignLeft
        onClicked: {backPg()}
        font.pointSize: 20
        text: StackView.depth ? "\u25C0":"\u2190"
        background: Rectangle{
        color: "#DCDCDC"
        }
    }
    }

        Label{
        text: "Создать аккаунт"
        font.pointSize: 12
        color: "#000000"
        Layout.alignment: Qt.AlignCenter

        }

        Label{
        text: "Имя"
        font.pointSize: 12
        color: "#000000"
        Layout.alignment: Qt.AlignLeft

        }


    Rectangle{
            //Внешний вид поля TextInput
            implicitWidth: parent -10
            height: 40
            border.width: 1
            color: "#ffffff"
            radius: 8
        TextInput
            {
                id: name
                color: "#000000"
                maximumLength: 15
                font.pointSize: 12
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
            }
        }

    Label{
    text: "Фамилия"
    font.pointSize: 12
    color: "#000000"
    Layout.alignment: Qt.AlignLeft

    }


    Rectangle{
            //Внешний вид поля TextInput
            implicitWidth: parent -10
            height: 40
            border.width: 1
            color: "#ffffff"
            radius: 8
        TextInput
            {
                id: inpSurn
                color: "#000000"
                maximumLength: 15
                font.pointSize: 12
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
            }
        }

    Label{
    text: "Придумайте ник"
    font.pointSize: 12
    color: "#000000"
    Layout.alignment: Qt.AlignLeft

    }

    //Inp Nickname
        Rectangle{
                //Внешний вид поля TextInput
                implicitWidth: parent -10
                height: 40
                border.width: 1
                color: "#ffffff"
                radius: 8
            TextInput
                {
                    id: inpNickn
                    color: "#000000"
                    maximumLength: 15
                    font.pointSize: 12
                    anchors.centerIn: parent
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    anchors.left: parent
                    anchors.leftMargin: 10
                }
            }


    Label{
    text: "Введите номер телефона"
    font.pointSize: 12
    color: "#000000"
    Layout.alignment: Qt.AlignLeft

    }


    //InpNumber
        Rectangle{
                //Внешний вид поля TextInput
                implicitWidth: parent -10
                height: 40
                border.width: 1
                color: "#ffffff"
                radius: 8
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
                }
            }

    Label{
    text: "Придумайте пароль"
    font.pointSize: 12
    color: "#000000"
    Layout.alignment: Qt.AlignLeft

    }




    //InputPass
    Rectangle{
        //Внешний вид поля TextInput
        implicitWidth: parent -10
        height: 40
        border.width: 1
        color: "#ffffff"
        radius: 8

    TextInput
        {
                id: inputPassword
                color: "#000000"
                echoMode: isVisiblePass.pressed? TextInput.Normal : TextInput.Password
                maximumLength: 25
                font.pointSize: 12
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
        }

        Button{
            id: isVisiblePass
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.topMargin: 2
            anchors.rightMargin: 10
            width: 25
            height: 25
           background:  Rectangle{
        anchors.fill: parent
        Image {
            width: parent.width
            height: parent.height
            id: buttVisible
            source:isVisiblePass.pressed?"qrc:/visible.png":"qrc:/hide.png"
        }
        }

    }
}

    Label{
    text: "Повторите пароль"
    font.pointSize: 12
    color: "#000000"
    Layout.alignment: Qt.AlignLeft

    }

//RepeatPass
    Rectangle{
        id: repeatPass
        //Внешний вид поля TextInput
        implicitWidth: parent -10
        height: 40
        border.width: 1
        color: "#ffffff"
        radius: 8

    TextInput
        {
                id: inputPasswordRep
                color: "#000000"
                echoMode: isVisiblePassRep.pressed? TextInput.Normal : TextInput.Password
                maximumLength: 25
                font.pointSize: 12
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
        }

        Button{
            id: isVisiblePassRep
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.topMargin: 2
            anchors.rightMargin: 10
            width: 25
            height: 25
           background:  Rectangle{
        anchors.fill: parent
        Image {
            width: parent.width
            height: parent.height
            id: buttVisibleRep
            source:isVisiblePassRep.pressed?"qrc:/visible.png":"qrc:/hide.png"
        }
        }

    }
}

    Item {
        id: spacer
        height: 40


    }



    Button{
    id: regButton

    Layout.alignment: Qt.AlignCenter
    enabled: false
       background: Rectangle{
           Text{
               anchors.centerIn: parent
           text: "Зарегистрироваться"
           font.pointSize: 12
           color: "#ffffff"
           }
        implicitWidth: parent -10
        implicitHeight: 50
        color: regButton.down?"#3A78AC":"#4682B4"
        radius: 8



       }



    }
}
}

import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Page{
    signal pageReg();
    signal pageRec();
    signal pageChats();

    id: authorizationPg

    ColumnLayout{
        spacing: 5
        anchors.fill: parent
        anchors.margins: 20

        Rectangle{
            id: titleImagePos
        height: 250
        width: 250
        visible: true
        Layout.alignment: Qt.AlignCenter
        anchors.top: parent.top
        color: "#DCDCDC"

        Image {
            anchors.fill: parent
            width: parent
            height: parent
            id: titleImage
            source: "qrc:/simpleimage.png"
            Layout.alignment: Qt.AlignCenter

        }
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


//PasswordInput
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

    Button{
    text: "Забыли Пароль?"
    font.underline: true


    onClicked: {pageRec()}
    font.pointSize: 10
    background: Rectangle{
        color: "#DCDCDC"
    }
    Layout.alignment: Qt.AlignRight

    }

    Button{
    id: confirmButton
    Layout.alignment: Qt.AlignCenter
    enabled: true
    onClicked:{pageChats()}
    background: Rectangle{
           Text{
               anchors.centerIn: parent
           text: "Войти"
           font.pointSize: 12
           color: "#ffffff"
           }
        implicitWidth: parent -10
        implicitHeight: 50
        color: confirmButton.down?"#3A78AC":"#4682B4"
        radius: 8


       }


    }


    Button{
    id: regLb
    text: "Зарегистрироваться"
    font.underline: true

    onClicked: {pageReg()}
    font.pointSize: 10
    background: Rectangle{
        color: "#DCDCDC"
    }
    Layout.alignment: Qt.AlignRight

    }
    Item {
        id: spacer
        height: 100
        width: 50
    }

}




}

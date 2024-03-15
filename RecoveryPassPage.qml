import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Page{
    id: recoveryPassPg
    signal backPg();









Rectangle{
    id:upperWrapper
    width: recoveryPassPg.width
    height: 100
    anchors.top: recoveryPassPg.top
    anchors.horizontalCenter: recoveryPassPg.horizontalCenter
    color: "#C5C7C6"

    Button{
        id:backBut
        onClicked: {backPg()}
        font.pointSize: 24
        anchors.verticalCenter: parent.verticalCenter
        text: StackView.depth ? "\u25C0":"\u2190"
        background: Rectangle{
        color: "#C5C7C6"
    }
}

    Label{
        anchors.centerIn: parent
        text: "Забыли пароль?"
        font.pointSize: 20
        font.family: Typography
        font.styleName: Montserrat
        font.bold: true
        color: "#000000"

    }
}

Rectangle{
    id: upMiddleWrapper
    width: recoveryPassPg.width
    height: 100
    anchors.top: upperWrapper.bottom
    anchors.topMargin: 10
    anchors.horizontalCenter: recoveryPassPg.horizontalCenter
    color: "#C5C7C6"

    Rectangle{
            //Внешний вид поля TextInput
            id: inpNumbRec
            implicitWidth: recoveryPassPg.width*0.9
            anchors.centerIn: parent
            height: 60
            color: "#ffffff"
            radius: 16
        TextInput
            {
                id: inputNumber
                color: "#000000"
                inputMask:  "+7 (000) 000 00 00"
                maximumLength: 15
                font.pointSize: 16
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
            }
        }
    Label{
        anchors.bottom: inpNumbRec.top
        anchors.bottomMargin: 10
        anchors.left: inpNumbRec.left
        color: "#000000"
        font.pointSize: 20
        text:"Введите номер телефона"
    }


}


    Rectangle{
    id: middleWrapper
    width: recoveryPassPg.width
    height: 100
    anchors.top: upMiddleWrapper.bottom
    anchors.horizontalCenter: recoveryPassPg.horizontalCenter
    color: "#C5C7C6"

    Label{
        id:inpNumLbl
        anchors.centerIn: parent
        text: "_ _ _ _"
        color: "#000000"
        font.pointSize: 32
    }

    TextInput{
        color: "#000000"
        inputMask: "0 0 0 0"
        anchors.centerIn: parent
        font.pointSize: 28
    }


    }

Button{
    implicitWidth: recoveryPassPg.width*0.9
    anchors.top: middleWrapper.bottom
    anchors.horizontalCenter: middleWrapper.horizontalCenter
    height: 60

    background:  Rectangle{
            anchors.centerIn: parent
            anchors.fill: parent
            color: "#29303C"
            radius: 16
            Text {
                text: "Восстановить доступ"
                anchors.centerIn: parent
                color: "#ffffff"
                font.pointSize: 20
                }
    }
}

}

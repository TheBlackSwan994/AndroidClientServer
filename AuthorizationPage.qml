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
        color: "#f3f4f6"
        Image {

            anchors.centerIn: parent
            id: mainImg
            source: "qrc:/qt/qml/Authorization1Mar/clearLogo.png"
        }

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
            implicitWidth: parent *0.9
            height: 60
            color: "#ffffff"
            radius: 16
            clip: true
        TextInput
            {
                id: inputNumber
                color: "#000000"
                inputMask:  "+7 (000) 000 00 00"
                maximumLength: 15
                font.pointSize: 20
                anchors.centerIn: parent
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent
                anchors.leftMargin: 10
                inputMethodHints: Qt.ImhFormattedNumbersOnly
            }
        }


    Rectangle{
        //Внешний вид поля TextInput
        implicitWidth: parent *0.9
        height: 60
        color: "#f3f4f6"
        radius: 16
        clip: true

        Label{
            id:inpNumLbl
            anchors.centerIn: parent
            text: "_ _ _ _ _"
            color: "#000000"
            font.pointSize: 32

        }

        TextInput{
            color: "#000000"
            inputMask: "0 0 0 0 0"
            anchors.centerIn: parent
            font.pointSize: 28
            inputMethodHints: Qt.ImhFormattedNumbersOnly

        }
}

    Button{
    text: "Получить код"
    font.underline: true


    font.pointSize: 16
    background: Rectangle{
        color: "#f3f4f6"
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
           font.pointSize: 18
           color: "#ffffff"
           }
        implicitWidth: parent -10
        implicitHeight: 70
        color: "#29303C"
        radius: 16


       }


    }


    Button{
    id: regLb
    text: "Зарегистрироваться"
    font.underline: true

    onClicked: {pageReg()}
    font.pointSize: 16
    background: Rectangle{
        color: "#f3f4f6"
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

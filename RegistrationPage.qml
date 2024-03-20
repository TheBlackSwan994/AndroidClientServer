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




            Rectangle{
                    implicitWidth: parent
                    height: 60
                    color: "#f3f4f6"
        Button{
        Layout.alignment: Qt.AlignLeft
        onClicked: {backPg()}
        font.pointSize: 24

        text: StackView.depth ? "\u25C0":"\u2190"
        background: Rectangle{
        color: "#f3f4f6"
        }
    }


        Label{
        text: "Создать аккаунт"
        font.pointSize: 20
        font.family: Typography
        font.styleName: Montserrat
        font.bold: true
        color: "#000000"
        anchors.centerIn: parent

        }
                    }
        Label{
        text: "Имя"
        font.pointSize: 18
        color: "#000000"

        }


    Rectangle{
            //Внешний вид поля TextInput
            implicitWidth: registrationPg.width*0.9
            Layout.alignment: Qt.AlignCenter

            height: 60
            color: "#ffffff"
            radius: 16
        TextInput
            {
                id: name
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

    Label{
    text: "Фамилия"
    font.pointSize: 18
    color: "#000000"

    }


    Rectangle{
            //Внешний вид поля TextInput
            implicitWidth: registrationPg.width*0.9
            Layout.alignment: Qt.AlignCenter

            height: 60
            color: "#ffffff"
            radius: 16
        TextInput
            {
                id: inpSurn
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

    Label{
    text: "Придумайте ник"
    font.pointSize: 18
    color: "#000000"

    }

    //Inp Nickname
        Rectangle{
                //Внешний вид поля TextInput
                implicitWidth: registrationPg.width*0.9
                Layout.alignment: Qt.AlignCenter

                height: 60
                color: "#ffffff"
                radius: 16
            TextInput
                {
                    id: inpNickn
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


    Label{
    text: "Введите номер телефона"
    font.pointSize: 18
    color: "#000000"

    }


    Rectangle{
            id: backgrOfСountry
            //Внешний вид поля TextInput
            implicitWidth: parent *0.9
            height: 60
            radius: 4
            color: "#ffffff"
            clip: true

            ComboBox
            {

                editable: false

                id: inputСountry
                font.pointSize: 16
                height: parent.height * 1.2
                anchors.centerIn: parent
                implicitWidth: parent.width



                model: ListModel{
                id: inputСountryModel

                ListElement{text:  "Россия"}
                ListElement{text:  "Белоруссия"}

                }

                onCurrentIndexChanged: {
                    if(inputСountryModel.get(currentIndex).text == "Белоруссия"){inputNumber.inputMask = "+375 (000) 000 00 00"; inputNumber.text=""}
                    if(inputСountryModel.get(currentIndex).text == "Россия"){inputNumber.inputMask = "+7 (000) 000 00 00"; inputNumber.text="" }

                }

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
                id: inputNumberReg
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






    Button{
    id: regButton
    Layout.alignment: Qt.AlignCenter
    enabled: false
       background: Rectangle{
           Text{
               anchors.centerIn: parent
           text: "Зарегистрироваться"
           font.pointSize: 18
           color: "#ffffff"
           }
        implicitWidth: registrationPg.width*0.9
        implicitHeight: 60
        color: "#29303C"
        radius: 16



       }



    }
}
}

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
                    color: "#C5C7C6"
        Button{
        Layout.alignment: Qt.AlignLeft
        onClicked: {backPg()}
        font.pointSize: 24

        text: StackView.depth ? "\u25C0":"\u2190"
        background: Rectangle{
        color: "#C5C7C6"
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
            implicitWidth: registrationPg.width*0.8
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
            implicitWidth: registrationPg.width*0.8
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
                implicitWidth: registrationPg.width*0.8
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


    //InpNumber
        Rectangle{
                //Внешний вид поля TextInput
                implicitWidth: registrationPg.width*0.8
                Layout.alignment: Qt.AlignCenter

                height: 60
                color: "#ffffff"
                radius: 16
            TextInput
                {
                    id: inputNumber
                    color: "#000000"
                    inputMask:  "+7 (000) 000 00 00"
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
    text: "Придумайте пароль"
    font.pointSize: 18
    color: "#000000"

    }




    //InputPass
    Rectangle{
        //Внешний вид поля TextInput
        implicitWidth: registrationPg.width*0.8
        Layout.alignment: Qt.AlignCenter

        height: 60
        color: "#ffffff"
        radius: 16

    TextInput
        {
                id: inputPassword
                color: "#000000"
                echoMode: isVisiblePass.pressed? TextInput.Normal : TextInput.Password
                maximumLength: 25
                font.pointSize: 18
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
    font.pointSize: 18
    color: "#000000"

    }

//RepeatPass
    Rectangle{

        id: repeatPass
        //Внешний вид поля TextInput
        implicitWidth: registrationPg.width*0.8
        Layout.alignment: Qt.AlignCenter

        height: 60
        color: "#ffffff"
        radius: 16

    TextInput
        {
                id: inputPasswordRep
                color: "#000000"
                echoMode: isVisiblePassRep.pressed? TextInput.Normal : TextInput.Password
                maximumLength: 25
                font.pointSize: 18
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
        implicitWidth: registrationPg.width*0.8
        implicitHeight: 60
        color: "#29303C"
        radius: 16



       }



    }
}
}

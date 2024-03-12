import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

    ApplicationWindow {
        visible: true
        minimumWidth: 375
        minimumHeight: 667
        color: "#FFFAFA"


    StackView{
        id: stack_main
        anchors.fill: parent
        initialItem: authorizationPg

    }




    AuthorizationPage {
        id: authorizationPg
        background: color = "#DCDCDC"
        onPageReg: {stack_main.push(registrationPg)}
        onPageRec: {stack_main.push(recoveryPassPg)}
        onPageChats: {stack_main.push(chatsViPg)}

    }

    RegistrationPage {
        id: registrationPg
        background: color = "#DCDCDC"
        visible: false
        onBackPg: {stack_main.pop()}

    }

    RecoveryPassPage {
        id: recoveryPassPg
        background: color = "#DCDCDC"
        visible: false
        onBackPg: {stack_main.pop()}

    }

        ChatsView {
        id:  chatsViPg
        visible: false
        background: color = "#DCDCDC"
        onBackPg: {stack_main.pop()}

                }



        UsersChatPg {
        id: userChat1

        }


    }

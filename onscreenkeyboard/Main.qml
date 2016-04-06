import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "osk.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    anchorToKeyboard: true

    Page {
        title: i18n.tr("onscreenkeyboard")

        Flickable {
            id: sampleFlickable

            clip: true
            contentHeight: mainColumn.height + units.gu(5)
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right
                bottom: createButton.top
                bottomMargin: units.gu(2)
            }

            Column {
                id: mainColumn

                spacing: units.gu(2)

                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                    margins: units.gu(2)
                }

                TextField {
                    id: username
                    width: parent.width
                    placeholderText: "username"
                }

                TextField {
                    id: password
                    width: parent.width
                    placeholderText: "password"
                }

                TextField {
                    id: email
                    width: parent.width
                    placeholderText: "email"
                }
            }
        }

        Button {
            id: createButton
            text: "Create Account"
            anchors {
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                margins: units.gu(2)
            }
            onClicked: {
                console.log("it is clicked")
            }
        }
    }
}


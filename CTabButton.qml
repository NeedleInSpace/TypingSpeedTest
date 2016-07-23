import QtQuick 2.7
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.0

TabButton {

    id: control
    font.capitalization: Font.MixedCase
    font.pixelSize: checked ? 14 : 12
    height: parent.height

    contentItem: Item {
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.topMargin: 8

        Text {
            id: t
            text: control.text
            font: control.font
            color: !control.enabled ? control.Material.hintTextColor
                                    : control.down || control.checked
                                      ? control.Material.primaryColor
                                      : control.Material.hintTextColor
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            bottomPadding: 6

        }
        // Random icon for a concept view
        Image {

            source: "qrc:/icons/ic_add_alert_24px.svg"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: t.top
            opacity: control.checked ? 1 : 0.38
            layer.enabled: true
            layer.effect: ColorOverlay { color: Material.primaryColor}
        }

    }



    Behavior on font.pixelSize {
        NumberAnimation { duration: 40 }
    }

}

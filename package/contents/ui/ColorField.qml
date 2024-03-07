import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

RowLayout {
    id: colorfield
    property alias text: label.text
    property alias color: rect.color
    
    Label {
        id: label
    }
    Button {
        id: button
        padding: 5
        contentItem: Rectangle {
            id: rect
        }
        onClicked: {
            dialog.open()
        }
    }
    ColorDialog {
        id: dialog
        title: "Select a color"
        onAccepted: {
            colorfield.color = dialog.color
        }
    }
}

import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Tab 1"
        dismissAction: ActionItem {
            title: "Cancel"
        }
        acceptAction: ActionItem {
            title: "Save"
            onTriggered: {
            }
        }
    }
    Container {
        Cell {
        }
    }
}

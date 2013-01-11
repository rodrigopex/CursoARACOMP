// Default empty project template
import bb.cascades 1.0

// creates one page with a label

//issue@supportbb10.zendesk.com

TabbedPane {
    //showTabsOnActionBar: true
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
        }
        settingsAction: SettingsActionItem {
            onTriggered: {
                settings.open()
            }
        }
        attachedObjects: [
            Sheet {
                id: settings
                Page {
                    titleBar: TitleBar {
                        title: "Setting"
                        dismissAction: ActionItem {
                            title: "Close"
                            onTriggered: {
                                settings.close()
                            }
                        }
                    }
                    Container {
                        Label {
                            text: "Settings"
                        }
                    }
                }
            }
        ]
    }
    Tab {
        title: "Tab1"
        Tab1 {
        }
    }
    Tab {
        title: "Tab2"
        Tab2 {
        }
    }
    Tab {
        title: "Tab3"
        Tab3 {
        }
    }
    Tab {
        title: "Tab4"
        Tab4 {
        }
    }
}

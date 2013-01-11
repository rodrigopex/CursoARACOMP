import bb.cascades 1.0

Page {
    Container {
        ListView {
            id: list
            dataModel: XmlDataModel {
                source: "models/palette.xml"
            }
            snapMode: SnapMode.LeadingEdge
            listItemComponents: [
                ListItemComponent {
                    type: "category"
                    Header {
                        title: ListItemData.title
                    }
                },
                ListItemComponent {
                    type: "color"
                    Container {
                        layout: DockLayout {
                        }
                        ListItem.onActivationChanged: {
                            if (active) {
                                
                                //getBig.play()
                            } else {
                                //getSmall.play()
                            }
                        }
                        background: Color.create(ListItemData.hexColor)
                        animations: [
                            ScaleTransition {
                                id: getBig
                                fromY: 1.0
                                toY: 2.0
                                easingCurve: StockCurve.BounceOut
                                duration: 300
                                onEnded: {
                                    cell.preferredHeight = 240
                                }
                            },
                            ScaleTransition {
                                id: getSmall
                                fromY: 2.0
                                toY: 1.0
                                easingCurve: StockCurve.BounceOut
                                duration: 300
                                onEnded: {
                                    cell.preferredHeight = 120
                                }
                            }
                        ]
                        Container {
                            id: cell
                            preferredHeight: 120
                            leftPadding: 10
                            topPadding: 10
                            horizontalAlignment: HorizontalAlignment.Fill
                            layout: DockLayout {
                            }
                            Label {
                                text: ListItemData.title
                                //horizontalAlignment: HorizontalAlignment.Right
                                textStyle {
                                    base: SystemDefaults.TextStyles.PrimaryText
                                    color: Color.create(ListItemData.titleColor)
                                }
                            }
                        }
                        Divider {
                        }
                    }
                }
            ]
        }
    }
}

import bb.cascades 1.0

Container {
    horizontalAlignment: HorizontalAlignment.Fill
    leftPadding: 15
    rightPadding: 15
    topPadding: 15
    bottomPadding: 15
    layout: DockLayout {
    }
    Label {
        id: lcount
        property int count: 0
        layoutProperties: AbsoluteLayoutProperties {
            positionX: 200
            positionY: 300
        }
        text: qsTr("Hello" + " " + count)
        textStyle {
            base: st2.style
        }
        horizontalAlignment: HorizontalAlignment.Left
        attachedObjects: [
            TextStyleDefinition {
                id: st2
                base: SystemDefaults.TextStyles.BigText
            }
        ]
    }
    Button {
        text: "Clicked"
        horizontalAlignment: HorizontalAlignment.Right
        onClicked: {
            lcount.count ++
        }
    }
}

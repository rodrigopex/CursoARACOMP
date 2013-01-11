import bb.cascades 1.0

NavigationPane {
    id: nav
    Page {
        Container {
            leftPadding: 15
            rightPadding: 15
            topPadding: 15
            Label {
                text: "Idade"
            }
            TextField {
                id: idade
                hintText: "20"
            }
            ActivityIndicator {
                running: true
                preferredHeight: 190
//                preferredWidth: 100
            }
            Button {
                text: "Confirmar"
                horizontalAlignment: HorizontalAlignment.Right
                onClicked: {
                    var newPage = messagePageFactory.createObject()
                    newPage.age = Number(idade.text)
                    nav.push(newPage)
                }
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: messagePageFactory
            Page {
                property int age: 0
                onAgeChanged: {
                    if (age >= 18) {
                        message.text = "Você é de maior!"
                    } else {
                        message.text = "Você é menor de idade!"
                    }
                }
                Container {
                    Label {
                        id: message
                    }
                }
            }
        }
    ]
}

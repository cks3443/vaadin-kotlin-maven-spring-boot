package org.wajtr.experiments.vaadinkotlin

import com.vaadin.flow.component.Key
import com.vaadin.flow.component.button.Button
import com.vaadin.flow.component.notification.Notification
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.HorizontalLayout
import com.vaadin.flow.component.textfield.TextField
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.router.Route

@PageTitle("Hello World")
@Route(value = "")
class HelloWorldView : HorizontalLayout() {
    private val name = TextField("Your name")
    private val sayHello = Button("Say hello")

    init {
        sayHello.addClickListener {
            Notification.show("Hello " + name.value)
        }
        sayHello.addClickShortcut(Key.ENTER)

        isMargin = true
        setVerticalComponentAlignment(FlexComponent.Alignment.END, name, sayHello)

        add(name, sayHello)
    }
}
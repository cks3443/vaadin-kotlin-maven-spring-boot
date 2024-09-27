package org.wajtr.experiments.vaadinkotlin

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
open class ApplicationMain

fun main(args: Array<String>) {
    SpringApplication.run(ApplicationMain::class.java, *args)
}
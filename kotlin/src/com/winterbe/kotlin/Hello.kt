package com.winterbe.kotlin

data class Customer(val name: String, val email: String)

fun main(args: Array<String>) {
    println("Hello Kotlin")

    val customer = Customer("John Smith", "john@smith.com")
    println(customer)

    fun sum(a: Int, b: Int): Int {
        return a + b;
    }

    println("3 + 5 = ${sum(3, 5)}")

    fun max(a: Int, b: Int) = if (a > b) b else a

    println(max(3, 5))

}
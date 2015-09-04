import Customer
import java.util.ArrayList

data class Customer(val name: String, val email: String)

fun main(args: Array<String>) {
    println("Hello Kotlin")

    val customer = Customer("John Smith", "john@smith.com")
    println(customer)

    val (name, email) = customer;
    println("${name}: ${email}")


    fun sum(a: Int, b: Int): Int {
        return a + b;
    }

    println("3 + 5 = ${sum(3, 5)}")

    fun max(a: Int, b: Int) = if (a > b) a else b

    println("max: ${max(3, 5)}")


    val list = ArrayList<String>();
    list.add("f1")
    list.add("f2")
    list.add("f3")
    list.add("h1")

    list filter { it.startsWith("f") } map { it.substring(1) } forEach { println(it) }

    val peter = Person(firstName = "Peter", lastName = "Parker")
    peter.age = 23

    println(peter.fullName())
    println(peter.age)
    println(peter.nothing().isNullOrBlank())
    println(peter.something().isNullOrBlank())
}
public class Person(override val firstName: String,
                    override val lastName: String,
                    var age:Int = 18) : Nameable {

    init {
        println("new person initialized: ${firstName} ${lastName}")
    }

    fun nothing(): String? {
        return null
    }

    fun something(): String {
        return "something"
    }
}
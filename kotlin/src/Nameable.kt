public interface Nameable {

    val firstName:String
    val lastName:String

    fun fullName():String {
        return firstName + " " + lastName
    }

}

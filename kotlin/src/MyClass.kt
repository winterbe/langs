class MyClass {
    fun getPoint(): Any {
        val point = object {
            val x = 1
            val y = 2
        }
        return point
    }
}
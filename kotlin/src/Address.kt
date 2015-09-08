/**
 *
 * @author Benjamin Winterberg
 */
public data class Address(var city:String = "", var state:String = "", var street:String = "") {

    public val label:String
        get() = "$city, $street, $state"

    override fun toString(): String {
        return label
    }
}
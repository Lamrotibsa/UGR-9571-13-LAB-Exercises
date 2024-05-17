class ShoppingCart {

    private val items = mutableListOf<Item>()

    data class Item(val name: String, val price: Double, val quantity: Int)

    fun addItem(name: String, price: Double, quantity: Int) {
        items.add(Item(name, price, quantity))
    }

    fun removeItem(name: String) {
        items.removeAll { it.name == name }
    }

    fun totalPrice(): Double {
        return items.sumOf { it.price * it.quantity }
    }

    fun showItems() {
        for (item in items) {
            println("Item: ${item.name}, Price: ${item.price}, Quantity: ${item.quantity}")
        }
    }
}

fun main() {
    val cart = ShoppingCart()
    cart.addItem("Apple", 0.5, 10)
    cart.addItem("Banana", 0.3, 5)
    cart.showItems()
    println("Total Price: ${cart.totalPrice()}")
    cart.removeItem("Banana")
    cart.showItems()
    println("Total Price: ${cart.totalPrice()}")
}

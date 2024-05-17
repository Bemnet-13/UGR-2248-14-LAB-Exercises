data class Item(val name: String, val price: Double, val quantity: Int = 1)

class ShoppingCart {
    private val items = mutableListOf<Item>()
    
    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(itemName: String) {
        items.removeAll { it.name == itemName }
    }

    fun calculateTotalPrice(): Double {
        return items.sumOf { it.price * it.quantity }
    }

    fun getItems(): List<Item> {
        return items.toList() 
    }
}

fun main() {
    val cart = ShoppingCart()

    cart.addItem(Item("Apple", 0.99, 3))
    cart.addItem(Item("Banana", 0.59, 5))
    cart.addItem(Item("Orange", 1.29, 2))

    println("Items in the cart: ${cart.getItems()}")

    val totalPrice = cart.calculateTotalPrice()
    println("Total price: $totalPrice")

    cart.removeItem("Banana")

    println("Items in the cart after removal: ${cart.getItems()}")

    val newTotalPrice = cart.calculateTotalPrice()
    println("Total price after removal: $newTotalPrice")
}

void main() {
  Map<String, int> cart = {};
  Map<String, double> products = {
    'Apple': 1.50,
    'Banana': 0.75,
    'Orange': 1.00,
    'Grapes': 2.00,
  };

 
  void addItem(String itemName, int quantity) {
    if (products.containsKey(itemName)) {
      cart[itemName] = (cart[itemName] ?? 0) + quantity;
      print('$quantity ${itemName}(s) added to the cart');
    } else {
      print('Sorry, $itemName is not available in the store.');
    }
  }

 
  void removeItem(String itemName, int quantity) {
    if (cart.containsKey(itemName)) {
      if (cart[itemName]! >= quantity) {
        cart[itemName] = cart[itemName]! - quantity;
        if (cart[itemName]! == 0) {
          cart.remove(itemName);
        }
        print('$quantity ${itemName}(s) removed from the cart');
      } else {
        print('You cannot remove more $itemName(s) than you have in the cart.');
      }
    } else {
      print('You do not have $itemName in the cart.');
    }
  }

 
  double calculateTotalPrice() {
    double totalPrice = 0.0;
    cart.forEach((itemName, quantity) {
      totalPrice += quantity * products[itemName]!;
    });
    return totalPrice;
  }


  addItem('Apple', 2);
  addItem('Banana', 3);
  addItem('Orange', 1);


  removeItem('Banana', 1);

 
  double totalPrice = calculateTotalPrice();
  print('\nTotal price: \$${totalPrice.toStringAsFixed(2)}');
}

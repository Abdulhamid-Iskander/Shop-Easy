import '../models/product.dart';

class MockDatabase {
  /// Static mock products used to simulate a real database.
  /// These products are mainly for UI preview and testing purposes.
  static final List<Product> _fixedProducts = [
    Product(id: "1", name: "Nike Air Jordan", price: "\$120", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/2/29/Air_Jordan_1_High_85_Neutral_Grey.jpg"),
    Product(id: "2", name: "Apple Watch Series 7", price: "\$399", imageUrl: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/watch-s9-alum-midnight-nc-se-midnight-202309"),
    Product(id: "3", name: "Sony Headphones", price: "\$80", imageUrl: "https://m.media-amazon.com/images/I/41JACWT-wRL._AC_.jpg"),
    Product(id: "4", name: "Samsung Galaxy S23", price: "\$899", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/8/8e/Samsung_Galaxy_S23.png"),
    Product(id: "5", name: "MacBook Pro M2", price: "\$1999", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3e/MacBook_Pro_14_inch.png"),
    Product(id: "6", name: "Dell XPS 13", price: "\$1299", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/4/4e/Dell_XPS_13.jpg"),
    Product(id: "7", name: "HP Spectre x360", price: "\$1399", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/f/f2/HP_Spectre_x360.jpg"),
    Product(id: "8", name: "Logitech MX Master 3", price: "\$99", imageUrl: "https://m.media-amazon.com/images/I/61ni3t1ryQL._AC_SL1500_.jpg"),
    Product(id: "9", name: "Mechanical Keyboard", price: "\$150", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Mechanical_keyboard.jpg"),
    Product(id: "10", name: "PlayStation 5", price: "\$499", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/7/77/PlayStation_5.png"),

    Product(id: "11", name: "Xbox Series X", price: "\$499", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/1/16/Xbox_Series_X_2.jpg"),
    Product(id: "12", name: "Nintendo Switch", price: "\$299", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/38/Nintendo_Switch.png"),
    Product(id: "13", name: "AirPods Pro", price: "\$249", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/8/8d/AirPods_Pro.png"),
    Product(id: "14", name: "JBL Bluetooth Speaker", price: "\$110", imageUrl: "https://m.media-amazon.com/images/I/71XbBq0bV7L._AC_SL1500_.jpg"),
    Product(id: "15", name: "Canon EOS 90D", price: "\$1199", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Canon_EOS_90D.jpg"),
    Product(id: "16", name: "Nikon D7500", price: "\$999", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/4/42/Nikon_D7500.jpg"),
    Product(id: "17", name: "GoPro Hero 11", price: "\$399", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/4/4c/GoPro_Hero11.jpg"),
    Product(id: "18", name: "iPad Pro 12.9", price: "\$1099", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/4/45/IPad_Pro_12.9.jpg"),
    Product(id: "19", name: "Samsung Galaxy Tab S9", price: "\$899", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/a/a5/Samsung_Galaxy_Tab.jpg"),
    Product(id: "20", name: "Amazon Kindle Paperwhite", price: "\$149", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/2/23/Kindle_Paperwhite.jpg"),

    Product(id: "21", name: "Smart LED TV 55\"", price: "\$699", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/b/b8/LED_TV.jpg"),
    Product(id: "22", name: "LG OLED TV", price: "\$1499", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/1/15/OLED_TV.jpg"),
    Product(id: "23", name: "Apple TV 4K", price: "\$179", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/f/f3/Apple_TV_4K.jpg"),
    Product(id: "24", name: "Razer Gaming Mouse", price: "\$79", imageUrl: "https://m.media-amazon.com/images/I/61mpMH5TzkL._AC_SL1500_.jpg"),
    Product(id: "25", name: "Gaming Chair", price: "\$249", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Gaming_chair.jpg"),

    // ----------- Extra filler items (up to 80) -----------
    for (int i = 26; i <= 80; i++)
      Product(
        id: "$i",
        name: "Tech Product #$i",
        price: "\$${50 + i}",
        imageUrl: "https://via.placeholder.com/300",
      ),
  ];

  /// Returns a product by its ID.
  ///
  /// If the product exists in the mock list, it will be returned.
  /// Otherwise, a fallback product will be generated dynamically
  /// to prevent UI crashes and keep the screen populated.
  static Product getProductById(String id) {
    try {
      return _fixedProducts.firstWhere((p) => p.id == id);
    } catch (_) {
      return Product(
        id: id,
        name: "Trendy Item #$id",
        price: "\$${(int.tryParse(id) ?? 50) + 20}",
        imageUrl: "https://via.placeholder.com/300",
      );
    }
  }
}

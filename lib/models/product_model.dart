/// Represents a product item displayed in shop, cart, and wishlist screens.
class ProductModel {
  const ProductModel({
    required this.id,
    required this.title,
    required this.brand,
    required this.price,
    required this.imageUrl,
    this.discountPercent,
    this.isFeatured = false,
  });

  final String id;
  final String title;
  final String brand;
  final double price;
  final String imageUrl;
  final int? discountPercent;
  final bool isFeatured;

  /// Sale price after applying [discountPercent], if any.
  double get salePrice {
    if (discountPercent == null || discountPercent! <= 0) return price;
    return price - (price * discountPercent! / 100);
  }
}

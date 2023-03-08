class DailyOffersList {
  final String offerName;
  final String offerImage;

  DailyOffersList({
    required this.offerName,
    required this.offerImage,
  });

  static final List<DailyOffersList> offers = [
    DailyOffersList(
      offerName: 'Delivery Fee',
      offerImage: '',
    ),
    DailyOffersList(
      offerName: 'Free Delivery',
      offerImage: '',
    ),
    DailyOffersList(
      offerName: 'Trendy Restaurants',
      offerImage: '',
    ),
    DailyOffersList(
      offerName: 'Coffee',
      offerImage: '',
    ),
    DailyOffersList(
      offerName: 'Sweets',
      offerImage: '',
    ),
    DailyOffersList(
      offerName: 'Make A Difference',
      offerImage: '',
    ),
  ];
}

class StartOrderList {
  final String startOrderTitle;
  final String startOrderImage;

  StartOrderList({required this.startOrderTitle, required this.startOrderImage});
  static final List<StartOrderList> order = [
    StartOrderList(
      startOrderTitle: 'Restaurants',
      startOrderImage:
          'https://hungerstation.com/_next/image?url=https%3A%2F%2Fhsaa.hsobjects.com%2Fh%2Fmenuitems%2Fimages%2F018%2F758%2F124%2F560588b87ff9535a107a9c0a3eaf6558-size1200.png&w=256&q=75',
    ),
    StartOrderList(
      startOrderTitle: 'QuickMarket',
      startOrderImage:
          'https://hungerstation.com/_next/image?url=https%3A%2F%2Fhsaa.hsobjects.com%2Fh%2Frestaurants%2Fandroid_cover_photos%2F000%2F014%2F013%2F9f2af68bd621a9df33f06a643e4293d2-original.png&w=1440&q=75',
    ),
    StartOrderList(
      startOrderTitle: 'Shops',
      startOrderImage:
          'https://hungerstation.com/_next/image?url=https%3A%2F%2Fhsaa.hsobjects.com%2Fh%2Frestaurants%2Fandroid_cover_photos%2F000%2F040%2F806%2F3002970e7716c379b7d494398de78797-original.jpg&w=1440&q=75',
    ),
  ];
}

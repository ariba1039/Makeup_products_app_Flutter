class Data {
  late String productName;
  late String productImage;

  late String productInfo;

  Data({
    required this.productName,
    required this.productImage,
    required this.productInfo,
  });
}

List<Data> datalist = [
  Data(
    productName: "Face mask",
    productImage:
        " https://img.freepik.com/free-photo/front-view-young-beautiful-female-pink-bathrobe-holding-spray-little-green-plant_140725-17142.jpg?w=900&t=st=1679123105~exp=1679123705~hmac=7a7628d998a7bc1c91f7de1934db4e976878d1511f980001be353b501109b55f  ",
    productInfo:
        "Derma Shine Vitamin-C Face Mask is enriched with Vitamin C, the formula helps skin to appear oil free. Vitamin-C Mask is a dedicated formula that not only helps combat imperfections, but also a complete solution for dull, tired and grumpy skin.",
  ),
  Data(
      productName: "Mascaras",
      productImage:
          " https://img.freepik.com/free-photo/black-mascara-eyes_144627-21338.jpg?w=360&t=st=1679123364~exp=1679123964~hmac=c605857b25ac921a0bdf188443bf41d55de8fa313e18617a5a2550d18e51e18e",
      productInfo:
          "  Mascaras are pigmented preparations for application to the eyelashes to make them look darker and longer and to make the whites of the eyes look brighter by contrast."),
  Data(
      productName: "Nail Polish",
      productImage:
          "  https://img.freepik.com/free-photo/brushes-nail-polishes_23-2147778932.jpg?w=900&t=st=1679122694~exp=1679123294~hmac=93fdf0dbf23ea8112ba13ad5c3251ca432488103ecaafcb19e98998ec05eefd6  ",
      productInfo:
          "Nail polish (also known as nail varnish or nail enamel) is a lacquer that can be applied to the human fingernail or toenails to decorate and protect the nail plates. The formula has been revised repeatedly to enhance its decorative properties and to suppress cracking or peeling."),
  Data(
    productName: "Lipstick",
    productImage:
        "https://img.freepik.com/free-vector/lips-lipstick-realistic-set-with-bright-red-color-isolated-vector-illustration_1284-16248.jpg?w=740&t=st=1679122778~exp=1679123378~hmac=e43bfb602b242eca594173398d46716470f7f84442a99e3583e6d613b4f0735f",
    productInfo:
        "Lipstick is a cosmetic product used to apply coloration and texture to lips, often made of wax and oil. Different pigments are used to produce color, and minerals such as silica may be used to provide texture.",
  ),
];

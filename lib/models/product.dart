class Product {
  final int id;
  final double price;
  final String title, subTitle, image, description;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

List<Product> products = [
  Product(
      id: 1,
      price: 59.99,
      title: "سماعات لاسلكيه",
      subTitle: "جوده صوت عاليه",
      description:
      ' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',
      image: "images/airpod.png"),
  Product(
      id: 2,
      price: 1099.99,
      title: 'جهاز موبايل ',
      subTitle: "واصبح للموبايل قوة",
      description:
' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',
      image: "images/mobile.png"),
  Product(
    id: 3,
    price: 39.00,
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    image: "images/class.png",
    description:
' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',  ),
  Product(
    id: 4,
    price: 56.00,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',  ),
  Product(
    id: 5,
    price: 68.00,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description:
' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',  ),
  Product(
    id: 6,
    price: 39.00,
    title: "كاميرات كمبيوتر",
    subTitle: "بجودة ودقة صورة عالية",
    image: "images/camera.png",
    description:
' هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  هنا وصف للمنتج  ',  ),
];

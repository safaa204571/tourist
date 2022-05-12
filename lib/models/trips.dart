class trips {
  late final int id;
  late final String title,  price,image,address;

  trips({required this.id, required this.price, required this.title,required this.image, required  this.address});
}
// ignore: non_constant_identifier_names
List<trips> MyData = [
  trips(
    id: 1,
    price: '500',
    title: "pyramids",
    address: " giza",
    image: "assets/images/Pyramids.jpg",

  ),
  trips(
    id: 2,
    price: '600',
    title: "Stanly Bridge",
    address: "Cairo ",
    image: "assets/images/SB.jpg",

  ),
  trips(
    id: 3,
    price: '800',
    title: "Temple",
    address: "Aswan",
    image: "assets/images/temp.jpg",

  ),
  trips(
    id: 4,
    price: '1000',
    title: "KhanElKhalily",
    address: " Cairo",
    image: "assets/images/cairo.jpg",

  ),
  trips(
    id: 5,
    price: '900',
    title: "Qlaa qaitbay",
    address: " cairo",
    image: "assets/images/qlaa.jpg",

  ),trips(
    id: 6,
    price: '500',
    title: "Temple",
    address: "luxor ",
    image: "assets/images/lux.jpeg",

  ),



];
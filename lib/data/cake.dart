// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });

  final List<Cake> listCakes = [
    Cake(
        id: 1,
        name: 'Banan Cake',
        price: '79.000',
        imageUrl: 'assets/box1.jpeg',
        isFavorite: true,
        subMenu: 'cake_box'),
    Cake(
        id: 2,
        name: 'Bolu Gula Aren',
        price: '94.000',
        imageUrl: 'assets/box2.jpeg',
        isFavorite: false,
        subMenu: 'cake_box'),
    Cake(
        id: 3,
        name: 'Coffe Cake Puding',
        price: '99.000',
        imageUrl: 'assets/box3.jpeg',
        isFavorite: false,
        subMenu: 'cake_box'),
    Cake(
        id: 4,
        name: 'Puding Cake Tiramisu',
        price: '99.000',
        imageUrl: 'assets/box4.jpeg',
        isFavorite: false,
        subMenu: 'cake_box'),
    Cake(
        id: 5,
        name: 'Brownies Keju',
        price: '104.000',
        imageUrl: 'assets/box5.jpeg',
        isFavorite: false,
        subMenu: 'cake_box'),
  ];
}

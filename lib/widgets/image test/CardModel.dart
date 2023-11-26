class CardModel{
  final String image,title,date;
  final double price;
  CardModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price
  });
static List<CardModel> listcard=[
  CardModel(
    image: 'images/Facebook-logo.png',
     title: 'facebook', 
     date: '18-03-2022', 
     price: 342.2
     ),
     CardModel(
    image: 'images/instagram.png',
     title: 'instagram', 
     date:  'o8-03-2022', 
     price: 300.2
     ),
     CardModel(
    image: 'images/Facebook-logo.png',
     title: 'facebook', 
     date: '18-03-2022', 
     price: 342.2
     ),
     CardModel(
    image: 'images/Facebook-logo.png',
     title: 'facebook', 
     date: '18-03-2022', 
     price: 342.2
     ),
     CardModel(
    image: 'images/instagram.png',
     title: 'instagram', 
     date:  'o8-03-2022', 
     price: 300.2
     ),
     CardModel(
    image: 'images/Facebook-logo.png',
     title: 'facebook', 
     date: '18-03-2022', 
     price: 342.2
     )
];
 }
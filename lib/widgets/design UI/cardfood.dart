class cardfood {
  final String image,title,imagename,name;
  cardfood(
    {
      required this.image,
      required this.title,
      required this.imagename,
      required this.name,
    }
  );
  static List<cardfood> listcardfood=[
    cardfood(
      image: 'images/Fried chicken Rice.jpg', 
      title: 'Fried chicken Rice', 
      imagename: 'images/Fried chicken Rice.jpg',
       name: 'chann soriya'),
        cardfood(
      image: 'images/Steamed rice with Pork..jpg', 
      title: 'Steamed rice with Pork', 
      imagename: 'images/Fried chicken Rice.jpg',
       name: 'chann soriya'),
        cardfood(
      image: 'images/Steamed pork.jpg', 
      title: 'Steamed pork', 
      imagename: 'imgaes/Fried chicken Rice.jpg',
       name: 'chann soriya'),
        cardfood(
      image: 'images/Fried chicken Rice.jpg', 
      title: 'Fried chicken Rice', 
      imagename: 'imgaes/Fried chicken Rice.jpg',
       name: 'chann soriya')
  ];
}
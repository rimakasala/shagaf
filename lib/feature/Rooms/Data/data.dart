

class Data {
  String image;
  String title;
  String date;
  String time;
  String price;
  
  Data({required this.image,required this.title,required this.date, required this.time,required this.price});

}

var data =[
  Data(image: 'images/Advertisement_image.jpeg',
      title:'Ceramics workshop',
      date: 'Friday 28 July',
      time: '01:00 pm to 04:00 pm',
      price: '350 LE'),
  Data(image: 'images/Advertisement_image.jpeg',
      title:'Ceramics workshop',
      date: 'Friday 28 July',
      time: '01:00 pm to 04:00 pm',
      price: '350 LE'),
  Data(image: 'images/Advertisement_image.jpeg',
      title:'Ceramics workshop',
      date: 'Friday 28 July',
      time: '01:00 pm to 04:00 pm',
      price: '350 LE'),
  Data(image: 'images/Advertisement_image.jpeg',
      title:'Ceramics workshop',
      date: 'Friday 28 July',
      time: '01:00 pm to 04:00 pm',
      price: '350 LE'),
  Data(image: 'images/Advertisement_image.jpeg',
      title:'Ceramics workshop',
      date: 'Friday 28 July',
      time: '01:00 pm to 04:00 pm',
      price: '350 LE')
];

class Rooms{
  final image ;
  final title;
  Rooms ({required this.image,required this.title});
}
var rooms=[
  Rooms(image: 'images/rooms1.jpeg', title: 'Training room'),
  Rooms(image: 'images/rooms2.jpeg', title: 'Funny room'),
  Rooms(image: 'images/rooms3.jpeg', title: 'Meeting room'),
  Rooms(image: 'images/rooms4.jpeg', title: 'Eating room'),
];
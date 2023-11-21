class Business {
  Business(
      {this.businessName = '',
      this.businessSpecialty = '',
      this.businessRating = '',
      this.businessHospital = '',
      this.businessNumberOfPatient = '',
      this.businessYearOfExperience = '',
      this.businessDescription = '',
      this.businessPicture = '',
      this.businessIsOpen = false});

  String businessName;
  String businessSpecialty;
  String businessRating;
  String businessHospital;
  String businessNumberOfPatient;
  String businessYearOfExperience;
  String businessDescription;
  String businessPicture;
  bool businessIsOpen;
}

var topBusinesss = [
  Business(
    businessName: 'Lounge Salon',
    businessSpecialty: 'Beauty',
    businessRating: '4.8',
    businessHospital: 'Bloemfontein',
    businessNumberOfPatient: '1221',
    businessYearOfExperience: '3',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you, Contact us today.',
    businessPicture: 'business10.jpg',
    businessIsOpen: true
  ),
  Business(
    businessName: 'Kairo Salon',
    businessSpecialty: 'Beauty',
    businessRating: '4.7',
    businessHospital: 'St Helena, Welkom',
    businessNumberOfPatient: '964',
    businessYearOfExperience: '4',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you, Contact us today.',
    businessPicture: 'business2.jpg',
    businessIsOpen: false
  ),
  Business(
    businessName: 'Lounge Coffee Bar',
    businessSpecialty: 'Restuarant',
    businessRating: '4.9',
    businessHospital: 'Dagbreek, Welkom',
    businessNumberOfPatient: '762',
    businessYearOfExperience: '5',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you,.',
    businessPicture: 'business8.jpg',
    businessIsOpen: true
  ),
  Business(
    businessName: 'Karabo Cafe',
    businessSpecialty: 'Restuarant',
    businessRating: '4.8',
    businessHospital: 'Bronville, Welkom',
    businessNumberOfPatient: '1451',
    businessYearOfExperience: '6',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss.It is available to help you, Contact us today.',
    businessPicture: 'business9.jpg',
    businessIsOpen: false
  ),
  Business(
    businessName: 'Coffee Shop',
    businessSpecialty: 'Restuarent',
    businessRating: '4.6',
    businessHospital: 'Sunrise, Welkom',
    businessNumberOfPatient: '551',
    businessYearOfExperience: '3',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss.It is available to help you, Contact us today.',
    businessPicture: 'business7.jpg',
    businessIsOpen: true
  ),
  Business(
    businessName: 'Beauty Salon',
    businessSpecialty: 'Beauty',
    businessRating: '4.7',
    businessHospital: 'Bronville, Welkom',
    businessNumberOfPatient: '888',
    businessYearOfExperience: '4',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss.It is available to help you, Contact us today.',
    businessPicture: 'business6.jpg',
    businessIsOpen: true
  ),
   Business(
    businessName: 'Prinsloo Clothing',
    businessSpecialty: 'Clothing',
    businessRating: '4.7',
    businessHospital: 'Goldfields Welkom',
    businessNumberOfPatient: '888',
    businessYearOfExperience: '4',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you, anytime.',
    businessPicture: 'business5.jpg',
    businessIsOpen: true
  ),
   Business(
    businessName: 'Dan Clothing',
    businessSpecialty: 'Clothing',
    businessRating: '4.7',
    businessHospital: 'Rocklands, Welkom',
    businessNumberOfPatient: '888',
    businessYearOfExperience: '4',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you, anytime and anywhere. Contact us today.',
    businessPicture: 'business4.jpg',
    businessIsOpen: true
  ),
  Business(
    businessName: 'Lindiwe Artwork',
    businessSpecialty: 'Art & Humanities',
    businessRating: '4.7',
    businessHospital: 'Dagbreek, Welkom',
    businessNumberOfPatient: '888',
    businessYearOfExperience: '4',
    businessDescription:
        'is one of the best Businesss in Welkom. The business has served more than 800 clients in the past 4 years. It has also received many awards from domestic and abroad as the best Businesss. It is available to help you, anytime and anywhere. Contact us today.',
    businessPicture: 'lindiwe.jpg',
    businessIsOpen: true
  ),
];

class BusinessMenu {
  String name;
  String image;

  BusinessMenu({this.name = '', this.image = ''});
}

var businessMenu = [
  BusinessMenu(name: 'Restaurent', image: 'img-consultation.png'),
  BusinessMenu(name: 'Dental', image: 'img-dental.png'),
  BusinessMenu(name: 'Automotive', image: 'img-heart.png'),
  BusinessMenu(name: 'Real Estate', image: 'img-hospital.png'),
  BusinessMenu(name: 'Travel', image: 'img-medicine.png'),
  BusinessMenu(name: 'Finance', image: 'img-physician.png'),
  BusinessMenu(name: 'Capentry', image: 'img-skin.png'),
  BusinessMenu(name: 'More', image: 'img-surgeon.png'),
  
];




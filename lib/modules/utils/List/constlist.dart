import 'package:flutter/material.dart';

List<Map<String, dynamic>> customerlist = [
  {
    "date": "31-01-2024",
    "name": "xyz",
    "checkin": "10:25 Am",
    "checkout": "8:12 Pm",
    "mobile": "1231231230",
  },
  {
    "date": "31-01-2024",
    "name": "xyz",
    "checkin": "8:25 Pm",
    "checkout": "10:12 Am",
    "mobile": "1231231230",
  },
  {
    "date": "31-01-2024",
    "name": "xyz",
    "checkin": "6:20 Am",
    "checkout": "11:49 Pm",
    "mobile": "1231231230",
  },
  {
    "date": "31-01-2024",
    "name": "xyz",
    "checkin": "5:25 Am",
    "checkout": "10:12 Pm",
    "mobile": "1231231230",
  },
  {
    "date": "30-01-2024",
    "name": "xyz",
    "checkin": "04:32 pm",
    "checkout": "10:10 Pm",
    "mobile": "1231231230",
  },
  {
    "date": "30-01-2024",
    "name": "abc",
    "checkin": "02:15 pm",
    "checkout": "11:10 Pm",
    "mobile": "1231231230",
  },
  {
    "date": "30-01-2024",
    "name": "abc",
    "checkin": "05:10 pm",
    "checkout": "10:40 Pm",
    "mobile": "1231231230",
  }
];

List<Map<String, dynamic>> stafflist = [
  {
    "name": "Raju shayamlal",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Das babu",
    "mobile": "1231231230",
    "Role": "Security Gard",
  },
  {
    "name": "Manisha chote ",
    "mobile": "1231231230",
    "Role": "Receptionist",
  },
  {
    "name": "Pp patel",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Ajit Rav",
    "mobile": "1231231230",
    "Role": "Manager",
  },
  {
    "name": "Sanju kashish",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Desy josef",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Jsvanti chor",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Suresh chor",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Bhumika Mangu",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
  {
    "name": "Jaydeep lukhi",
    "mobile": "1231231230",
    "Role": "Housekeeping",
  },
];

List<Map<String, dynamic>> vendorlist = [
  {
    "date": "31-03-2024",
    "name": "Ram Raju",
    "mobile": "1231231230",
    "shop": "Apex Cleaners",
  },
  {
    "date": "31-03-2024",
    "name": "Rastoji",
    "mobile": "1231231230",
    "shop": "Security Gard",
  },
  {
    "date": "31-03-2024",
    "name": "Pethalal",
    "mobile": "1231231230",
    "shop": "FF Pillows",
  },
  {
    "date": "31-03-2024",
    "name": "Bhuvan",
    "mobile": "1231231230",
    "shop": "AC station",
  },
  {
    "date": "31-03-2024",
    "name": "Manju",
    "mobile": "1231231230",
    "shop": "Mr.Furniture",
  },
  {
    "date": "31-03-2024",
    "name": "Faizzal",
    "mobile": "1231231230",
    "shop": "Water Supplier",
  },
];

List<Map<String, dynamic>> reportlist = [
  {
    "date": "10-jan-2024",
    "day": "Wednesday",
  },
  {
    "date": "09-jan-2024",
    "day": "Tuesday",
  },
  {
    "date": "08-jan-2024",
    "day": "Monday",
  },
  {
    "date": "07-jan-2024",
    "day": "Sunday",
  },
  {
    "date": "06-jan-2024",
    "day": "Saturday",
  },
  {
    "date": "05-jan-2024",
    "day": "Friday",
  },
  {
    "date": "04-jan-2024",
    "day": "Thursday",
  },
];

List<Map<String, dynamic>> first = [
  {
    "room": "Room 101",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
    "information": {
      "no": "101",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "28-01-2024",
      "To": "31-01-2024",
    }
  },
  {
    "room": "Room 102",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
    "information": {
      "no": "102",
      "floor": "First Floor",
      "type": "Single Room",
      "location": "City side",
      "amenities": "non-AC",
      "cname": "-",
      "ctype": "-",
      "From": "-",
      "To": "-",
    }
  },
  {
    "room": "Room 103",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
    "information": {
      "no": "103",
      "floor": "First Floor",
      "type": "Family Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "-",
      "ctype": "-",
      "From": "-",
      "To": "-",
    }
  },
  {
    "room": "Room 104",
    "color": Color(0xfffee191),
    "bcolor": Colors.amber,
    "information": {
      "no": "101",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "01-02-2024",
      "To": "29-02-2024",
    }
  },
  {
    "room": "Room 105",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
    "information": {
      "no": "105",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "28-01-2024",
      "To": "31-01-2024",
    }
  },
  {
    "room": "Room 106",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
    "information": {
      "no": "106",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "28-01-2024",
      "To": "31-01-2024",
    }
  },
  {
    "room": "Room 107",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
    "information": {
      "no": "107",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "28-01-2024",
      "To": "31-01-2024",
    }
  },
  {
    "room": "Room 108",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
    "information": {
      "no": "108",
      "floor": "First Floor",
      "type": "Couple Room",
      "location": "City side,Garden side",
      "amenities": "AC",
      "cname": "xyz",
      "ctype": "Offline",
      "From": "28-01-2024",
      "To": "31-01-2024",
    }
  }
];

List<Map<String, dynamic>> second = [
  {
    "room": "Room 201",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 202",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 203",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 204",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 205",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 206",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 207",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 208",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  }
];

List<Map<String, dynamic>> third = [
  {
    "room": "Room 301",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 302",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 303",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 304",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 305",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 306",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 307",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 308",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  }
];

List<Map<String, dynamic>> fourth = [
  {
    "room": "Room 401",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 402",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 403",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  },
  {
    "room": "Room 404",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 405",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 406",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 407",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 408",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  }
];

List<Map<String, dynamic>> fifth = [
  {
    "room": "Room 501",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 502",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 503",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 504",
    "color": Color(0xfffee191),
    "bcolor": Colors.amberAccent,
  },
  {
    "room": "Room 505",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 506",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 507",
    "color": Color(0xfff7aeae),
    "bcolor": Colors.red,
  },
  {
    "room": "Room 508",
    "color": Color(0xff8efab6),
    "bcolor": Colors.green,
  }
];

List<Map<String, dynamic>> notification0 = [
  {
    "name": "vibhav bhai",
    "book": "Book room nu.102 today",
  },
  {
    "name": "Mahesh bhai",
    "book": "Book room nu.404 today",
  },
  {
    "name": "Bob",
    "book": "Book room nu.403 today",
  },
  {
    "name": "vibhav bhai",
    "book": "Book room nu.402 today",
  },
  {
    "name": "Mahesh bhai",
    "book": "Book room nu.501 today",
  },
  {
    "name": "vibhav bhai",
    "book": "Book room nu.301 today",
  },
];

List<Map<String, dynamic>> notification1 = [
  {
    "name": "vibhav bhai",
    "book": "Book room nu.102 today",
  },
  {
    "name": "Mahesh bhai",
    "book": "Book room nu.404 today",
  },
  {
    "name": "Bob",
    "book": "Book room nu.403 today",
  },
  {
    "name": "vibhav bhai",
    "book": "Book room nu.402 today",
  },
];

List<Map<String, dynamic>> notification2 = [
  {
    "name": "vibhav bhai",
    "book": "Book room nu.102 today",
  },
  {
    "name": "Mahesh bhai",
    "book": "Book room nu.404 today",
  },
  {
    "name": "Bob",
    "book": "Book room nu.403 today",
  },
  {
    "name": "vibhav bhai",
    "book": "Book room nu.402 today",
  },
];

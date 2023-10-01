
import 'dart:convert';

import 'phone.dart';

import 'city.dart';

class Address {
final String street;
final int number;
final String zipCode;
final Phone phone;
final City city;

Address({
required this.street,
required this.number,
required this.zipCode,
required this.phone,
required this.city});

Map<String, dynamic> toMap(){
return {
'street': street,
'number': number,
'zipCode': zipCode,
'city': city.toMap(),
'phone': phone.toMap(),
};
}
String toJson() => jsonEncode(toMap);

factory Address.fromMap(Map<String, dynamic> map) {
return Address(street: map['street'] ?? '',
number: map['number'] ?? 0,
zipCode: map['zipCode'] ?? '',
city: City.fromMap(map['city'] ?? <String, dynamic>{}),
phone: Phone.fromMap(map['phone'] ?? <String, dynamic>{}));
}
factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));
}



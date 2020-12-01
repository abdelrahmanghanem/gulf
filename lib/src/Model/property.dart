class Property{
  String id ;
  String rowNum;
  String bedRoom;
  String bathRoom;
  String category;
  bool isFavourit;
  List propertyImages;
  Property();
  Property.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'].toString();
      rowNum = jsonMap['rowNum'].toString() ?? '0';
      bedRoom = jsonMap['bedRoom'].toString() ?? '0';
      bathRoom = jsonMap['bathRoom'].toString() ?? '0';
      category = jsonMap['category'].toString() ?? '';
      isFavourit = jsonMap['isFavourit'] ?? false;
      propertyImages = jsonMap['propertyImages']?? [];

    } catch (e) {
      id = '';
      rowNum = '0';
      bedRoom = '0';
      bathRoom = '0';
      category = '';
      isFavourit = false;
      propertyImages = [];

    }
  }
}

import 'package:gulftech/src/Model/property.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Stream<Property>> getProperties() async {

  final response = await http.post(
    'http://45.35.169.130/UGPRealEstate_Test/api/Property/SliderImagesProperty',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "appLanguage":"en",
      "deviceSerial":"DA3D4B85-2809-485D-A93B-3F0B582FBF72",
      "MeasureUnitId":1,
      "appversion":"",
      "notificationToken":"e9JCuaNS-0ZWgE7jwEr3-9:APA91bGw_QzWLtCEGUA7zFRJoiySzFra1i4IXMZBhDQaH1z3QuyInt726Wb7en4Xcbt7sj4HOSLPQITmvg2s7w6p_aTJtjOHS3kRT3jPz-HqpdvC7qLoqmduvJl2pU3kver_-l9QjSVG",
      "deviceType":1,
      "userId":1140,
      "data":{},
      "ip":"",
      "CurrencyId":1,
      "CountryId":65946,
      "osversion":""
    }),
  );
  if (response.statusCode == 200) {

    // try {
      // print(jsonDecode(response.body));
      // return response.stream
      //     .transform(utf8.decoder)
      //     .transform(json.decoder)
      //     .map((response) => getData(response))
      //     .expand((data) => (data as List)).map((data) {
      //
      //   return Property.fromJSON(data);
      // });
      getData(jsonDecode(response.body))
          .forEach((data)  {
            // print(data);
        final ss = Property.fromJSON(data);
            print(ss.id);

        return Stream.value(Property.fromJSON({}));
      });
    // } catch (e) {
    //   print(response.statusCode);
    //   return new Stream.value(new Property.fromJSON({}));
    // }
  }
}

getData(Map<String, dynamic> response) {
  return response['data'] ?? [];
}
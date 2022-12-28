import 'dart:convert';

import 'package:covid19app/services/utilities/appurl.dart';
import 'package:http/http.dart' as http;

import '../Model/worldstatesmodel.dart';


class StatesServices {

  Future<Worldstatesmodel>  fetchworldstatesrecords () async{

    final response = await http.get(Uri.parse(appurl.worldStatesApi));

  if(response.statusCode==200){

    var data= jsonDecode(response.body);
    return Worldstatesmodel.fromJson(data);
  }else{
throw Exception('error');
  }

  }


  Future<List<dynamic>>  counrieslistapi () async{
var data;
    final response = await http.get(Uri.parse(appurl.countriesList));

    if(response.statusCode==200){

      var data= jsonDecode(response.body);
      return data;
    }else{
      throw Exception('error');
    }

  }

}
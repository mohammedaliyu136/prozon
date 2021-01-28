import './../model/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Repository {
  var url = 'https://pro-zone.herokuapp.com';
  getProvidersList()async{
    print(".................................");
    print(".................................");
    print(".................................");
    print("getting");
    var response = await http.get("$url/providers", headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExNTYzNjEzLCJleHAiOjE2MTQxNTU2MTN9.e5Df8V75KU44Hz4IG1ilKby0ptkJzX7hFcbX5XZ-EEI'});
    //print(response.body);
    List<dynamic> list = json.decode(response.body);
    List<Provider> providers = [];
    //list.forEach((element) {print(element);print("----------------------------------------");});
    //list.forEach((element) {Provider.fromJson(element);});
    print(Provider.fromJson(list[0]).id);
    for(var i=0; i<30; i+=1){
      //print("i $i");
      //print(list[i]);
      //print(Provider.fromJson(list[i]).id);
      providers.add(Provider.fromJson(list[i]));
    }
    return providers;
  }
  searchProvider(search){}
  createProvider(Provider provider)async{
    print(provider.toJson());
    var response = await http.post("$url/providers",
        headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExNTYzNjEzLCJleHAiOjE2MTQxNTU2MTN9.e5Df8V75KU44Hz4IG1ilKby0ptkJzX7hFcbX5XZ-EEI'},
    body: provider.toJson()
    );
    print(response.statusCode);
    print(response.body);
    return response;
  }
  getDetailProvider(id){}
  updateProvider(Provider provider)async{
    print(provider.toJson());
    var response = await http.put("$url/providers/${provider.id}",
        headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExNTYzNjEzLCJleHAiOjE2MTQxNTU2MTN9.e5Df8V75KU44Hz4IG1ilKby0ptkJzX7hFcbX5XZ-EEI'},
        body: provider.toJson()
    );
    print(response.statusCode);
    print(response.body);
    return response;
  }
  deleteProvider(id){}
  uploadProviderImage(){}

}
import 'package:flutter/material.dart';
import 'package:prozone/model/provider.dart';

import 'add_provider.dart';

class DetailProvider extends StatefulWidget {
  Provider provider;
  //Provider providerr = Provider("xxx", "namee", "descriptionn", 4, "addresss", "active_statuss", "provider_typee", "statee");
  DetailProvider({this.provider});

  @override
  _DetailProviderState createState() {
    return _DetailProviderState(provider: provider);
  }
}

class _DetailProviderState extends State<DetailProvider> {
  Provider provider;
  _DetailProviderState({this.provider});
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddProvider(provider: provider,)),
              );
            },
            child: Icon(Icons.mode_edit)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Name", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.name),
            SizedBox(height: 15,),
            Text("Description", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.description),
            SizedBox(height: 15,),
            Text("Rating", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.rating.toString()),
            SizedBox(height: 15,),
            Text("Address", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.address),
            SizedBox(height: 15,),
            Text("Active Status", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.active_status),
            SizedBox(height: 15,),
            Text("Provider Type", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.provider_type),
            SizedBox(height: 15,),
            Text("State", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(provider.state),
            SizedBox(height: 15,),
          ],)
        ],),
      ),
    );
  }
}
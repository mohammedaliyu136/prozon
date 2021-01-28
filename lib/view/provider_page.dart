import 'package:flutter/material.dart';
import 'package:prozone/model/provider.dart';
import 'package:prozone/repository/repository.dart';
import 'package:prozone/view/add_provider.dart';

import 'detail_provider.dart';

class ProviderPage extends StatefulWidget {
  ProviderPage({Key key}) : super(key: key);

  @override
  _ProviderPageState createState() {
    return _ProviderPageState();
  }
}

class _ProviderPageState extends State<ProviderPage> {
  Provider provider;
  List<Provider> providers = [];
  bool loading = false;
  @override
  void initState() {
    super.initState();
    getProviders();
    this.provider = Provider("idd", "namee", "descriptionn", 4, "addresss", "active_statuss", "provider_typee", "statee");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Provider"),),
      body: loading?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Loading... please wait.", style: TextStyle(fontSize: 20),),
          ],
        )],):
      ListView.builder(
          itemCount: providers.length,
          itemBuilder: (context, index){
            return ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailProvider(provider: providers[index],)),
                  );
                },
                title: Text(providers[index].name),
                subtitle: Text("Rating ${providers[index].rating}"),
                trailing: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProvider(provider: providers[index])),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.mode_edit),
                    )),
              );
          },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProvider()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void getProviders()async{
    print("loading...");
    setState(() {
      loading=true;
    });
    var providers = await Repository().getProvidersList();
    setState(() {
      this.providers = providers;
      loading=false;
    });
    print("done...");
  }
}
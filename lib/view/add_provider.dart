import 'package:flutter/material.dart';
import 'package:prozone/model/provider.dart';
import 'package:prozone/repository/repository.dart';
import 'package:prozone/view/provider_page.dart';

class AddProvider extends StatefulWidget {
  Provider provider;
  AddProvider({this.provider});

  @override
  _AddProviderState createState() {
    return _AddProviderState(provider: provider);
  }
}

class _AddProviderState extends State<AddProvider> {
  Provider provider;
  _AddProviderState({this.provider});
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController activeStatusController = TextEditingController();
  TextEditingController providerTypeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  @override
  void initState() {
    super.initState();
    if(provider!=null){
      nameController.text = provider.name;
      descriptionController.text = provider.description;
      ratingController.text = provider.rating.toString();
      addressController.text = provider.address;
      activeStatusController.text = provider.active_status;
      providerTypeController.text = provider.provider_type;
      stateController.text = provider.state;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: provider!=null?Text("Update Provider"):Text("New Provider"),),
      body: Padding(
        padding: const EdgeInsets.only(top:18.0, left:18.0, right:18.0),
        child: ListView(children: [
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Name", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            controller: nameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Provider name'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Description", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.next,
            controller: descriptionController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Description'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Rating", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            controller: ratingController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Rating'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Address", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            controller: addressController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Address'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Active Status", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: activeStatusController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Active Status'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("Provider Type", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: providerTypeController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Provider Type'),
          ),
          SizedBox(height: 10,),
          provider!=null?Padding(
            padding: const EdgeInsets.only(left:18.0, bottom: 5),
            child: Text("State", style: TextStyle(fontSize: 16),),
          ):Container(),
          TextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            controller: stateController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.black12),

                  //borderSide: const BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                      color: Colors.red, width: 1.7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'State'),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                  child: RaisedButton(
                    onPressed: (){
                      print("posting");
                      if(provider==null){

                      }else{
                        var response = Repository().updateProvider(Provider(provider.id, provider.name, "descriptionn", 4, "addresss", provider.active_status, provider.provider_type, "Lagos"));
                      }
                      //print(response.status);
                      //print(response.body);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: provider!=null?Text("Update", style: TextStyle(color: Colors.white, fontSize: 16),):Text("Add", style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.red)
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 50,)
        ],),
      ),
    );
  }
}
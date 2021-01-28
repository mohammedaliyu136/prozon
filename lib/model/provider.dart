class Provider {
  String id;
  String name;
  String description;
  int rating;
  String address;
  String active_status;
  String provider_type;
  String state;

  // Constructor, with syntactic sugar for assignment to members.
  Provider(this.id, this.name, this.description, this.rating, this.address, this.active_status, this.provider_type, this.state) {
    // Initialization code goes here.
  }
  Provider.fromJson(Map<String, dynamic> json){
    id= json['id'].toString();
    try {name= json["name"].toString();} on Exception catch (_) {name="";}
    try {description= json["description"];} on Exception catch (_) {description="";}
    try {rating= json["rating"];} on Exception catch (_) {rating=0;}
    try {address= json['address'];} on Exception catch (_) {address="";}
    try {active_status= json['active_status'];} on Exception catch (_) {active_status="";}
    try {provider_type= json['provider_type']['name'];} on Exception catch (_) {provider_type="";}
    try {state= json['state']['name'];} on Exception catch (_) {state="";}
  }

  Map<String, dynamic> toJson() =>
      {
        "name": name,
        "description": description,
        "rating": rating.toString(),
        "address": address,
        "active_status": active_status,
        "provider_type": provider_type,
        "state": state
      };
}
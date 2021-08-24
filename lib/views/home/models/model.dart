class HomeModel {

 String name;
 String image;

 HomeModel({
   this.name,
   this.image
});

 HomeModel.fromJson(Map<String, dynamic> json){
   this.name = json['name'];
   this.image = json['img'];
 }

}
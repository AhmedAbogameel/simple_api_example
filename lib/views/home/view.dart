import 'package:api/views/home/controller.dart';
import 'package:api/views/home/model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  HomeController homeController = HomeController();
  bool _isLoading = true;
  List<HomeModel> data;

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData()async{
    data = await homeController.getData();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: data.length,
        itemBuilder: (context,index){
          final char = data[index];
          return Column(
            children: [
              Image.network(char.image),
              Text(char.name),
            ],
          );
        },
      ),
    );
  }
}

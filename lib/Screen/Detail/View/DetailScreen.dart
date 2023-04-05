import 'package:api_call/Utils/ApiHelper.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  ApiHelper apiHelper = ApiHelper();


  @override
  void initState() {
    super.initState();

    apiHelper.ApiCall();
  }




  @override
  Widget build(BuildContext context) {
    // int index = ModalRoute.of(context)!.settings.arguments as int;
    int index = 5;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   decoration: ,
            // ),
            Image.network("${apiHelper.productList[index].image}")
          ],
        ),
      ),
    );
  }
}

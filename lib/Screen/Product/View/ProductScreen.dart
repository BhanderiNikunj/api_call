import 'package:api_call/Utils/ApiHelper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ApiHelper apiHelper = ApiHelper();

  @override
  void initState() {
    super.initState();

    apiHelper.ApiCall();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Wel-come Nikunj's App",
                style: GoogleFonts.dancingScript(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          body: ListView.builder(
            itemCount: apiHelper.productList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'detail',arguments: index);
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            "${apiHelper.productList[index].image}",
                            height: 130,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Expanded(
                                child: Text(
                                  "${apiHelper.productList[index].title}",
                                  style: GoogleFonts.dancingScript(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "${apiHelper.productList[index].category}",
                                  style: GoogleFonts.dancingScript(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

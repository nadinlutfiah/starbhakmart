import 'package:flutter/material.dart';
import 'package:starbhackmart/dataproduk.dart';
import 'package:starbhackmart/main.dart';

class MyAddPage extends StatelessWidget {
  MyAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Navv();
                      }));
                    },
                    icon: Icon(Icons.arrow_back_ios_outlined,
                        color: Colors.orange),
                    splashRadius: 20,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_2_outlined),
                    splashRadius: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 20,
                child: Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[700]),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ProductForm();
                          }));
                    },
                    child: Text(
                      "Add Data +",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Foto",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Nama Produk",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Harga",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Aksi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 3,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    _buildMyAddItemList(
                        "asset/burger.png", "Small Burger", "Rp. 22.500,00"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 3,
                    ),
                    _buildMyAddItemList(
                        "asset/burger.png", "Medium Burger", "Rp. 35.500,00"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 3,
                    ),
                    _buildMyAddItemList(
                        "asset/burger.png", "Large Burger", "Rp. 40.000,00"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 3,
                    ),
                    _buildMyAddItemList(
                        "asset/soda.png", "S Cup Soda", "Rp. 6000,00"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 3,
                    ),
                    _buildMyAddItemList(
                        "asset/soda.png", "M Cup Soda", "Rp. 8000,00"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 3,
                    ),
                    _buildMyAddItemList(
                        "asset/soda.png", "L Cup Soda", "Rp. 10.000,00"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMyAddItemList(
      String imagePath, String productName, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 75,
            height: 75,
          ),
          Text(productName),
          Text(price),
          Icon(
            Icons.delete_outline,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

class MyMasterDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your Master Data Page UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Master Data Page'),
      ),
      body: Center(
        child: Text('This is the Master Data Page'),
      ),
    );
  }
}

class Navv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your Navv UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Navv'),
      ),
      body: Center(
        child: Text('This is the Navv Page'),
      ),
    );
  }
}

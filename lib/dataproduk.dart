import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Produk'),
        ),
        body: ProductForm(),
      ),
    );
  }
}

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  // Controller untuk mengambil nilai input
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.contact_phone), // Icon kontak
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Nama Produk'),
          ),
          TextFormField(
            controller: priceController,
            decoration: InputDecoration(labelText: 'Harga'),
          ),
          TextFormField(
            controller: categoryController,
            decoration: InputDecoration(labelText: 'Kategori Penduduk'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Image'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika submit di sini
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check), // Icon submit
                Text('Submit'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

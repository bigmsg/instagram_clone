import 'package:flutter/material.dart';
import 'package:instagram_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }

  _buildBody() {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0
    ),
        itemCount: 5,
        itemBuilder: (context, index) {
        return _buildListItem(context, index);
    });
  }

  _buildListItem(BuildContext context, int index) {
    return Image.network('https://www.massagemania.co.kr/data/file/gooin/237413926_QohiONdR_7c75d87152e244ffbb350a670a659d7980cf1b9d.jpg', fit: BoxFit.cover);
  }


}

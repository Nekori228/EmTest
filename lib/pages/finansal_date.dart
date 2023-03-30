import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'intro_test.dart';

class date extends StatelessWidget {
  const date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white,
          title: Text(
            'Мои финансовые данные',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.translate,
                    color: Colors.grey,
                  ),
                )),
          ],
        ),
        body: downloader()
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Container(
        //     margin: EdgeInsets.symmetric(
        //         horizontal: MediaQuery.of(context).size.width * 0.05),
        //     child: Column(
        //       children: [
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //         pdf_block(),
        //         block_grey(),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}

class pdf_block extends StatelessWidget {
  const pdf_block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.picture_as_pdf),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Октябрь - расчётный лист',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Text('10/11/2022'),
        ],
      ),
    );
  }
}

class downloader extends StatefulWidget {
  const downloader({Key? key}) : super(key: key);

  @override
  State<downloader> createState() => _downloaderState();
}

class _downloaderState extends State<downloader> {
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/Financial_data').listAll();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;

            return ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final file = files[index];

                return ListTile(
                  title: Text(file.name),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.download,
                      color: Colors.black,
                    ),
                    onPressed: () => downloadFile(file),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }
          return Text('ss');
        });
  }

  Future downloadFile(Reference ref) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');

    await ref.writeToFile(file);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Download ${ref.name}')),
    );
  }
}

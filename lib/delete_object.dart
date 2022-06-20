import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terzi/home.dart';

import 'main.dart';

class DeleteObject extends StatefulWidget {
  const DeleteObject({Key? key}) : super(key: key);

  @override
  State<DeleteObject> createState() => _DeleteObjectState();
}

class _DeleteObjectState extends State<DeleteObject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Silme Sayfası')),
      body: SafeArea(
        child: StreamBuilder(
          stream: firestore
              .collection('futbolcular')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: Text("Silinecek futbolcu yok."),
              );
            }
            return ListView(
              children: getExpenseItems(snapshot),
            );
          },
        ),
      ),
    );
  }

  getExpenseItems(AsyncSnapshot<QuerySnapshot> snapshot) {
    final width = MediaQuery.of(context).size.width;
    return snapshot.data!.docs
        .map(
          (doc) => Column(
            children: [
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  debugPrint(snapshot.data!.docs.first.id);
                },
                child: Container(
                  width: width * 0.9,
                  color: Colors.black26,
                  child: ListTile(
                    title: Text(doc["futbolcu-adi"]),
                    subtitle: Text(doc["futbolcu-fiyati"]),
                    trailing: IconButton(
                      icon: const Icon(CupertinoIcons.delete),
                      onPressed: () {
                        firestore
                            .collection('futbolcular')
                            .doc(doc.id)
                            .delete();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}

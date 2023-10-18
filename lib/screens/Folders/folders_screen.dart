import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:ui_fyp/provider/folder_provider.dart';
import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/res/font_styles.dart';

import '../../res/components/bottom_navigation_bar.dart';

class FoldersMainScreen extends StatefulWidget {

  const FoldersMainScreen({super.key,});

  @override
  State<FoldersMainScreen> createState() => _FoldersMainScreenState();
}

class _FoldersMainScreenState extends State<FoldersMainScreen> {
  TextEditingController folderNameController = TextEditingController();

  Future<void> requestStoragePremission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  @override
  void initState() {
    super.initState();
    requestStoragePremission();
  }

  Future<void> createFolder(String folderName) async {
    Provider.of<FolderProvider>(context, listen: false)
        .createFolder(folderNameController.text.toString());
  }

  Future<void> _showCreateFolderDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Create Folder"),
          content: TextField(
            controller: folderNameController,
            decoration: const InputDecoration(
              labelText: "Folder Name",
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Create Folder"),
              onPressed: () {
                createFolder(folderNameController.text.toString());
                Navigator.of(context).pop(folderNameController.text);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: const BottomNavgationBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/google.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextWidget(
                      text: 'Files',
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontStyles.CarosSoftBold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: const Icon(
                        Icons.more_rounded,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              endIndent: 15,
              indent: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: TextWidget(
                        text: 'Total: 128 Files',
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: FontStyles.CarosSoftBold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: const Icon(
                        Icons.add_road_rounded,
                        size: 25,
                      ),
                    ),
                    Consumer<FolderProvider>(builder: (context, value, child) {
                      return IconButton(
                        onPressed: () {
                          _showCreateFolderDialog(context);

                          // Add your onPressed logic here
                        },
                        icon: const Icon(
                          Icons.create_new_folder_outlined,
                          size: 25,
                        ),
                      );
                    }),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Consumer<FolderProvider>(
              builder: (context, value, child) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: value.contents.length,
                    itemBuilder: (context, index) {
                      final entity = value.contents[index];
                      return ListTile(
                        leading: entity is Directory
                            ? const Icon(Icons.folder)
                            : const Icon(Icons.insert_drive_file),
                        title: Text(entity.path.split('/').last),
                        onTap: () {
                          if (entity is Directory) {
                            value.loadFolderContents(entity.path);

                            // Add this line
                          }
                        },
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

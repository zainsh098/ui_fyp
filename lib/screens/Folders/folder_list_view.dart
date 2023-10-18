import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_fyp/provider/folder_provider.dart';

class FolderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FolderProvider>(
      builder: (context, value, child) {
        return Expanded(
          child: ListView.builder(
            itemCount: value.contents.length,
            itemBuilder: (context, index) {
              final entity = value.contents[index];
              return ListTile(
                leading: entity is Directory
                    ? Icon(Icons.folder)
                    : Icon(Icons.insert_drive_file),
                title: Text(entity.path.split('/').last),
                onTap: () {
                  if (entity is Directory) {
                    value.loadFolderContents(entity.path);
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}

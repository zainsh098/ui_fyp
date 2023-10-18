import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_fyp/provider/folder_provider.dart';

class CreateFolderDialog extends StatelessWidget {
  final TextEditingController folderNameController;

  const CreateFolderDialog({
    super.key,
    required this.folderNameController,
  });

  @override
  Widget build(BuildContext context) {
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
            Provider.of<FolderProvider>(context, listen: false)
                .createFolder(folderNameController.text.toString());
            Navigator.of(context).pop(folderNameController.text);
          },
        ),
      ],
    );
  }
}

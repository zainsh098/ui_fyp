import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FolderProvider extends ChangeNotifier {
  Directory? _currentDirectory;
  List<FileSystemEntity> _contents = [];
  Directory? get currentDirectory => _currentDirectory;
  List<FileSystemEntity> get contents => _contents;

  Future<void> loadFolderContents([String? path]) async {
    if (path != null) {
      _currentDirectory = Directory(path);
    } else if (_currentDirectory == null || !(await _currentDirectory!.exists())) {
      final externalDirectory = await getExternalStorageDirectory();
      _currentDirectory = externalDirectory!;
    }
    _contents = _currentDirectory!.listSync();
    notifyListeners(); // This is the correct way to trigger a rebuild.
  }



  Future<void> createFolder(String folderName) async {
    if (_currentDirectory != null) {
      final folderPath = "${_currentDirectory!.path}/$folderName";
      final folder = Directory(folderPath);

      if (!(await folder.exists())) {
        await folder.create(recursive: true);
      }

      _contents.add(folder);
      notifyListeners();
    }
  }



}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FileUploadScreen extends StatefulWidget {
  @override
  _FileUploadScreenState createState() => _FileUploadScreenState();
}

class _FileUploadScreenState extends State<FileUploadScreen> {
  File? _selectedFile;

  void _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
          ElevatedButton(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.teal.shade400),),
            onPressed: _selectFile,
            child: Text('Select File'),
          ),
        
      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
      ],
      ),
    );
  }
}

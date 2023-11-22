import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:safe_com/api/async_link.dart';
class RequestProvider extends  ChangeNotifier{
  late   List<String> _images ;

  String getImageByIndex(int index){
    getListImage();
    updateImages();
    return  _images[index];
  }

  void getListImage(){
    _images  = getImageListRequest();
  }

  void updateImages(){
    ListenForRequest(getListImage, notifyListeners);

  }

}
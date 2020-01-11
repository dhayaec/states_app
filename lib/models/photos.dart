import 'package:flutter/material.dart';

class Photo {
  final String id;
  final String name;
  final String description;
  final double rating;
  bool isLiked;

  Photo({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.rating,
    this.isLiked = false,
  });
}

class Photos {
  List<Photo> _photos = [
    Photo(id: '1', name: 'Photo One', description: 'beautiful', rating: 3),
    Photo(id: '2', name: 'Photo Two', description: 'wonderfully', rating: 3),
    Photo(id: '3', name: 'Photo Three', description: 'super', rating: 3.5),
    Photo(id: '4', name: 'Photo Four', description: 'awesome', rating: 3),
    Photo(id: '5', name: 'Photo Five', description: 'beautiful', rating: 5),
    Photo(id: '6', name: 'Photo Five', description: 'beautiful', rating: 5),
    Photo(id: '7', name: 'Photo Five', description: 'beautiful', rating: 5),
    Photo(id: '8', name: 'Photo Five', description: 'beautiful', rating: 5),
    Photo(id: '9', name: 'Photo Five', description: 'beautiful', rating: 5),
    Photo(id: '10', name: 'Photo Five', description: 'beautiful', rating: 5),
  ];

  get photos => _photos;

  void likePhoto(Photo p) {
    _photos.firstWhere((i) => i.id == p.id).isLiked = !p.isLiked;
  }
}

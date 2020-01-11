import 'package:flutter/material.dart';
import 'package:states_app/models/photos.dart';

class PhotoItem extends StatelessWidget {
  final Photo photo;
  final Function onPressed;

  const PhotoItem({
    Key key,
    @required this.photo,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(photo.name);
    return ListTile(
      title: Text(photo.name),
      subtitle: Text(photo.description),
      onTap: onPressed,
      trailing: IconButton(
        icon: Icon(
          Icons.favorite,
          color: photo.isLiked ? Colors.red : Colors.grey,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

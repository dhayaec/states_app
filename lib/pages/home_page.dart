import 'package:flutter/material.dart';
import 'package:states_app/models/photos.dart';
import 'package:states_app/widgets/photo_item.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final photosList = Injector.get<Photos>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: photosList.photos.length,
        itemBuilder: (context, i) {
          return StateBuilder<Photos>(
            builder: (context, model) => PhotoItem(
              photo: model.state.photos[i],
              onPressed: () => model.setState(
                (state) => state.likePhoto(model.state.photos[i]),
              ),
            ),
          );
        },
      ),
    );
  }
}

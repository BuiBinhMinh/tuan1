import 'dart:async';

import 'package:tuan_1/data/repository/reponsitory.dart';

import '../../data/models/song.dart';


class MusicAppViewModel{
  StreamController<List<Song>> songStream = StreamController();

  void loadSongs(){
    final Repository = DefaultRepository();
    Repository.loadData().then((value) => songStream.add(value!));
  }
}
import 'package:flutter_songsareawesome/model/download_model.dart';
import 'package:flutter_songsareawesome/model/favorite_model.dart';
import 'package:flutter_songsareawesome/model/local_view_model.dart';
import 'package:flutter_songsareawesome/model/song_model.dart';
import 'package:flutter_songsareawesome/model/theme_model.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...uiConsumableProviders
];


List<SingleChildCloneableWidget> independentServices = [
  ChangeNotifierProvider<ThemeModel>(
    create: (context) => ThemeModel(),
  ),
  ChangeNotifierProvider<LocaleModel>(
    create: (context) => LocaleModel(),
  ),
  ChangeNotifierProvider<FavoriteModel>(
    create: (context) => FavoriteModel(),
  ),
  ChangeNotifierProvider<DownloadModel>(
    create: (context) => DownloadModel(),
  ),
  ChangeNotifierProvider<SongModel>(
    create: (context) => SongModel(),
  )
];

List<SingleChildCloneableWidget> uiConsumableProviders = [

];

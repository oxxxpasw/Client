import 'package:isar_community/isar.dart';
import 'package:sosedifedi/data/entities/cart/cart_entity.dart';
import 'package:sosedifedi/data/entities/store/store.dart';
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  @Singleton()
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  @Singleton(dispose: disposeIsar)
  Future<Isar> get isar async {
    final dir = await getApplicationDocumentsDirectory();
    var isar = Isar.getInstance();
    if (isar != null) return isar;
    try {
      return await Isar.open(
        [
          SelectedStoreDataEntitySchema,
          CartEntitySchema,
          CartItemEntitySchema,
        ],
        directory: dir.path,
      );
    } catch (e) {
      // ignore: avoid_print
      print('Isar open failed: $e');
      try {
        final files = dir.listSync();
        for (var f in files) {
          if (f.path.contains('.isar')) {
            try {
              f.deleteSync();
            } catch (_) {}
          }
        }
      } catch (_) {}
      try {
        return await Isar.open(
          [
            SelectedStoreDataEntitySchema,
            CartEntitySchema,
            CartItemEntitySchema,
          ],
          directory: dir.path,
          name: 'coffeelil_clean',
        );
      } catch (e2) {
        // ignore: avoid_print
        print('Isar fallback: $e2');
        return await Isar.open(
          [SelectedStoreDataEntitySchema],
          directory: dir.path,
          name: 'store_db',
        );
      }
    }
  }

  @LazySingleton()
  GS1BarcodeParser get gs1BarcodeParser => GS1BarcodeParser.defaultParser();
}

void disposeIsar(Isar isar) => isar.close();

import 'package:get_it/get_it.dart';

import 'api.dart';
import 'products_repository.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton(() => ProductsRepository()) ;
}
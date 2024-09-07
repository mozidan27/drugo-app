import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/services/service_locator.dart';

void onBoardingVisited() {
  getit<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}

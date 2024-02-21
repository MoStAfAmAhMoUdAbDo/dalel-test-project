import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/locator_service.dart';

void onBoardingVisiting() {
  getIt<CacheHelper>().saveData(key: "isOnbordingVisited", value: true);
}

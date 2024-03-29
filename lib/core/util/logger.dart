import 'dart:developer' as developer;
import 'package:logging/logging.dart';

void loggerConfig() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    developer.log('${record.level.name}: ${record.time}: ${record.message}');
  });
}

final log = Logger("DioApiCalling");
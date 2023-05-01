import 'package:logger/logger.dart';

///
/// @author huangye
///

Logger? logger;

Logger get Log => logger ??= Logger(
      filter: CustomerFilter(),
      // printer: PrettyPrinter(
      //     printEmojis: false,
      //     colors: false,
      //     methodCount: 0,
      //     noBoxingByDefault: true),
      printer: PrettyPrinter(),
      // output: LogStorage(),
    );

class LogStorage extends LogOutput {
  @override
  void output(OutputEvent event) {}
}

class CustomerFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

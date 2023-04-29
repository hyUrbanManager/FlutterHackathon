import 'package:logger/logger.dart';

///
/// @desc 日志记录对象，规则：以天为单位建 立日志文件，自动删除过期日志
/// @author weixiaoqiang
/// @date 2022/5/29 15:58
///
///
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
      output: LogStorage(),
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

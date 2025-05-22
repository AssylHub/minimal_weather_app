part of 'log.dart';

class _Info extends TalkerLog {
  _Info(String super.message);

  @override
  String get title => 'INFO';

  @override
  String? get key => 'INFO';

  @override
  AnsiPen get pen => AnsiPen()..xterm(2);
}

class _InfoWithTitle extends TalkerLog {
  _InfoWithTitle(String title, String message) : super(message) {
    logTitle = title;
    logKey = '${title.toUpperCase()}_KEY';
  }

  String logTitle = '';
  String logKey = '';

  @override
  String get title => logTitle;

  @override
  String? get key => logKey;

  @override
  AnsiPen get pen => AnsiPen()..xterm(2);
}

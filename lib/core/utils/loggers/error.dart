part of 'log.dart';

class _Error extends TalkerLog {
  _Error(String super.message);

  @override
  String get title => 'ERROR';

  @override
  String? get key => 'ERROR';

  @override
  AnsiPen get pen => AnsiPen()..xterm(1);
}

class _ErrorWithTitle extends TalkerLog {
  _ErrorWithTitle(String title, String message) : super(message) {
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
  AnsiPen get pen => AnsiPen()..xterm(1);
}

class TextEntity{
  late final String _textTrans;
  late final String _language;

  TextEntity(this._textTrans, this._language);

  set textTrans(String textTrans){
    _textTrans = textTrans;
  }
  set language(String language) {
    _language = language;
  }

  String get textTrans => _textTrans;
  String get language => _language;

}
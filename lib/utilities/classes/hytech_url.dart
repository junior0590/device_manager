class HytechUrl {
  bool isEmpty;
  String baseUrl;
  String a;
  String b;
  String moduleName;
  String moduleId;
  String section;
  int record;
  int id;

  HytechUrl({
    this.isEmpty = true,
    this.baseUrl = '',
    /*
    *It usually comes with the name of the user
    */
    this.a = 'user',
    /*
    *It usually it comes with the name of the module 
    */
    this.b = 'module',
    this.moduleName = '',
    this.moduleId = '',
    this.section = '',
    this.record = -1,
    this.id = -1,
  });

  factory HytechUrl.fromUri(Uri uri) {
    return HytechUrl(
      isEmpty: false,
      baseUrl: uri.host,
      a: uri.pathSegments[0],
      b: uri.pathSegments[1],
      moduleName: uri.pathSegments[2],
      moduleId: uri.pathSegments[3],
      section: uri.queryParameters['sec'] ?? '',
      record: int.parse(uri.queryParameters['rec'] ?? '1'),
      id: int.parse(uri.queryParameters['id'] ?? '1'),
    );
  }
}

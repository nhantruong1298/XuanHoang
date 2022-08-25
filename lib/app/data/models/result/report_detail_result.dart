class ReportDetailResult {
  String? title;
  String? userName;
  String? replyContent;
  List<String> images;

  ReportDetailResult({
    this.title,
    this.images = const [],
    this.replyContent,
    this.userName,
  });
}

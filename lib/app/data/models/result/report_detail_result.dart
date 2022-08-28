class ReportDetailResult {
  String? title;
  String? userName;
  String? replyContent;
  List<String> images;
  String? idIncidentStatus;

  ReportDetailResult({
    this.title,
    this.images = const [],
    this.replyContent,
    this.userName,
    this.idIncidentStatus,
  });
}

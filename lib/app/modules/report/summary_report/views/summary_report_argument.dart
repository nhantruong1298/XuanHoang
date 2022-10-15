class SummaryReportArgument {
  final bool isCreating;
  final String pdfLocalPath;
  final String termId;
  final String? pdfUrl;
  SummaryReportArgument({
    required this.isCreating,
    required this.pdfLocalPath,
    required this.termId,
    this.pdfUrl,
  });
}

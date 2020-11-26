import 'package:meta/meta.dart';

class Meta {
  Meta({
    @required this.totalPages,
    @required this.currentPage,
    @required this.nextPage,
    @required this.perPage,
    @required this.totalCount,
  });

  final int totalPages;
  final int currentPage;
  final int nextPage;
  final int perPage;
  final int totalCount;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalPages: json["total_pages"],
        currentPage: json["current_page"],
        nextPage: json["next_page"],
        perPage: json["per_page"],
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "total_pages": totalPages,
        "current_page": currentPage,
        "next_page": nextPage,
        "per_page": perPage,
        "total_count": totalCount,
      };
}

import 'package:bookly_app/features/home/data/models/book_model/panelization_summary.dart';
import 'package:bookly_app/features/home/data/models/book_model/reading_modes.dart';

import 'image_links.dart';
import 'industry_identifier.dart';

class VolumeInfo {
  String title;
  List<String> authors;
  String publisher;
  DateTime publishedDate;
  String description;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  num pageCount;
  String printType;
  List<String> categories;
  num averageRating;
  num ratingsCount;
  String maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    authors: List<String>.from(json["authors"].map((x) => x)),
    publisher: json["publisher"],
    publishedDate: DateTime.parse(json["publishedDate"]),
    description: json["description"],
    industryIdentifiers: List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    readingModes: ReadingModes.fromJson(json["readingModes"]),
    pageCount: json["pageCount"] as num,
    printType: json["printType"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    averageRating: json["averageRating"] as num,
    ratingsCount: json["ratingsCount"] as num,
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]),
    imageLinks: ImageLinks.fromJson(json["imageLinks"]),
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "publisher": publisher,
    "publishedDate": "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
    "description": description,
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
    "readingModes": readingModes.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "averageRating": averageRating,
    "ratingsCount": ratingsCount,
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary.toJson(),
    "imageLinks": imageLinks.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };
}
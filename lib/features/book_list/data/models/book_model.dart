import 'package:books_app/features/book_list/domain/entities/book_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable()
class BookModel extends BookEntity {
  @JsonKey(name: "id", defaultValue: 0)
  final int id;
  @JsonKey(name: "title", defaultValue: '')
  final String title;
  @JsonKey(name: "authors", defaultValue: [])
  final List<PersonModel> authors;
  @JsonKey(name: "summaries", defaultValue: [])
  final List<String> bookSummaries;
  @JsonKey(name: "translators", defaultValue: [])
  final List<PersonModel> translators;
  @JsonKey(name: "subjects", defaultValue: [])
  final List<String> subjects;
  @JsonKey(name: "bookshelves", defaultValue: [])
  final List<String> bookshelves;
  @JsonKey(name: "languages", defaultValue: [])
  final List<String> languages;
  @JsonKey(name: "copyright", defaultValue: false)
  final bool copyright;
  @JsonKey(name: "media_type", defaultValue: '')
  final String mediaType;
  @JsonKey(name: "formats")
  final FormatsModel formatsModel;
  @JsonKey(name: "download_count", defaultValue: 0)
  final int downloadCount;

  BookModel({
    required this.id,
    required this.title,
    required this.authors,
    required this.bookSummaries,
    required this.translators,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.copyright,
    required this.mediaType,
    required this.formatsModel,
    required this.downloadCount,
  }) : super(
          authorsList: authors,
          downloadsCount: downloadCount,
          bookId: id,
          titleOfBook: title,
          formats: formatsModel,
          summaries: bookSummaries,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}

@JsonSerializable()
class PersonModel extends PersonEntity {
  @JsonKey(name: "name", defaultValue: '')
  final String name;
  @JsonKey(name: "birth_year", defaultValue: 0)
  final int birthYear;
  @JsonKey(name: "death_year", defaultValue: 0)
  final int deathYear;

  PersonModel({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  }) : super(fullName: name, yearOfBirth: birthYear, yearOfDeath: deathYear);

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}

@JsonSerializable()
class FormatsModel extends FormatsEntity {
  @JsonKey(name: "text/html", defaultValue: '')
  final String textHtmlFormat;
  @JsonKey(name: "application/epub+zip", defaultValue: '')
  final String applicationEpubZipFormat;
  @JsonKey(name: "application/x-mobipocket-ebook", defaultValue: '')
  final String applicationXMobiPocketEbookFormat;
  @JsonKey(name: "text/plain; charset=us-ascii", defaultValue: '')
  final String textPlainCharsetUsAsciiFormat;
  @JsonKey(name: "application/rdf+xml", defaultValue: '')
  final String applicationRdfXmlFormat;
  @JsonKey(name: "image/jpeg")
  final String? imageJpegFormat;
  @JsonKey(name: "application/octet-stream", defaultValue: '')
  final String applicationOctetStreamFormat;

  FormatsModel({
    required this.textHtmlFormat,
    required this.applicationEpubZipFormat,
    required this.applicationXMobiPocketEbookFormat,
    required this.textPlainCharsetUsAsciiFormat,
    required this.applicationRdfXmlFormat,
    required this.imageJpegFormat,
    required this.applicationOctetStreamFormat,
  }) : super(
            textHtml: textHtmlFormat,
            applicationEpubZip: applicationEpubZipFormat,
            applicationXMobiPocketEbook: applicationXMobiPocketEbookFormat,
            textPlainCharsetUsAscii: textPlainCharsetUsAsciiFormat,
            applicationRdfXml: applicationRdfXmlFormat,
            imageJpeg: imageJpegFormat,
            applicationOctetStream: applicationOctetStreamFormat);

  factory FormatsModel.fromJson(Map<String, dynamic> json) =>
      _$FormatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FormatsModelToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bookSummaries: (json['summaries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      translators: (json['translators'] as List<dynamic>?)
              ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      subjects: (json['subjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      bookshelves: (json['bookshelves'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyright: json['copyright'] as bool? ?? false,
      mediaType: json['media_type'] as String? ?? '',
      formatsModel:
          FormatsModel.fromJson(json['formats'] as Map<String, dynamic>),
      downloadCount: (json['download_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'summaries': instance.bookSummaries,
      'translators': instance.translators,
      'subjects': instance.subjects,
      'bookshelves': instance.bookshelves,
      'languages': instance.languages,
      'copyright': instance.copyright,
      'media_type': instance.mediaType,
      'formats': instance.formatsModel,
      'download_count': instance.downloadCount,
    };

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
      name: json['name'] as String? ?? '',
      birthYear: (json['birth_year'] as num?)?.toInt() ?? 0,
      deathYear: (json['death_year'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_year': instance.birthYear,
      'death_year': instance.deathYear,
    };

FormatsModel _$FormatsModelFromJson(Map<String, dynamic> json) => FormatsModel(
      textHtmlFormat: json['text/html'] as String? ?? '',
      applicationEpubZipFormat: json['application/epub+zip'] as String? ?? '',
      applicationXMobiPocketEbookFormat:
          json['application/x-mobipocket-ebook'] as String? ?? '',
      textPlainCharsetUsAsciiFormat:
          json['text/plain; charset=us-ascii'] as String? ?? '',
      applicationRdfXmlFormat: json['application/rdf+xml'] as String? ?? '',
      imageJpegFormat: json['image/jpeg'] as String?,
      applicationOctetStreamFormat:
          json['application/octet-stream'] as String? ?? '',
    );

Map<String, dynamic> _$FormatsModelToJson(FormatsModel instance) =>
    <String, dynamic>{
      'text/html': instance.textHtmlFormat,
      'application/epub+zip': instance.applicationEpubZipFormat,
      'application/x-mobipocket-ebook':
          instance.applicationXMobiPocketEbookFormat,
      'text/plain; charset=us-ascii': instance.textPlainCharsetUsAsciiFormat,
      'application/rdf+xml': instance.applicationRdfXmlFormat,
      'image/jpeg': instance.imageJpegFormat,
      'application/octet-stream': instance.applicationOctetStreamFormat,
    };

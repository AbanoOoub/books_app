class BookEntity {
  final int bookId;
  final String titleOfBook;
  final List<PersonEntity> authorsList;
  final List<String> summaries;
  final int downloadsCount;
  final FormatsEntity formats;

  BookEntity({
    required this.bookId,
    required this.titleOfBook,
    required this.authorsList,
    required this.downloadsCount,
    required this.summaries,
    required this.formats,
  });
}

class PersonEntity {
  final String fullName;
  final int yearOfBirth;
  final int yearOfDeath;

  PersonEntity({
    required this.fullName,
    required this.yearOfBirth,
    required this.yearOfDeath,
  });
}

class FormatsEntity {
  final String textHtml;
  final String applicationEpubZip;
  final String applicationXMobiPocketEbook;
  final String textPlainCharsetUsAscii;
  final String applicationRdfXml;
  final String? imageJpeg;
  final String applicationOctetStream;

  FormatsEntity({
    required this.textHtml,
    required this.applicationEpubZip,
    required this.applicationXMobiPocketEbook,
    required this.textPlainCharsetUsAscii,
    required this.applicationRdfXml,
    required this.imageJpeg,
    required this.applicationOctetStream,
  });
}

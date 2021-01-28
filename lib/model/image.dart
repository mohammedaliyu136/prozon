class Image {
  String id;
  String name;
  String alternativeText;
  String caption;
  double width;
  double height;
  String hash;
  String ext;
  String mime;
  int size;
  String url;
  String previewUrl;
  String provider;
  String provider_metadata;
  String related;

  // Constructor, with syntactic sugar for assignment to members.
  Image(this.id,
        this.name, this.alternativeText, this.caption, this.width, this.height,
        this.hash, this.ext, this.mime, this.size, this.url, this.previewUrl,
        this.provider, this.provider_metadata, this.related
      ) {
    // Initialization code goes here.
  }
}
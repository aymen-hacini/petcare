class AttachmentModel {
  int? id;
  String? attachmentname;
  double? attachmentprice;
  String? attachmentimage;

  AttachmentModel(
      {this.id,
      this.attachmentname,
      this.attachmentprice,
      this.attachmentimage});

  AttachmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attachmentname = json['attachmentname'];
    attachmentprice = json['attachmentprice'];
    attachmentimage = json['attachmentimage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['attachmentname'] = attachmentname;
    data['attachmentprice'] = attachmentprice;
    data['attachmentimage'] = attachmentimage;
    return data;
  }
}

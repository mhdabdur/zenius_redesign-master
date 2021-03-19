class ClassModel {
  String header;
  String title;
  String teacher;
  String meetingModel;
  String date;
  String fulldate;
  String clock;
  String heldFor;
  String imgUrl;
  String status;

  ClassModel(
      {this.header,
        this.title,
        this.teacher,
        this.meetingModel,
        this.date,
        this.fulldate,
        this.clock,
        this.heldFor,
        this.imgUrl,
        this.status});

  ClassModel.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    title = json['title'];
    teacher = json['teacher'];
    meetingModel = json['meeting_model'];
    date = json['date'];
    fulldate = json['fulldate'];
    clock = json['clock'];
    heldFor = json['held_for'];
    imgUrl = json['img_url'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['title'] = this.title;
    data['teacher'] = this.teacher;
    data['meeting_model'] = this.meetingModel;
    data['date'] = this.date;
    data['fulldate'] = this.fulldate;
    data['clock'] = this.clock;
    data['held_for'] = this.heldFor;
    data['img_url'] = this.imgUrl;
    data['status'] = this.status;
    return data;
  }
}


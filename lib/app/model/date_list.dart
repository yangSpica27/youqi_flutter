/// res : 0
/// data : [{"id":1482,"date":"2022-01-21","wuhou":"鸡始乳","wuhou_tra":"雞始乳","wuhou_picture":"https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg","wuhou_picture_tra":"https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg","lunar":"辛丑/牛/腊月/十九","content":{"id":1588,"title":"说法者无法可说，是名说法。","title_tra":"說法者無法可說，是名說法。","type":1,"words_sim":"说法者无法可说，是名说法。","words_tra":"說法者無法可說，是名說法。","person_sim":"金刚经","person_tra":"金剛經","picture":"","audio":"","video":"","note_sim":"","note_tra":"","share_url":"","share_icon":"","bookmarked":false,"bookmarked_count":5,"like_count":12,"liked":false,"comment_count":3,"is_article":0}},{"id":1481,"date":"2022-01-20","wuhou":"鸡始乳","wuhou_tra":"雞始乳","wuhou_picture":"https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg","wuhou_picture_tra":"https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg","lunar":"辛丑/牛/腊月/十八","content":{"id":1587,"title":"大寒","title_tra":"大寒","type":5,"words_sim":"","words_tra":"","person_sim":"","person_tra":"","picture":"https://youqiimg.taguxdesign.com/uploaded/pictures/16bd/767ace0d68e7095de26909826376.jpg","audio":"","video":"","note_sim":"大寒","note_tra":"大寒","share_url":"","share_icon":"https://youqiimg.taguxdesign.com/uploaded/pictures/16bd/767ace0d68e7095de26909826376.jpg-icon200","bookmarked":false,"bookmarked_count":46,"like_count":52,"liked":false,"comment_count":23,"is_article":1}},{"id":1480,"date":"2022-01-19","wuhou":"雉始雊","wuhou_tra":"雉始雊","wuhou_picture":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","wuhou_picture_tra":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","lunar":"辛丑/牛/腊月/十七","content":{"id":1586,"title":"细读平安字，愁边失岁华","title_tra":"細讀平安字，愁邊失歲華","type":1,"words_sim":"细读平安字，愁边失岁华","words_tra":"細讀平安字，愁邊失歲華","person_sim":"试院书怀 简斋","person_tra":"試院書懷 簡齋","picture":"","audio":"","video":"","note_sim":"","note_tra":"","share_url":"","share_icon":"","bookmarked":false,"bookmarked_count":25,"like_count":31,"liked":false,"comment_count":9,"is_article":0}},{"id":1479,"date":"2022-01-18","wuhou":"雉始雊","wuhou_tra":"雉始雊","wuhou_picture":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","wuhou_picture_tra":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","lunar":"辛丑/牛/腊月/十六","content":{"id":1585,"title":"相视而笑，莫逆于心","title_tra":"相視而笑，莫逆於心","type":1,"words_sim":"相视而笑，莫逆于心","words_tra":"相視而笑，莫逆於心","person_sim":"庄子 大宗师","person_tra":"莊子 大宗師","picture":"","audio":"","video":"","note_sim":"","note_tra":"","share_url":"","share_icon":"","bookmarked":false,"bookmarked_count":35,"like_count":43,"liked":false,"comment_count":2,"is_article":0}},{"id":1478,"date":"2022-01-17","wuhou":"雉始雊","wuhou_tra":"雉始雊","wuhou_picture":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","wuhou_picture_tra":"https://youqiimg.taguxdesign.com/wuhou/202001151011369615.JPG","lunar":"辛丑/牛/腊月/十五","content":{"id":1584,"title":"夏天的后院儿","title_tra":"夏天的後院兒","type":4,"words_sim":"","words_tra":"","person_sim":"","person_tra":"","picture":"https://youqiimg.taguxdesign.com/uploaded/pictures/d275/6ecd7878b004b71e2505875d2a89.jpg","audio":"","video":"https://youqiimg.taguxdesign.com/uploaded/videos/c03c/6108a9fb455e4f6438683fbba5cb.mov","note_sim":"夏天的后院儿","note_tra":"夏天的後院兒","share_url":"https://youqi.taguxdesign.com/share/1584.html","share_icon":"https://youqiimg.taguxdesign.com/uploaded/pictures/d275/6ecd7878b004b71e2505875d2a89.jpg-icon200","bookmarked":false,"bookmarked_count":27,"like_count":48,"liked":false,"comment_count":9,"is_article":0}}]

class DateList {
  DateList({
      int? res, 
      List<Data>? data,}){
    _res = res;
    _data = data;
}

  DateList.fromJson(dynamic json) {
    _res = json['res'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  int? _res;
  List<Data>? _data;

  int? get res => _res;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['res'] = _res;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1482
/// date : "2022-01-21"
/// wuhou : "鸡始乳"
/// wuhou_tra : "雞始乳"
/// wuhou_picture : "https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg"
/// wuhou_picture_tra : "https://youqiimg.taguxdesign.com/wuhou/201801181011074781.jpg"
/// lunar : "辛丑/牛/腊月/十九"
/// content : {"id":1588,"title":"说法者无法可说，是名说法。","title_tra":"說法者無法可說，是名說法。","type":1,"words_sim":"说法者无法可说，是名说法。","words_tra":"說法者無法可說，是名說法。","person_sim":"金刚经","person_tra":"金剛經","picture":"","audio":"","video":"","note_sim":"","note_tra":"","share_url":"","share_icon":"","bookmarked":false,"bookmarked_count":5,"like_count":12,"liked":false,"comment_count":3,"is_article":0}

class Data {
  Data({
      int? id, 
      String? date, 
      String? wuhou, 
      String? wuhouTra, 
      String? wuhouPicture, 
      String? wuhouPictureTra, 
      String? lunar, 
      Content? content,}){
    _id = id;
    _date = date;
    _wuhou = wuhou;
    _wuhouTra = wuhouTra;
    _wuhouPicture = wuhouPicture;
    _wuhouPictureTra = wuhouPictureTra;
    _lunar = lunar;
    _content = content;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _date = json['date'];
    _wuhou = json['wuhou'];
    _wuhouTra = json['wuhou_tra'];
    _wuhouPicture = json['wuhou_picture'];
    _wuhouPictureTra = json['wuhou_picture_tra'];
    _lunar = json['lunar'];
    _content = json['content'] != null ? Content.fromJson(json['content']) : null;
  }
  int? _id;
  String? _date;
  String? _wuhou;
  String? _wuhouTra;
  String? _wuhouPicture;
  String? _wuhouPictureTra;
  String? _lunar;
  Content? _content;

  int? get id => _id;
  String? get date => _date;
  String? get wuhou => _wuhou;
  String? get wuhouTra => _wuhouTra;
  String? get wuhouPicture => _wuhouPicture;
  String? get wuhouPictureTra => _wuhouPictureTra;
  String? get lunar => _lunar;
  Content? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['date'] = _date;
    map['wuhou'] = _wuhou;
    map['wuhou_tra'] = _wuhouTra;
    map['wuhou_picture'] = _wuhouPicture;
    map['wuhou_picture_tra'] = _wuhouPictureTra;
    map['lunar'] = _lunar;
    if (_content != null) {
      map['content'] = _content?.toJson();
    }
    return map;
  }

}

/// id : 1588
/// title : "说法者无法可说，是名说法。"
/// title_tra : "說法者無法可說，是名說法。"
/// type : 1
/// words_sim : "说法者无法可说，是名说法。"
/// words_tra : "說法者無法可說，是名說法。"
/// person_sim : "金刚经"
/// person_tra : "金剛經"
/// picture : ""
/// audio : ""
/// video : ""
/// note_sim : ""
/// note_tra : ""
/// share_url : ""
/// share_icon : ""
/// bookmarked : false
/// bookmarked_count : 5
/// like_count : 12
/// liked : false
/// comment_count : 3
/// is_article : 0

class Content {
  Content({
      int? id, 
      String? title, 
      String? titleTra, 
      int? type, 
      String? wordsSim, 
      String? wordsTra, 
      String? personSim, 
      String? personTra, 
      String? picture, 
      String? audio, 
      String? video, 
      String? noteSim, 
      String? noteTra, 
      String? shareUrl, 
      String? shareIcon, 
      bool? bookmarked, 
      int? bookmarkedCount, 
      int? likeCount, 
      bool? liked, 
      int? commentCount, 
      int? isArticle,}){
    _id = id;
    _title = title;
    _titleTra = titleTra;
    _type = type;
    _wordsSim = wordsSim;
    _wordsTra = wordsTra;
    _personSim = personSim;
    _personTra = personTra;
    _picture = picture;
    _audio = audio;
    _video = video;
    _noteSim = noteSim;
    _noteTra = noteTra;
    _shareUrl = shareUrl;
    _shareIcon = shareIcon;
    _bookmarked = bookmarked;
    _bookmarkedCount = bookmarkedCount;
    _likeCount = likeCount;
    _liked = liked;
    _commentCount = commentCount;
    _isArticle = isArticle;
}

  Content.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _titleTra = json['title_tra'];
    _type = json['type'];
    _wordsSim = json['words_sim'];
    _wordsTra = json['words_tra'];
    _personSim = json['person_sim'];
    _personTra = json['person_tra'];
    _picture = json['picture'];
    _audio = json['audio'];
    _video = json['video'];
    _noteSim = json['note_sim'];
    _noteTra = json['note_tra'];
    _shareUrl = json['share_url'];
    _shareIcon = json['share_icon'];
    _bookmarked = json['bookmarked'];
    _bookmarkedCount = json['bookmarked_count'];
    _likeCount = json['like_count'];
    _liked = json['liked'];
    _commentCount = json['comment_count'];
    _isArticle = json['is_article'];
  }
  int? _id;
  String? _title;
  String? _titleTra;
  int? _type;
  String? _wordsSim;
  String? _wordsTra;
  String? _personSim;
  String? _personTra;
  String? _picture;
  String? _audio;
  String? _video;
  String? _noteSim;
  String? _noteTra;
  String? _shareUrl;
  String? _shareIcon;
  bool? _bookmarked;
  int? _bookmarkedCount;
  int? _likeCount;
  bool? _liked;
  int? _commentCount;
  int? _isArticle;

  int? get id => _id;
  String? get title => _title;
  String? get titleTra => _titleTra;
  int? get type => _type;
  String? get wordsSim => _wordsSim;
  String? get wordsTra => _wordsTra;
  String? get personSim => _personSim;
  String? get personTra => _personTra;
  String? get picture => _picture;
  String? get audio => _audio;
  String? get video => _video;
  String? get noteSim => _noteSim;
  String? get noteTra => _noteTra;
  String? get shareUrl => _shareUrl;
  String? get shareIcon => _shareIcon;
  bool? get bookmarked => _bookmarked;
  int? get bookmarkedCount => _bookmarkedCount;
  int? get likeCount => _likeCount;
  bool? get liked => _liked;
  int? get commentCount => _commentCount;
  int? get isArticle => _isArticle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['title_tra'] = _titleTra;
    map['type'] = _type;
    map['words_sim'] = _wordsSim;
    map['words_tra'] = _wordsTra;
    map['person_sim'] = _personSim;
    map['person_tra'] = _personTra;
    map['picture'] = _picture;
    map['audio'] = _audio;
    map['video'] = _video;
    map['note_sim'] = _noteSim;
    map['note_tra'] = _noteTra;
    map['share_url'] = _shareUrl;
    map['share_icon'] = _shareIcon;
    map['bookmarked'] = _bookmarked;
    map['bookmarked_count'] = _bookmarkedCount;
    map['like_count'] = _likeCount;
    map['liked'] = _liked;
    map['comment_count'] = _commentCount;
    map['is_article'] = _isArticle;
    return map;
  }

}
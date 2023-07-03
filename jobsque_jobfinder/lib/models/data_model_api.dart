// class Data {
//   Info? info;
//   List<Item>? item;
//   Auth? auth;
//   List<Event>? event;
//   List<Variable>? variable;

//   Data({this.info, this.item, this.auth, this.event, this.variable});

//   Data.fromJson(Map<String, dynamic> json) {
//     info = json['info'] != null ?  Info.fromJson(json['info']) : null;
//     if (json['item'] != null) {
//       item = <Item>[];
//       json['item'].forEach((v) {
//         item!.add( Item.fromJson(v));
//       });
//     }
//     auth = json['auth'] != null ?  Auth.fromJson(json['auth']) : null;
//     if (json['event'] != null) {
//       event = <Event>[];
//       json['event'].forEach((v) {
//         event!.add( Event.fromJson(v));
//       });
//     }
//     if (json['variable'] != null) {
//       variable = <Variable>[];
//       json['variable'].forEach((v) {
//         variable!.add( Variable.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     if (info != null) {
//       data['info'] = info!.toJson();
//     }
//     if (item != null) {
//       data['item'] = item!.map((v) => v.toJson()).toList();
//     }
//     if (auth != null) {
//       data['auth'] = auth!.toJson();
//     }
//     if (event != null) {
//       data['event'] = event!.map((v) => v.toJson()).toList();
//     }
//     if (variable != null) {
//       data['variable'] = variable!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Info {
//   String? sPostmanId;
//   String? name;
//   String? schema;
//   String? sExporterId;

//   Info({this.sPostmanId, this.name, this.schema, this.sExporterId});

//   Info.fromJson(Map<String, dynamic> json) {
//     sPostmanId = json['_postman_id'];
//     name = json['name'];
//     schema = json['schema'];
//     sExporterId = json['_exporter_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['_postman_id'] =sPostmanId;
//     data['name'] = name;
//     data['schema'] =schema;
//     data['_exporter_id'] = sExporterId;
//     return data;
//   }
// }

// class Item {
//   String? name;
//   List<Item>? item;

//   Item({this.name, this.item});

//   Item.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     if (json['item'] != null) {
//       item = <Item>[];
//       json['item'].forEach((v) {
//         item!.add( Item.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['name'] =name;
//     if (item != null) {
//       data['item'] = item!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ItemApi {
//   String? name;
//   Request? request;
//   List<void>? response;
//   List<Event>? event;
//   ProtocolProfileBehavior? protocolProfileBehavior;

//   ItemApi(
//       {this.name,
//       this.request,
//       this.response,
//       this.event,
//       this.protocolProfileBehavior});

//   ItemApi.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     request =
//         json['request'] != null ? Request.fromJson(json['request']) : null;
//     if (json['response'] != null) {
//       response = <Null>[];
//       json['response'].forEach((v) {
//         response!.add(Null.fromJson(v));
//       });
//     }
//     if (json['event'] != null) {
//       event = <Event>[];
//       json['event'].forEach((v) {
//         event!.add( Event.fromJson(v));
//       });
//     }
//     protocolProfileBehavior = json['protocolProfileBehavior'] != null
//         ? ProtocolProfileBehavior.fromJson(json['protocolProfileBehavior'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     if (request != null) {
//       data['request'] = request!.toJson();
//     }
//     if (response != null) {
//       data['response'] = response!.map((v) => v.toJson()).toList();
//     }
//     if (event != null) {
//       data['event'] = event!.map((v) => v.toJson()).toList();
//     }
//     if (protocolProfileBehavior != null) {
//       data['protocolProfileBehavior'] = protocolProfileBehavior!.toJson();
//     }
//     return data;
//   }
// }

// class Request {
//   Auth? auth;
//   String? method;
//   List<Header>? header;
//   Url? url;
//   Body? body;

//   Request({this.auth, this.method, this.header, this.url, this.body});

//   Request.fromJson(Map<String, dynamic> json) {
//     auth = json['auth'] != null ?  Auth.fromJson(json['auth']) : null;
//     method = json['method'];
//     if (json['header'] != null) {
//       header = <Header>[];
//       json['header'].forEach((v) {
//         header!.add( Header.fromJson(v));
//       });
//     }
//     url = json['url'] != null ?  Url.fromJson(json['url']) : null;
//     body = json['body'] != null ?  Body.fromJson(json['body']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     if (.auth != null) {
//       data['auth'] = auth!.toJson();
//     }
//     data['method'] = method;
//     if (header != null) {
//       data['header'] = header!.map((v) => v.toJson()).toList();
//     }
//     if (url != null) {
//       data['url'] = url!.toJson();
//     }
//     if (body != null) {
//       data['body'] = body!.toJson();
//     }
//     return data;
//   }
// }

// class Auth {
//   String? type;
//   List<Bearer>? bearer;

//   Auth({this.type, this.bearer});

//   Auth.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     if (json['bearer'] != null) {
//       bearer = <Bearer>[];
//       json['bearer'].forEach((v) {
//         bearer!.add(Bearer.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['type'] = type;
//     if (bearer != null) {
//       data['bearer'] = bearer!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Bearer {
//   String? key;
//   String? value;
//   String? type;

//   Bearer({this.key, this.value, this.type});

//   Bearer.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['key'] = key;
//     data['value'] = value;
//     data['type'] = type;
//     return data;
//   }
// }

// class Header {
//   String? key;
//   String? value;
//   String? type;
//   bool? disabled;
//   String? warning;

//   Header({this.key, this.value, this.type, this.disabled, this.warning});

//   Header.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//     type = json['type'];
//     disabled = json['disabled'];
//     warning = json['warning'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['key'] = key;
//     data['value'] = value;
//     data['type'] = type;
//     data['disabled'] =disabled;
//     data['warning'] =warning;
//     return data;
//   }
// }

// class Url {
//   String? raw;
//   List<String>? host;
//   List<String>? path;
//   List<Query>? query;

//   Url({this.raw, this.host, this.path, this.query});

//   Url.fromJson(Map<String, dynamic> json) {
//     raw = json['raw'];
//     host = json['host'].cast<String>();
//     path = json['path'].cast<String>();
//     if (json['query'] != null) {
//       query = <Query>[];
//       json['query'].forEach((v) {
//         query!.add( Query.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['raw'] = raw;
//     data['host'] = host;
//     data['path'] = path;
//     if (query != null) {
//       data['query'] = query!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Query {
//   String? key;
//   String? value;
//   bool? disabled;

//   Query({this.key, this.value, this.disabled});

//   Query.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//     disabled = json['disabled'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['key'] = key;
//     data['value'] = value;
//     data['disabled'] = disabled;
//     return data;
//   }
// }

// class Body {
//   String? mode;
//   List<Formdata>? formdata;
//   String? raw;
//   Options? options;

//   Body({this.mode, this.formdata, this.raw, this.options});

//   Body.fromJson(Map<String, dynamic> json) {
//     mode = json['mode'];
//     if (json['formdata'] != null) {
//       formdata = <Formdata>[];
//       json['formdata'].forEach((v) {
//         formdata!.add( Formdata.fromJson(v));
//       });
//     }
//     raw = json['raw'];
//     options =
//         json['options'] != null ?  Options.fromJson(json['options']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['mode'] = mode;
//     if (formdata != null) {
//       data['formdata'] = formdata!.map((v) => v.toJson()).toList();
//     }
//     data['raw'] = raw;
//     if (options != null) {
//       data['options'] = options!.toJson();
//     }
//     return data;
//   }
// }

// class Formdata {
//   String? key;
//   String? value;
//   String? type;
//   bool? disabled;
//   String? src;

//   Formdata({this.key, this.value, this.type, this.disabled, this.src});

//   Formdata.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//     type = json['type'];
//     disabled = json['disabled'];
//     src = json['src'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['key'] = key;
//     data['value'] = value;
//     data['type'] = type;
//     data['disabled'] = disabled;
//     data['src'] = src;
//     return data;
//   }
// }

// class Options {
//   Raw? raw;

//   Options({this.raw});

//   Options.fromJson(Map<String, dynamic> json) {
//     raw = json['raw'] != null ?  Raw.fromJson(json['raw']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     if (raw != null) {
//       data['raw'] = raw!.toJson();
//     }
//     return data;
//   }
// }

// class Raw {
//   String? language;

//   Raw({this.language});

//   Raw.fromJson(Map<String, dynamic> json) {
//     language = json['language'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     data['language'] = language;
//     return data;
//   }
// }

// class Event {
//   String? listen;
//   Script? script;

//   Event({this.listen, this.script});

//   Event.fromJson(Map<String, dynamic> json) {
//     listen = json['listen'];
//     script =
//         json['script'] != null ?  Script.fromJson(json['script']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  Map<String, dynamic>();
//     data['listen'] = listen;
//     if (this.script != null) {
//       data['script'] = this.script!.toJson();
//     }
//     return data;
//   }
// }

// class Script {
//   List<String>? exec;
//   String? type;

//   Script({this.exec, this.type});

//   Script.fromJson(Map<String, dynamic> json) {
//     exec = json['exec'].cast<String>();
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['exec'] = this.exec;
//     data['type'] = this.type;
//     return data;
//   }
// }

// class ProtocolProfileBehavior {
//   bool? disableBodyPruning;

//   ProtocolProfileBehavior({this.disableBodyPruning});

//   ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) {
//     disableBodyPruning = json['disableBodyPruning'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['disableBodyPruning'] = this.disableBodyPruning;
//     return data;
//   }
// }

// class Variable {
//   String? key;
//   String? value;
//   String? type;
//   bool? disabled;

//   Variable({this.key, this.value, this.type, this.disabled});

//   Variable.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//     type = json['type'];
//     disabled = json['disabled'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['key'] = this.key;
//     data['value'] = this.value;
//     data['type'] = this.type;
//     data['disabled'] = this.disabled;
//     return data;
//   }
// }

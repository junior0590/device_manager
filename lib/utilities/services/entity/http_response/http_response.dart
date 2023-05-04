// class HttpResponse<T> {
//   List<T>? data;
//   int? status;
//   HttpResponse({
//     this.data,
//     this.status,
//   });

//     HttpResponse.fromJson(Map<String, dynamic> json) {
//     if (json['filters'] != null) {
//       data = <HttpResponse<T>>[];
//       json['filters'].forEach((v) {
//         data!.add(new HttpResponse<T>.fromJson(v));
//       });
//     }
//     status = json['status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['filters'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['status'] = this.status;
//     return data;
//   }
// }

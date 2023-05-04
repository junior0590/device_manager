import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'dart:io';

import '../http_calls/auth_provider.dart';
import '../services/entity/contract_data/contract_data.dart';
import '../classes/contract_photo_upload.dart';

class ContractProvider with ChangeNotifier {
  List<CustomerData>? _customers = [];
  List<ContractPhoto>? _customerPhotosToUpload = [];
  String? _pandadocWebLink = "";
  bool? _isPandaDocContractCreated = false;

  List<CustomerData> get getCustomers {
    return [...?_customers];
  }

  List<ContractPhoto> get getPhotosToUpload {
    return [...?_customerPhotosToUpload];
  }

  bool get isPhotoUploadEmpty {
    return _customerPhotosToUpload!.length == 0;
  }

  String? get contractWebLink {
    return _pandadocWebLink;
  }

  bool? get isContractCreated {
    return _isPandaDocContractCreated;
  }

  bool get verifyIfImagesAreUploaded {
    int customersLength = _customers!.length;
    int imagesUploaded = 0;

    for (var index = 0; index < _customers!.length; index++) {
      if (_customers![index].showImage!) {
        imagesUploaded += 1;
      }
    }

    if (customersLength == imagesUploaded) {
      return true;
    } else {
      return false;
    }
  }

  set pandadocWebLink(String link) {
    _pandadocWebLink = link;
    notifyListeners();
  }

  void resetPhotos() {
    _customers = [];
    _customerPhotosToUpload = [];
  }

  void addCustomerPhoto(
      CustomerData? customerData, String customerId, String contractId) {
    _customers!.add(customerData!);
    _customerPhotosToUpload!.add(
      ContractPhoto(
        file: null,
        filename: null,
        action: "none",
        contract_id: contractId,
        customer_id: customerId,
      ),
    );

    notifyListeners();
  }

  updateCustomers(String action, CustomerData? customerData,
      [String? localImageUrl]) {
    if (action == "delete") {
      int customerIndex = _customers!.indexOf(customerData!);
      _customers![customerIndex].photo_id_url = null;

      notifyListeners();
    } else if (action == "update") {
      _customers!.forEach((customer) {
        if (customer.customer_email == customerData!.customer_email) {
          List<int>? imageBytes = File(localImageUrl!).readAsBytesSync();
          String? base64Image = base64Encode(imageBytes);

          customer.photo_id_url = base64Image;
          customer.showImage = false;
        }
      });

      notifyListeners();
    }
  }

  updateCustomerPhotosUpload(
      String action, ContractPhoto? customerPhotoToUpload) {
    if (action == "none") {
      int indexUploadPhoto =
          _customerPhotosToUpload!.indexOf(customerPhotoToUpload!);

      if (indexUploadPhoto != -1) {
        _customerPhotosToUpload![indexUploadPhoto].file = null;
        _customerPhotosToUpload![indexUploadPhoto].filename = null;
        _customerPhotosToUpload![indexUploadPhoto].action = "none";
      } else {
        _customerPhotosToUpload!.forEach((customerPhoto) {
          if (customerPhoto.customer_id == customerPhotoToUpload.customer_id) {
            customerPhoto.file = null;
            customerPhoto.filename = null;
            customerPhoto.action = "none";
          }
        });
      }
    } else if (action == "update") {
      for (var customerIndex = 0;
          customerIndex < _customerPhotosToUpload!.length;
          customerIndex++) {
        if (_customerPhotosToUpload![customerIndex].customer_id ==
            customerPhotoToUpload!.customer_id) {
          _customerPhotosToUpload![customerIndex].file =
              customerPhotoToUpload.file;
          _customerPhotosToUpload![customerIndex].filename =
              customerPhotoToUpload.filename;
          _customerPhotosToUpload![customerIndex].action =
              customerPhotoToUpload.action;
          _customerPhotosToUpload![customerIndex].contract_id =
              customerPhotoToUpload.contract_id;
          _customerPhotosToUpload![customerIndex].customer_id =
              customerPhotoToUpload.customer_id;
        }
      }
    }
  }

  contractIsCreated() {
    _isPandaDocContractCreated = true;
    notifyListeners();
  }

  contractIsNotCreated() {
    _isPandaDocContractCreated = false;
    notifyListeners();
  }

}

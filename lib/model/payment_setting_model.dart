class PaymentSettingModel {
  bool success;
  Data data;

  PaymentSettingModel({this.success, this.data});

  PaymentSettingModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  int cod;
  int stripe;
  int razorpay;
  int paypal;
  String stripePublishKey;
  String stripeSecretKey;
  String paypalProduction;
  String paypalSendbox;
  String paypal_client_id;
  String paypal_secret_key;
  String razorpayPublishKey;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
        this.cod,
        this.stripe,
        this.razorpay,
        this.paypal,
        this.stripePublishKey,
        this.stripeSecretKey,
        this.paypalProduction,
        this.paypalSendbox,
        this.razorpayPublishKey,
        this.paypal_client_id,
        this.paypal_secret_key,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cod = json['cod'];
    stripe = json['stripe'];
    razorpay = json['razorpay'];
    paypal = json['paypal'];
    stripePublishKey = json['stripe_publish_key'];
    stripeSecretKey = json['stripe_secret_key'];
    paypalProduction = json['paypal_production'];
    paypalSendbox = json['paypal_sendbox'];
    razorpayPublishKey = json['razorpay_publish_key'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    paypal_client_id =  json['paypal_client_id'];
    paypal_secret_key = json['paypal_secret_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cod'] = this.cod;
    data['stripe'] = this.stripe;
    data['razorpay'] = this.razorpay;
    data['paypal'] = this.paypal;
    data['stripe_publish_key'] = this.stripePublishKey;
    data['stripe_secret_key'] = this.stripeSecretKey;
    data['paypal_production'] = this.paypalProduction;
    data['paypal_sendbox'] = this.paypalSendbox;
    data['razorpay_publish_key'] = this.razorpayPublishKey;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['paypal_client_id'] = this.paypal_client_id;
    data['paypal_secret_key'] = this.paypal_secret_key;
    return data;
  }
}
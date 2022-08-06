import 'dart:convert';
import 'package:e_learning/Model/GetAllCommentModel.dart';
import 'package:e_learning/Model/GetCommentModel.dart';
import 'package:e_learning/Model/LoginModel.dart';
import 'package:e_learning/Model/RemoveCart.dart';
import 'package:http/http.dart' as http;
import '../Model/Addtocart.dart';
import '../Model/AddwishListModel.dart';
import '../Model/GetAddModel.dart';
import '../Model/GetAllCouponModel.dart';
import '../Model/GetAllDataModel.dart';
import '../Model/GetAllFaqModel.dart';
import '../Model/GetAllPostModel.dart';
import '../Model/GetAllQuizModel.dart';
import '../Model/GetCartModel.dart';
import '../Model/GetCategoryByIdModel.dart';
import '../Model/GetCategoryModel.dart';
import '../Model/GetCourseBuyModel.dart';
import '../Model/GetCourseModel.dart';
import '../Model/GetLessonModel.dart';
import '../Model/GetMyCourseModel.dart';
import '../Model/GetProfileModel.dart';
import '../Model/GetPurchaseModel.dart';
import '../Model/GetQuizModel.dart';
import '../Model/GetReviewModel.dart';
import '../Model/GetSingleCourseModel.dart';
import '../Model/GetSingleFaqDetialModel.dart';
import '../Model/GetSingleLessonModel.dart';
import '../Model/GetSingleQuizModel.dart';
import '../Model/GetSubQuizModel.dart';
import '../Model/GetSubscriptionModel.dart';
import '../Model/GetWishlistModel.dart';
import '../Model/SignupModel.dart';
import '../Model/SubscriptionModel.dart';
Future<SignupModel?> getSignup(
    userFullName, userEmail, userPassword, firebaseToken) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Authentication/registration'));
  request.fields.addAll({
    'user_fullname': '$userFullName',
    'user_email': '$userEmail',
    'user_password': '$userPassword',
    'firebaseToken': '$firebaseToken'
  });

  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    // print(await response.stream.bytesToString());
    final str = await response.stream.bytesToString();
    return SignupModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<LoginModel?> getLogin(emailId, passwordId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Authentication/login'));
  request.fields.addAll({'email': '$emailId', 'password': '$passwordId'});
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return LoginModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetProfileModel?> getProfileapi(userId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Authentication/get_profile'));
  request.fields.addAll({'user_id': '$userId'});
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetProfileModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCategoryModel?> getCategory() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_category'));

  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetCategoryModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCourseModel?> getCourse(type) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_course'));
  request.fields.addAll({'type': '$type'});
  print(request);
  print(request.fields);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetCourseModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<Addtocart?> AddtoCart(userId, courseId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/add_to_cart'));
  request.fields.addAll({
    'user_id': '$userId',
    'course_id': '$courseId'
  });
  http.StreamedResponse response = await request.send();
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return Addtocart.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCartModel?> getCart(userId) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/get_cart'));
  request.fields.addAll({'user_id': '$userId'});
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetCartModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetQuizModel?> getQuiz(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_quizes'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetQuizModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetLessonModel?> getLession(cId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_lesson'));
  request.fields.addAll({'course_id': '$cId'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetLessonModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSingleCourseModel?> getSingleCourese(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_singleCourse'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();
  print(response.statusCode);
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetSingleCourseModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSingleQuizModel?> getSignleQuiz(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_singlequize'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetSingleQuizModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSingleLessonModel?> getSingleLesson(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_singlelesson'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetSingleLessonModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllQuizModel?> getAllQuiz() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/getallquize'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetAllQuizModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllFaqModel?> getAllFaQ() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/getallfaqs'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetAllFaqModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSingleFaqDetialModel?> getSingleFaqDetails(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_singlefaqs'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetSingleFaqDetialModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<AddwishListModel?> addWishlist(courseId, userId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/addWishList'));
  request.fields.addAll({'course_id': '$courseId', 'user_id': '$userId'});

  http.StreamedResponse response = await request.send();
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return AddwishListModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetWishlistModel?> getWishList(userId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_wishlist'));
  request.fields.addAll({'user_id': '$userId'});

  http.StreamedResponse response = await request.send();
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetWishlistModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCourseBuyModel?> getCourseBuy(purchaseType, userId, subTotal,
    courseId, totalItem, pmethodId, paymentStatus) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/coursebuy'));
  request.fields.addAll({
    'purchase_type': '$purchaseType',
    'user_id': '$userId',
    'subtotal': '$subTotal',
    'course_id': '$courseId',
    'total_item': '$totalItem',
    'pmethod_id': '$pmethodId',
    'payment_status': '$paymentStatus'
  });

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetCourseBuyModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSubQuizModel?> getSubQuiz(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_subquizes'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();
  print(response.statusCode);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetSubQuizModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetPurchaseModel?> getPurchaseHistory(userId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_Purchasehistory'));
  request.fields.addAll({'user_id': '$userId'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetPurchaseModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetMyCourseModel?> getMyCourse(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_mycourse'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetMyCourseModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCategoryByIdModel?> getCategoryById(id)
async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_category_by_id'));
  request.fields.addAll({'id': '$id'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return GetCategoryByIdModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future checkOut(userId, transId, transNo, amount) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/checkout'));
  request.fields.addAll({
    'user_id': '$userId',
    'transaction_id': '$transId',
    'transaction_num': '$transNo',
    'amount': '$amount'
  });

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}

Future<RemoveCart?> removeCart(userId, cartId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/remove_cart'));
  request.fields.addAll({'user_id': '$userId', 'cart_id': '$cartId'});

  http.StreamedResponse response = await request.send();
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return RemoveCart.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAddModel?> addQueAns(userId, tiTile, image) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/add'));
  request.fields.addAll({
    'user_id': '$userId',
    'title': '$tiTile'
    // 'prod_img': '$image'
  });
  request.files.add(await http.MultipartFile.fromPath('prod_img', '$image'));

  http.StreamedResponse response = await request.send();
  print(request.fields);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetAddModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllDataModel?> getAddData(userId) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/get_add'));
  request.fields.addAll({'user_id': '$userId'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetAllDataModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllPostModel?> getAllPost() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/getallpost'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetAllPostModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetCommentModel?> createComment(postId, comment, title, userId) async {
  var request = http.MultipartRequest('POST',
      Uri.parse('https://alphawizztest.tk/newlearning/api/Products/comment'));
  request.fields.addAll({
    'post_id': '$postId',
    'comment': '$comment',
    'title': '$title',
    'user_id': '$userId'
  });

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetCommentModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllCommentModel?> getAllComment(postId) async {
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/getallcomment'));
  request.fields.addAll({'post_id': '$postId'});

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetAllCommentModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetAllCouponModel?> getAllCoupon() async {
  var headers = {'Cookie': 'ci_session=09janhbsqmulitnsqmkk60ogvdcff7t8'};
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/getallcoupons'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetAllCouponModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetReviewModel?> getReview(reviewableid) async {
  var headers = {'Cookie': 'ci_session=09janhbsqmulitnsqmkk60ogvdcff7t8'};
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_review'));
  request.fields.addAll({'reviewable_id': '$reviewableid'});

  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetReviewModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<SubscriptionModel?> subcription(planId, name, price, userId) async {
  var headers = {'Cookie': 'ci_session=09janhbsqmulitnsqmkk60ogvdcff7t8'};
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/subscription'));
  request.fields.addAll({
    'plan_id': '$planId',
    'name': '$name',
    'price': '$price',
    'user_id': '$userId'
  });
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return SubscriptionModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<GetSubscriptionModel?> getSubcription(userId) async {
  var headers = {'Cookie': 'ci_session=09janhbsqmulitnsqmkk60ogvdcff7t8'};
  var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://alphawizztest.tk/newlearning/api/Products/get_subscription'));
  request.fields.addAll({'user_id': '$userId'});

  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return GetSubscriptionModel.fromJson(json.decode(str));
  } else {
    return null;
  }
}
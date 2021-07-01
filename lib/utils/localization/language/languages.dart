import 'package:flutter/material.dart';

abstract class Languages {
  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  //Setting Screen
  String get screenSetting;
  String get labelSelectLanguage;
  String get labelEditPersonalInfo;
  String get labelManageYourLocation;
  String get labelChangePassword;
  String get labelLanguage;
  String get labelAboutApp;
  String get labelAboutCompany;
  String get labelPrivacyPolicy;
  String get labelTermofuse;
  String get labelFeedbacknSup;
  String get labelFAQs;
  String get labelRemoveAccount;
  String get labelLogout;
  String get labelMealupAppVersion;

  // Edit Personal Info
  String get IFSC_code;
  String get MICR_code;
  String get bank_account_number;
  String get bank_account_name;
  String get IFSC_code1;
  String get MICR_code1;
  String get bank_account_number1;
  String get bank_account_name1;
  String get IFSC_code2;
  String get MICR_code2;
  String get bank_account_number2;
  String get bank_account_name2;
  String get labelSubmit;
  String get labelPersonalDetails;
  String get labelFinancialDetails;

  // Introscreen 1
  String get labelScreenIntro1Line1;
  String get labelScreenIntro1Line2;
  String get labelSkip;

  // Introscreen 2
  String get labelScreenIntro2Line1;
  String get labelScreenIntro2Line2;

  // Introscreen 3
  String get labelScreenIntro3Line1;
  String get labelScreenIntro3Line2;

  // Login Screen
  String get labelEmail;
  String get labelPassword;
  String get labelForgotPassword;
  String get labelEnterYourEmailID;
  String get labelEnterYourPassword;
  String get labelRememberMe;
  String get labelLogin;
  String get labelDonthaveAcc;
  String get labelCreateNow;
  String get labelExploreAppwithoutLogin;
  String get labelSkipNow;
  String get labelEmailRequired;
  String get labelEnterValidEmail;
  String get labelEmailPasswordWrong;
  String get labelLoginSuccessfully;

  // Create New account screen
  String get labelCreateNewAccount;
  String get labelFullName;
  String get labelEnterYourFullName;
  String get labelContactNumber;
  String get labelConfirmPassword;
  String get labelReEnterPassword;
  String get labelAlreadyHaveAccount;
  String get labelContactNumberRequired;
  String get labelContactNumberNotValid;
  String get labelFullNameRequired;
  String get labelEmailIdAlreadyTaken;
  String get labelInvalidData;

  // OTP Screen

  String get labelOTP;
  String get labelEnterOTP;
  String get labelVerifyNow;
  String get labelDontReceiveCode;
  String get labelResendAgain;
  String get labelOTPBottomLine;

  // Change Password Screen
  String get labelSubmitThis;
  String get labelChangePasswordBottomline;

  // Change Password Screen1
  String get labelNewPassword;
  String get labelenterNewPassword;
  String get labelReEnterNewPassword;
  String get labelPasswordRequired;
  String get labelPasswordConfPassnotMatch;
  String get labelPasswordvalidation;

  // Profile Screen
  String get labelProfile;
  String get labelYourFavorites;
  String get labelOrderHistory;
  String get labelShareWithFriends;

  // Bottom navigation menu title

  String get labelHome;
  String get labelExplore;
  String get labelCart;

  // Home Screen

  String get labelExploreTheBestCuisines;
  String get labelTopRestaurantsNear;
  String get labelPureVegRest;
  String get labelNonPureVegRest;
  String get labelExploreRest;
  String get labelTopRest;
  String get labelSelectAddress;
  String get labelNodata;
  String get labelNoRestNear;
  String get labelpleasewait;
  String get labelkmFarAway;

  String get labelAreYouSureExit;
  String get labelConfirmExit;
  String get labelYES;
  String get labelNO;

  String get labelErrorWhileAddAddress;

  // My Cart screen
  String get labelYourCart;
  String get labelbookOrder;
  String get labeldelivery;
  String get labelTakeaway;
  String get labelAddMoreItems;
  String get labelCustomizable;
  String get labelAddRequestToRest;
  String get labelOptional;
  String get labelFoodOfferCoupons;
  String get labelSearchRestOrCoupon;
  String get labelYouHaveCoupon;
  String get labelApplyIt;
  String get labelSubtotal;
  String get labelAppliedCoupon;
  String get labelRemoveCoupon;
  String get labelDeliveryCharge;
  String get labelTax;
  String get labelVendorDiscount;
  String get labelGrandTotal;
  String get labelPleaseAddAddress;
  String get labelEditAddress;
  String get labelRemoveThisAddress;
  String get labelContinue;
  String get labelDeliveryUnavailable;
  String get labelTakeawayUnavailable;
  String get labelNoOffer;

  // Set Location Screen
  String get labelSetLocation;

  // Search Screen
  String get labelSearchSomething;
  String get labelRecentlySearches;
  String get labelClear;
  String get labelSearchByFood;
  String get labelSearchByTopBrands;

  // Filter Bottomsheet

  String get labelCancel;
  String get labelApplyFilter;
  String get labelFilter;
  String get labelSortingBy;
  String get labelQuickFilters;
  String get labelCousines;
  String get labelHighToLow;
  String get labelLowToHigh;
  String get labelVegRestaurant;
  String get labelNonVegRestaurant;
  String get labelBothVegNonVeg;

  String get labelAddNewAddress;
  String get labelSavedAddress;

  // Manage Address Screen
  String get labelAddAddress;
  String get labelRemoveAddress;
  String get labelNoGoBack;
  String get labelYesRemoveIt;

  // Edit Address

  String get labelSearchLocation;
  String get labelHouseNo;
  String get labelTypeFullAddressHere;
  String get labelLandmark;
  String get labelAnyLandmarkNearYourLocation;
  String get labelAttachLabel;
  String get labelAddLabelForThisLocation;
  String get labelPleaseSearchaddress;
  String get labelPleaseAddLabelforaddress;
  String get labelSaveIt;

  // Edit Personal Info
  String get labelUpdate;

  // About App
  String get labelVersion;

  // Feedback n support

  String get labelAddYourExperience;
  String get labelAddYourExperienceHere;
  String get labelMax3Image;
  String get labelPleaseSelectemoji;
  String get labelShareFeedback;
  String get labelPhotoLibrary;
  String get labelCamera;
  String get labelFeedbackCommentRequired;

  // Payment Method screen
  String get labelPaymentMethod;
  String get labelCashOnDelivery;
  String get labelPleaseSelectpaymentMethod;
  String get labelPlaceYourOrder;

  // Order History Screen
  String get labelClearList;
  String get labelOrderedOn;
  String get labelCanceledOn;
  String get labelAcceptedOn;
  String get labelApproveOn;
  String get labelDeliveredOn;
  String get labelPickedUpOn;
  String get labelRejectedOn;
  String get labelOrderPending;
  String get labelOrderCanceled;
  String get labelOrderAccepted;
  String get labelOrderCompleted;
  String get labelOrderPickedUp;
  String get labelOrderRejected;
  String get labelDeliveredSuccess;
  String get labelPREPARE_FOR_ORDER;
  String get labelREADY_FOR_ORDER;
  String get labelRateNow;
  String get labelTrackOrder;
  String get labelNoOrderHistory;

  // Order Details Screen
  String get labelOrderDetails;
  String get labelCancelOrder;
  String get labelDeliveredBy;
  String get labelOrderCancelReason;
  String get labelTypeOrderCancelReason;
  String get labelYesCancelIt;
  String get labelYesRaiseIt;
  String get labelPleaseEnterCancelReason;
  String get labelRaiseRefundRequest;
  String get labelRaiseRefundRequestReason;
  String get labelRaiseRefundRequestReason1;
  String get labelPleaseEnterRaiseRefundReq;

  // Track Order Screen

  String get labelViewOrderDetails;
  String get labelFoodBeingPrepared;
  String get labelFoodReadyPickup;

  // Order Review Screen

  String get labelOrderReview;
  String get labelGiveStar;
  String get labelReviewThisFood;
  String get labelAddYourValuableFeedback;
  String get labelPleaseGiveStar;
  String get labelSubmitIt;
  String get labelInternalServerError;

  String get labelFactAQuestions;

  // Restaurants Details
  String get labelErrorWhileUpdate;
  String get labelTotalItem;
  String get labelSearchItems;
  String get labelRatings;
  String get labelFor2Persons;
  String get labelItem;
  String get labelRemoveCartItem;
  String get labelYourCartContainsDishesFrom;
  String get labelYourCartContains1;

  // your fav screen

  String get labelAreYouSureToRemove;
  String get labelRemoveFromTheList;
  String get labelValidUpTo;

  String get labelPleaseLoginToAddFavorite;
}

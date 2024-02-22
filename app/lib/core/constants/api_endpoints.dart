class ApiEndpoints {
  static const String baseUrl = "https://audiocult.net/restful_api/";
  static const String placeUrl = 'https://maps.googleapis.com/maps/api/';

  static const String getRoles = "user/groups";

  static const String getFeeds = 'feed';

  static const String register = 'user';

  static const String logout = 'revoke';

  static const String createNewPassword = 'user/reset-password';

  static const String resendPassword = "user/forgot-password";

  static const String resendCode = 'user/verify-reset-password';

  static const String authenticate = "token";

  static const String getPlaces = "place/autocomplete/json";

  static const String getPlaceDetail = "place/details/json";
}

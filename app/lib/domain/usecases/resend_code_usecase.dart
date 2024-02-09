class ResendCodeParams {
  final String? code;
  final String? token;

  ResendCodeParams({
    this.code,
    this.token,
  });

  Map<String, dynamic> toJson() => {
        "val[code]": code,
        "token": token,
      };
}

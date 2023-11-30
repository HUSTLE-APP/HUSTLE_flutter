abstract class _Paths {
  _Paths._();

  //이벤트 상세
  static const event_detail = '/eventDetail';

  /// 경기 화면
  static const match = "/match";

  /// 스플래시 화면
  static const splash = "/splash";

  /// 온보딩 화면
  static const onboarding = "/onboarding";

  /// 로그인 화면
  static const login = "/login";

  /// 메인 화면
  static const main = "/main";

  /// 홈 화면
  static const home = "/home";

  ///불타는 매치 화면
  static const burning_match = "/burning_match";

  ///불타는 매치 결제내역 화면
  static const burning_match_pay = "/burning_match_pay";

  /// 후원 화면
  static const donate = "/donate";

  /// 이벤트 화면
  static const event = "/event";

  /// 마이페이지 화면
  static const mypage = "/mypage";

  /// 대회생성 화면
  static const create = "/create";
}

abstract class Routes {
  Routes._();
  /// 경기 화면
  static const match = _Paths.match;

  /// 스플래시 화면
  static const splash = _Paths.splash;

  /// 온보딩 화면
  static const onboarding = _Paths.onboarding;

  /// 로그인 화면
  static const login = _Paths.login;

  /// 메인 화면
  static const main = _Paths.main;

  /// 홈 화면
  static const home = _Paths.home;

  /// 불타는 매치 화면
  static const burning_match = _Paths.burning_match;

  /// 불타는 매치 결제내역 화면
  static const burning_match_pay = _Paths.burning_match_pay;

  /// 후원 화면
  static const donate = _Paths.donate;

  /// 이벤트 화면
  static const event = _Paths.event;

  /// 이벤트 상세 화면
  static const event_detail = _Paths.event_detail;

  /// 마이페이지 화면
  static const mypage = _Paths.mypage;

  /// 대회생성 화면
  static const create = _Paths.create;
}

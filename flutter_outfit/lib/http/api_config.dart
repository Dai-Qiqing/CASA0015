class ApiConfig {
  static const baseUrl = 'http://192.168.31.137:4000';

  // 注册
  static const api_register = '/api/auth/register';
  // 登录
  static const api_login = '/api/auth/login';
  // 搭配
  static const api_outfit = '/api/outfit/list';
  // 热门搭配
  static const api_recommendation = '/api/outfit/recommendation';
  // 浏览量
  static const api_update_views = '/api/outfit/updateViews';
  // 浏览日期
  static const api_date = '/api/record/date';
  // 浏览历史
  static const api_record = '/api/record/list';

  static const connectTimeout = 3;
  static const receiveTimeout = 3;
  static const successCode = 200;
}

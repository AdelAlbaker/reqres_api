

class ApiConstace{

  static const String baseUrl='https://reqres.in/api';

  static  String getUserById(int id)=>'$baseUrl/users/$id';

  static  String getUsers(int page)=>'$baseUrl/users?page=$page';

  static const String itemsPath='$baseUrl/menu-items';

  static String itemsPathFunc(int page)=>'$baseUrl/menu-items/?page=$page';
  static String getItemById(int id)=>'$baseUrl/menu-items/$id';
  static const String refreshPath='$baseUrl/login/refresh/';
  static  String updateItemPath(int id)=>'$baseUrl/menu-items/$id';
  static  String loginPath='$baseUrl/login/';
}
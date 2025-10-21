class UserCubit{
  UserCubit.__internal();
  static UserCubit? _instance ;
  static UserCubit? get instance{
    if(_instance!=null){
      return _instance ;
    }else{
      _instance = UserCubit.__internal();
      return _instance ;
    }
  }
}

class Cubit{
  Cubit.__internal();
  static Cubit? _instance ;
  factory Cubit(){
    if(_instance ==null){
      _instance = Cubit.__internal();
      return _instance! ;
    }
    return _instance! ;
  }
}

class Data{
  Data.__internal();
  static final Data _instance = Data.__internal();
  factory Data() => _instance ;
}

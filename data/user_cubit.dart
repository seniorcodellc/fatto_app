// class UserCubit{
//   UserCubit.__internal();
//   static UserCubit? _instance;
//   static UserCubit? get instance{
//     if(_instance==null) {
//       return _instance=UserCubit.__internal();
//     }
//   return _instance;
//   }
// }

//case 2
// class UserCubit{
//   UserCubit.__internal();
//   static UserCubit? _instance;
// factory UserCubit (){
//   if(_instance==null) {
//     return _instance=UserCubit.__internal();
//   }
//   return _instance!;
// }
// }

//case3
class UserCubit {
  UserCubit.__internal();
  static final UserCubit _instance = UserCubit.__internal();
  factory UserCubit() {
    return _instance;
  }
}

main() {
  // UserCubit userOne = UserCubit.instance!;
  UserCubit userOne = UserCubit();
  UserCubit userTwo = UserCubit();
}

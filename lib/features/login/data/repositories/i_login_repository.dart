abstract class ILoginRepository {
  Future<bool?> login({required String email, required String password});
}

import '../../../../app_exports.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _userIdController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<SigninViewModel>(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            heightBox(20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            heightBox(20),

            Consumer<SigninViewModel>(
              builder: (context, vm, _) {
                return ElevatedButton(
                  onPressed: vm.isLoading
                      ? null
                      : () => vm.signin(
                          _userIdController.text,
                          _passwordController.text,
                        ),
                  child: vm.isLoading
                      ? CircularProgressIndicator()
                      : Text('Sign In'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


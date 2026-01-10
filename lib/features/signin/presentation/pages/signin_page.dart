import '../../../../app_exports.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _userEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _userEmailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<SigninViewModel>(),
      child: UnfocusWrapper(
        child: Scaffold(
          body: Form(
            key: formKey,
            child: Padding(
              padding: .all(12),
              child: ListView(
                children: [
                  heightBox(context.screenHeight * 0.05),
                  AppLogo(),
                  heightBox(context.screenHeight * 0.05),
                  CustomTextFormField(
                    prefixIcon: Iconsax.sms,
                    hintText: "Enter your email",
                    controller: _userEmailController,
                    label: "Email",
                    validator: Validator.validateEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  heightBox(20),
                  CustomTextFormField(
                    hintText: "Enter your Password",
                    prefixIcon: Iconsax.lock,
                    controller: _passwordController,
                    obscureText: true,
                    label: "Password",
                    validator: Validator.validatePassword,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  heightBox(40),
                  Consumer<SigninViewModel>(
                    builder: (context, vm, _) {
                      return CustomButton(
                        radius: 10,
                        onPressed: vm.isLoading
                            ? null
                            : () => vm.signin(
                                _userEmailController.text,
                                _passwordController.text,
                              ),
                        isLoading: vm.isLoading,
                        text: "Sign In",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

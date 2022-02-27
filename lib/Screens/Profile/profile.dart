import 'package:flutter/material.dart';
import 'package:mec_events/Screens/Profile/textfieldInput.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Row(
            children: [
              Text('MEC \n  Events'),
              SizedBox(width: MediaQuery.of(context).size.width*0.25,),
              Center(child: Text('Profile',style: TextStyle(fontSize: 28),))
            ],
          ),
          backgroundColor: Color(0xFF122F34),
        ),
      ),
        backgroundColor: Color(0xFF2B7581),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  Text(
                      '* Registration is open only to organizations upon verification',
                      style: TextStyle(color: Colors.grey, fontSize: 11)),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 125,
                    width: 125,
                    child: Center(
                      child: Image.asset('assets/timothee.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  TextFieldInput(
                      hintText: "Organisation Name",
                      textInputType: TextInputType.emailAddress,
                      textEditingController: _nameController),
                  const SizedBox(height: 24),
                  TextFieldInput(
                      hintText: "Organisation Email",
                      textInputType: TextInputType.emailAddress,
                      textEditingController: _emailController),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    hintText: "Password",
                    textInputType: TextInputType.text,
                    textEditingController: _passwordController,
                    isPass: true,
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    hintText: "Confirm Password",
                    textInputType: TextInputType.text,
                    textEditingController: _confirmController,
                    isPass: true,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    child: const Text('Register',
                        style: TextStyle(color: Colors.white)),
                    width: 136,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Color(0xFF1F525A),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Flexible(child: Container(), flex: 2)
                ],
              )),
        ),);
  }
}
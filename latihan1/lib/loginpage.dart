import "package:flutter/material.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  String status = "Login status";
  TextEditingController txtuser = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          //Align item/text V
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontFamily: 'Courier',
              ),
            ),
            Text("Masukkan username dan password anda :"),

            //Image dari resource
            Center(
              child: SizedBox(
                width: 50,
                child: Image.asset('assets/images/jos.png'),
              ),
            ),
            //Input Button
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: TextField(
                controller: txtuser,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  hintText: "Masukkan username anda!",
                ),
              ),
            ), //Label,hint,border
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: TextField(
                controller: txtpass,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Passwword anda!",
                ),
              ),
            ), //tambahkan hidden character
            //Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  if (txtuser.text == "Admin" && txtpass.text == "123") {
                    setState(() {
                      status = "Sukses Login!";
                    });
                  } else {
                    setState(() {
                      status = "Login gagal!";
                    });
                  }
                  print("Status : " + status);
                },
                child: Text("Login"),
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text("Belum punya akun? Daftar di sini"),
              ),
            ),

            Text(status),
          ],
        ),
      ),
    );
  }
}

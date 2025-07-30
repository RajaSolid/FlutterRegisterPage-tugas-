import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final nama = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  String gender = "Laki-Laki";
  DateTime? tggllahir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Jenis Kelamin"),
            Row(
              children: ["Laki-Laki", "Perempuan", "Lainnya"].map((value) {
                return Row(children: [
                  Radio(value: value, groupValue: gender, onChanged: (val){
                    setState(() {
                      gender = val!;
                    });
                  },
                  ),
                  Text(value),
                ],
                );
              }).toList(),
            ),
           const SizedBox(height: 10),
            const Text("Tanggal Lahir"),
            TextButton(
              onPressed: () async {
                final d = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2005),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (d != null) setState(() => tggllahir = d);
              },
              child: Text(
                tggllahir == null
                    ? "Pilih Tanggal"
                    : "${tggllahir!.day}/${tggllahir!.month}/${tggllahir!.year}",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Proses simpan atau validasi data
                print("Nama: ${nama.text}");
                print("Email: ${email.text}");
                print("Pass: ${pass.text}");
                print("Gender: $gender");
                print("Tanggal Lahir: $tggllahir");
              },
              child: const Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
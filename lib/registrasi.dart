import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer_example/main.dart';

enum ganderGroup { male, female, other }

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool isObscurePassword = true;
  ganderGroup _value = ganderGroup.male;
  bool man = false;
  bool men = false;
  bool mun = false;
  DateTime dateTime = DateTime(2022, 12, 24);
  final items = ['Premium', 'Standart','Paket Hemat'];
  String? value;
  var _kem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Registrasi'),
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZVrVj19ReQTesvPtxAkMu1GK5Tgn4j71ToxwxTr5QZRX8fWhD5xUgqVBWcb0d-ngDqAk&usqp=CAU'))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                          color: Color.fromARGB(174, 13, 138, 211),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("Nama Lengkap", "Juragan Kossan", false),
              buildTextField("Email", "Kosanku@yahud.com", false),
              buildTextField("Password", "********", true),
              buildTextField("Confirmasi Password", "********", true),
              buildTextField("Location", "Indonesia", false),
              SizedBox(height: 20),
              Text(
                'Pilih Tanggal Lahir',
                style: TextStyle(fontSize: 15),
              ),
              ElevatedButton(
                  child: Text(
                      '${dateTime.day}/${dateTime.month}/${dateTime.year}'),
                  onPressed: () async {
                    final date = await pickDate();
                    if (date == null) return;

                    setState(() => dateTime = date);
                  }),
              SizedBox(height: 20),
              Text(
                'Pilih Jenis Kelamin',
                style: TextStyle(fontSize: 15),
              ),
              RadioListTile(
                  value: ganderGroup.male,
                  title: const Text("Laki - laki"),
                  groupValue: _value,
                  onChanged: (ganderGroup? val) {
                    print(val);
                    setState(() {
                      _value = val!;
                    });
                  }),
              RadioListTile(
                  value: ganderGroup.female,
                  title: const Text("Perempuan"),
                  groupValue: _value,
                  onChanged: (ganderGroup? val) {
                    print(val);
                    setState(() {
                      _value = val!;
                    });
                  }),
              RadioListTile(
                  value: ganderGroup.other,
                  title: const Text("Lainnya"),
                  groupValue: _value,
                  onChanged: (ganderGroup? val) {
                    print(val);
                    setState(() {
                      _value = val!;
                    });
                  }),
              SizedBox(height: 20),
              Text(
                'Pilih Jenis Kosan',
                style: TextStyle(fontSize: 15),
              ),
              DropdownButton<String>(
                value: value,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
              SizedBox(height: 20),
              Text(
                'Pilih Desian Interior Kesukaan',
                style: TextStyle(fontSize: 15),
              ),
              CheckboxListTile(
                value: man,
                onChanged: (val) {
                  setState(() {
                    man = val!;
                  });
                },
                activeColor: Colors.teal,
                title: Text("High Class"),
                subtitle: Text("Desaign Modern Inernational Standart"),
              ),
              CheckboxListTile(
                value: men,
                onChanged: (val) {
                  setState(() {
                    men = val!;
                  });
                },
                activeColor: Colors.teal,
                title: Text("Superior class"),
                subtitle: Text("Desaign Modern Minimalis"),
              ),
              CheckboxListTile(
                value: mun,
                onChanged: (val) {
                  setState(() {
                    mun = val!;
                  });
                },
                activeColor: Colors.teal,
                title: Text("Standart"),
                subtitle: Text("Desaign Standart Indonesia "),
              ),
              SizedBox(height: 20),
              Text(
                'Privasi dan Keamanan',
                style: TextStyle(fontSize: 15),
              ),
              SwitchListTile(
                value: _kem,
                onChanged: (value) {
                  setState(() {
                    _kem = value;
                  });
                },
                title: Text('Biarkan orang lain melihat saya'),
                activeColor: Color.fromARGB(175, 13, 160, 150),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                    },
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                    },
                    child: Text("SAVE",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1990),
        lastDate: DateTime(2100),
      );
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
      );
}

Widget buildTextField(
    String labelText, String placeholder, bool isPasswordTextField) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      obscureText: isPasswordTextField ? true : false,
      decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  onPressed: () {})
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
    ),
  );
}

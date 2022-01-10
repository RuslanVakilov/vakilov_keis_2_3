import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VakilovKeis23 extends  StatefulWidget {
  const VakilovKeis23({Key? key}) : super(key: key);

  @override
  _VakilovKeis23State createState() => _VakilovKeis23State();
}

class _VakilovKeis23State extends State<VakilovKeis23> {
  final _messengerKey= GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    const borderStyle= OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFeceff1),width:2));
    const linkTextStyle=TextStyle(
        fontSize:18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0)
    );

    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar'),
            actions: <Widget>[
              IconButton(
                  tooltip: 'Баланс',
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              TextButton(
                onPressed: (){},
                child: const Text('Профиль'),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Container (
                    height: 200,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                          ),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png"),
                        ),
                        const Text('Навигация во Flutter'),
                        const Divider(
                          height: 20,
                          thickness: 1,
                          indent: 5,
                          endIndent: 0,
                          color: Colors.black,
                        ),

                      ],
                    ),

                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.one_k),
                  title: const Text('Каталог'),
                  onTap: (){
                    _messengerKey.currentState!.showSnackBar(
                        const SnackBar(content: Text('Переход в каталог')));
                  },
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 5,
                  endIndent: 0,
                  color: Colors.black,
                ),
                ListTile(
                  leading: const Icon(Icons.two_k),
                  title: const Text('Корзина'),
                  onTap: (){
                    _messengerKey.currentState!.showSnackBar(
                        const SnackBar(content: Text('Переход в корзину')));
                  },
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 5,
                  endIndent: 0,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Профиль'),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Настройки'),
                  onTap: (){
                    _messengerKey.currentState!.showSnackBar(
                        const SnackBar(content: Text('Переход в настройки')));
                  },
                ),

              ],
            ),
          ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 150,),
                const SizedBox(width: 103, height: 79.42,
                  child: Image(image:AssetImage('assets/dart-logo.png')),),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр'),
                Text('номера телефона',
                  style: TextStyle(fontSize:16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                SizedBox(height: 20,),
                const SizedBox(width: 244,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Телефон',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                const SizedBox(width: 244,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42,child:
                ElevatedButton(onPressed: (){},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),

                SizedBox(height: 62,),
                InkWell(child: const Text('Регистрация',
                  style: linkTextStyle,),
                    onTap: (){}),
                SizedBox(height: 20,),
                InkWell(child: Text('Забыли пароль',
                  style: linkTextStyle,),
                    onTap: (){}),
              ],),
            ),
          ),


      ),


    );
  }
}

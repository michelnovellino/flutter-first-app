import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _username = '';
  String _email = '';
  String _password = '';
  String _birthday = '';
  List _options = ['item 1', 'item 2', 'item 3', 'item 4'];
  String _defaultOpt = 'item 1';
  TextEditingController _inputBirthdayCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InputsPage')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
        children: <Widget>[
          _usernameInput(),
          Divider(),
          _emailInput(),
          Divider(),
          _passwordInput(),
          Divider(),
          _birthdayInput(context),
          Divider(),
          _renderDropdown(),
          Divider(),
          _setUser()
        ],
      ),
    );
  }

  Widget _usernameInput() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          counter: Text('Letras ${_username.length}'),
          hintText: 'username',
          labelText: 'Usuario',
          helperText: 'Elija un usuario único',
          suffixIcon: Icon(Icons.person)),
      onChanged: (value) {
        print(value);
        setState(() {
          _username = value;
        });
      },
    );
  }

  Widget _emailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          counter: Text('Letras ${_email.length}'),
          hintText: 'email@example.com',
          labelText: 'Email',
          suffixIcon: Icon(Icons.email)),
      onChanged: (value) {
        print(value);
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _passwordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          counter: Text('Letras ${_password.length}'),
          hintText: '******',
          labelText: 'Contraseña',
          helperText: '',
          suffixIcon: Icon(Icons.lock)),
      onChanged: (value) {
        print(value);
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _birthdayInput(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          counter: Text('Letras ${_password.length}'),
          hintText: 'Cumpleaños',
          labelText: '03/05/1987',
          helperText: '',
          suffixIcon: Icon(Icons.calendar_today)),
      controller: _inputBirthdayCtrl,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _setDate(context);
      },
    );
  }

  void _setDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2015),
        lastDate: DateTime.now(),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _birthday = picked.toString();
        _inputBirthdayCtrl.text = _birthday;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpt() {
    List<DropdownMenuItem<String>> options = new List();
    _options.forEach((opt) {
      options.add(DropdownMenuItem(
        child: Text(opt),
        value: opt,
      ));
    });
    return options;
  }

  Widget _renderDropdown() {
    return Row(
      children: <Widget>[
        /* SizedBox(width: 7.00), */
        Expanded(
          child: DropdownButton(
            value: _defaultOpt,
            items: getOpt(),
            onChanged: (opt) {
              setState(() {
                _defaultOpt = opt;
              });
            },
          ),
        ),
        Icon(Icons.select_all)
      ],
    );
  }

  Widget _setUser() {
    return ListTile(
      title: Text('usuario: $_username'),
      subtitle: Text('email: $_email'),
    );
  }
}

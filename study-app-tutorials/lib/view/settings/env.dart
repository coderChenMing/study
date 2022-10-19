import 'package:flutter/material.dart';
import 'package:tutorials/component/cache/http_request_caches.dart';
import 'package:tutorials/component/dialog/dialogs.dart';
import 'package:tutorials/component/sp/shared_preference_helper.dart';
import 'package:tutorials/constant/route_constant.dart';
import 'package:tutorials/constant/sp_constant.dart';
import 'package:tutorials/locale/translations.dart';

class Environment extends StatefulWidget {
  @override
  _Environment createState() => new _Environment();
}

class _Environment extends State <Environment>{

  List <FMRadioModel> _datas = [];

  int groupValue = 1;

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData(){
    _datas.add(FMRadioModel(1, "Dev"));
    _datas.add(FMRadioModel(2, "Test"));
    _datas.add(FMRadioModel(3, "Prod"));
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.textOf(context, "env.title")),
      ),
      body: ListView.builder(
          itemCount: _datas.length,
          itemBuilder: (context, index){
            FMRadioModel model = _datas[index];
            return _buildRow(model);
          }
      ),
    );
  }

  Row _buildRow(FMRadioModel model){
    return Row(
      children: [
        _radio(model),
        Text("${model.text}")
      ],
    );
  }

  Radio _radio(FMRadioModel model){
    return Radio(
        value: model.index,
        groupValue: groupValue,
        onChanged: (index){
          groupValue = index;
          print(index);
          setState(() {

          });
        }
    );
  }



  void go() {
    Navigator.of(context).pushNamed(
        RouteNameConstant.route_name_env_edit);
  }


}

class FMRadioModel extends Object {

  int index;
  String text;

  FMRadioModel(this.index, this.text);
}



import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:psymokare/pages/util/index.dart';
class vc extends StatefulWidget {
  const vc({Key? key}) : super(key: key);

  @override
  State<vc> createState() => _vcState();
}

class _vcState extends State<vc> {
  final _channelController=TextEditingController();
  bool _validateerror= false;
  ClientRole? _role=ClientRole.Broadcaster;
  @override
  void dispose(){
    _channelController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        title: const Text("Dr. Parmar's Meet"),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60,),
              TextField(
                controller: _channelController,
                decoration: InputDecoration(
                  errorText: _validateerror? 'Channel name is mandatory':null,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                  hintText: "Channel Name",
                ),
              ),
              RadioListTile(
                title: const Text("Broadcaster"),
                  value: ClientRole.Broadcaster,
                  groupValue: _role,
                  onChanged: (ClientRole ? value){
                  setState(() {
                    _role=value;
                  });
                  }),
              RadioListTile(
                  title: const Text("Audience"),
                  value: ClientRole.Audience,
                  groupValue: _role,
                  onChanged: (ClientRole ? value){
                    setState(() {
                      _role=value;
                    });
                  }),
              ElevatedButton(
                  onPressed: onJoin,
                  child: const Text("Join"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF29558B),
                minimumSize: const Size(double.infinity, 40),
              ),)
            ],
          ),
        ),
      ),
    );
  }
  Future<void> onJoin() async{
    setState(() {
      _channelController.text.isEmpty? _validateerror=true:_validateerror=false;
    });
    if(_channelController.text.isNotEmpty){
      await _handleCameraandMic(Permission.camera);
      await _handleCameraandMic(Permission.microphone);
      await Navigator.push(context, MaterialPageRoute(builder: (context)=>ind(
        channelName: _channelController.text,
        role: _role,
      )));
    }
  }

  Future<void> _handleCameraandMic(Permission permission) async{
    final status= await permission.request();
    log(status.toString());
  }
}



import 'package:flutter/material.dart';
import 'package:hnig_task2/cv_home_page.dart';


class EditPage extends StatefulWidget {
  String fullName;
  String slackUsername;
  String githubHandle;
  String bio;
  final Function(String, String, String, String) onUpdate;
  EditPage({super.key, required this.bio, required this.githubHandle, required this.slackUsername, required this.fullName, required this.onUpdate});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CV Application')),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: ListView(
              children: [
                TextFormField(
                  controller: fullNameController,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    labelText: 'Full Name,',labelStyle: TextStyle(
                    fontSize: 20
                  )),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: slackUsernameController,
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      labelText: 'Slack Username',labelStyle: TextStyle(
                      fontSize: 20
                  )),),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: githubHandleController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      labelText: 'GitHub Handle', labelStyle: TextStyle(fontSize: 20)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: bioController,
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      labelText: 'Bio', labelStyle: TextStyle(
                      fontSize: 20
                  )),),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width* 0.5, 50)
                  ),
                  onPressed: () {
                    widget.onUpdate(
                      fullNameController.text,
                      slackUsernameController.text,
                      githubHandleController.text,
                      bioController.text,
                    );
                    Navigator.pop(context);
                  },
                  child: const Text('Save Changes'),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
    ));
  }
}

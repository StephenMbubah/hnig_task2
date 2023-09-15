
import 'package:flutter/material.dart';
import 'package:hnig_task2/edit_cv_page.dart';

class HomePage extends StatefulWidget {
  String fullName;
  String slackUsername;
  String githubHandle;
  String bio;
   HomePage({super.key,required this.bio, required this.fullName, required this.githubHandle, required this.slackUsername});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateData(String fullName, String slackUsername, String githubHandle, String bio) {
    setState(() {
      widget.fullName = fullName;
      widget.slackUsername = slackUsername;
      widget.githubHandle = githubHandle;
      widget.bio = bio;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("CV Application", style: TextStyle(

          ),),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xff04D486).withOpacity(0.47),
                const Color(0xff3E84DC).withOpacity(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight

            )
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 9,
                  ),
                  Text(' ${widget.fullName}',
                    style: TextStyle(
                    fontSize: 22, color: Colors.white
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  Text('Slack Username: ${widget.slackUsername}',
                  style: TextStyle(
                      fontSize: 19, color: Colors.white
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  Text('GitHub Handle: ${widget.githubHandle}',
                      style: TextStyle(
                          fontSize: 17, color: Colors.blue
                      ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Bio: \n ${widget.bio}',
                      style: TextStyle(
                          fontSize: 17, color: Colors.white, height: 1.4
                      ),),
                  Spacer(),

                  ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width* 0.5, 50)
                    ),
                    onPressed: () {
                      // Navigate to the editing page.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditPage(bio: '${widget.bio}', githubHandle: '${widget.githubHandle}', slackUsername: '${widget.slackUsername}', fullName: '${widget.fullName}', onUpdate: updateData,),
                        ),
                      );
                    },
                    child: Text('Edit CV'),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

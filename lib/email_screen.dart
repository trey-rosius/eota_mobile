import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class EmailAppScreen extends StatefulWidget {
  @override
  _EmailAppScreenState createState() => _EmailAppScreenState();
}

class _EmailAppScreenState extends State<EmailAppScreen> {
  bool isDarkMode = true;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(

        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      ),
      home: CupertinoInboxScreen(toggleTheme: toggleTheme, isDarkMode: isDarkMode),
    );
  }
}



class CupertinoInboxScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  CupertinoInboxScreen({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(

        slivers: [

          CupertinoSliverNavigationBar(

            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/rosius.jpg"),
            ),


            largeTitle: Text('Imbox'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: toggleTheme,
                  child: Icon(CupertinoIcons.sun_max_fill),
                ),

                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: Icon(CupertinoIcons.calendar_badge_plus),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tabs for accounts
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [
                        Stack(
                          alignment:Alignment.bottomRight,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                              child: SvgPicture.asset('assets/svgs/google.svg',height: 30,width: 30,),

                            ),
                            Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                                  border: Border.all(width: 2,color: Colors.white)
                              ),
                              child: Text("10",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Stack(
                            alignment:Alignment.bottomRight,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),

                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.3)
                                ),
                                child: SvgPicture.asset('assets/svgs/apple.svg',height: 30,width: 30,),

                              ),
                              Container(
                                width: 25,
                                height: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  border: Border.all(width: 2,color: Colors.white)

                                ),
                                child: Text("18",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Stack(
                            alignment:Alignment.bottomRight,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),

                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.3)
                                ),
                                child: SvgPicture.asset('assets/svgs/teams.svg',height: 30,width: 30,),

                              ),
                              Container(
                                width: 25,
                                height: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    border: Border.all(width: 2,color: Colors.white)
                                ),
                                child: Text("15",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.withOpacity(0.3)
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),



                                child: SvgPicture.asset('assets/svgs/teams.svg',height: 30,width: 30,),

                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Update Available",style: TextStyle(fontSize: 15),),
                                    Text("Tue,29 June 2024",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              EmailTile(
                sender: 'Stripe',
                subject: 'Have you registered for Stripe Sessions...',
                body: 'There’s still time for you to register and join us at Stripe Sessions. Sessions is our annual confe...',
                time: '8:12 PM',
                imageType: "Single",
              ),
              EmailTile(
                sender: 'Yuhang Lu',
                subject: 'Think Different.',
                body: "Here's to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the squar...",
                time: '7:27 PM',
                hasAttachment: false,
                isStarred: true,
                unreadCount: 3,
                imageType: "Double",
              ),
              EmailTile(
                sender: 'Apple Support',
                subject: 'Important: Verify information about your Ap...',
                body: 'We apologize for the inconvenience, but we are working hard to maintain the confidentiality of ...',
                time: '6:13 PM',
                hasAttachment: true,
                imageType: "Double",
              ),
              EmailTile(
                sender: 'Jube Bowman',
                subject: 'Here is the "Medium Info" I found for you.',
                body: 'Tint and shade are areas of color theory which...',
                time: 'May 27, 10:25 AM',
                imageType: "Quadruple",
                flagged: true,
              ),
              EmailTile(
                sender: 'Slack',
                subject: 'Reminder: Project deadline approaching',
                body: 'The deadline for Project X is approaching soon. Please review the pending tasks...',
                time: '2:30 PM',
                imageType: "Single",
              ),
              EmailTile(
                sender: 'Amazon',
                subject: 'Your order has been shipped',
                body: 'Your order #123-4567890-1234567 has been shipped and will arrive soon...',
                time: '1:15 PM',
                imageType: "Single",
                unreadCount: 6,
              ),
              EmailTile(
                sender: 'Spotify',
                subject: 'Discover new music this week!',
                body: 'Here are some new tracks and playlists we think you’ll love...',
                time: '12:00 PM',
                imageType: "Quadruple",
                unreadCount: 1,
                hasAttachment: true,
              ),
              EmailTile(
                sender: 'Netflix',
                subject: 'New arrivals you can’t miss!',
                body: 'Check out the latest movies and shows available now on Netflix...',
                time: '5:00 PM',
                imageType: "Single",
                hasAttachment: true,
              ),
              EmailTile(
                sender: 'GitHub',
                subject: 'Action required: Update your SSH keys',
                body: 'Please update your SSH keys to continue accessing your GitHub repositories securely...',
                time: '4:45 PM',
                imageType: "Single",
                isStarred: true,
              ),
              EmailTile(
                sender: 'LinkedIn',
                subject: 'Someone viewed your profile',
                body: 'You have 3 new profile views this week. Check them out now...',
                time: '3:15 PM',
                imageType: "Double",
                unreadCount: 1,
              ),
            ]),
          ),


        ],
      ),
    );
  }
}

class AccountTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final int? count;
  final String? additionalText;

  AccountTab({required this.icon, required this.label, this.count, this.additionalText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            child: Icon(icon),
          ),
          SizedBox(height: 4),
          Text(label),
          if (count != null) Text('$count', style: TextStyle(color: CupertinoColors.activeBlue)),
          if (additionalText != null) Text(additionalText!, style: TextStyle(fontSize: 10, color: CupertinoColors.inactiveGray)),
        ],
      ),
    );
  }
}

class EmailTile extends StatelessWidget {
  final String sender;
  final String subject;
  final String body;
  final String time;
  final bool hasAttachment;
  final bool isStarred;
  final bool flagged;
  final int unreadCount;
  final String imageType;


  EmailTile({
    required this.sender,
    required this.subject,
    required this.body,
    required this.time,
    this.hasAttachment = false,
    this.isStarred = false,
    this.flagged = false,
    this.unreadCount = 0,
    this.imageType="Single"
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        children: [
         imageType =="Single" ? Container(
      width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        child: Text(sender[0],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFff758c),
              Color(0xFFff7eb3),

            ],
          ),
        ),
      ) :
          imageType =="Double" ?Container(
            margin: EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,

                ),
                Container(
                  width: 35,
                  height: 35,

                  alignment: Alignment.center,
                  child: Text(sender[0],style: TextStyle(fontSize: 20),),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF7028e4),
                        Color(0xFFe5b2ca),

                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  left: 15,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 3,color: Colors.white),
                        image: DecorationImage(image: AssetImage("assets/images/rosius.jpg",))
                    ),
                  ),
                )

              ],
            ),
          ): Stack(
            children: [
              Container(
                height: 60,
                width: 60,

              ),
              Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                child: Text(sender[0],),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFc471f5),
                      Color(0xFFfa71cd),

                    ],
                  ),
                ),
              ),

              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3,color: Colors.white),
                      image: DecorationImage(image: AssetImage("assets/images/rosius.jpg",))
                  ),
                ),
              ),
              Positioned(
                top: 25,


                child: Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFfa709a),
                        Color(0xFFfee140),

                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(sender, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(time, style: TextStyle(color: CupertinoColors.systemGrey, fontSize: 12)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (isStarred) Icon(CupertinoIcons.star_fill, color: CupertinoColors.systemYellow),
                          if (unreadCount > 0) Text(' $unreadCount ', style: TextStyle(color: CupertinoColors.activeBlue)),
                          Expanded(child:
                              Text(subject, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),

                           ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(child: Text(body, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: CupertinoColors.systemGrey))),
                              if (unreadCount > 0)  Container(
                                width: 25,
                                  height: 25,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue
                                  ),
                                  child: Text('$unreadCount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))),
                            ],
                          )),
                      if (hasAttachment) const Row(children: [Icon(CupertinoIcons.play_circle_fill), Text(' Attachment.mov')]),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );



  }
}

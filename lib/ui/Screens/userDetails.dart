import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class userDetails extends StatelessWidget {
  const userDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userinfo = context.watch<Userprovider>().user;
    final List<repos?> reposInfo = context.watch<Userprovider>().repo;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
            ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(userinfo!.avatar_url),
              ),
              title: Text(
                userinfo.name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
              ),
              subtitle: Text(
                userinfo.bio,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                  "Followers:"+userinfo.followers.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(

                    "Following:"+userinfo.following.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                "Repositories",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: reposInfo
                    .map((item) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                AppRoutes.Repo_webview,
                                arguments: item!.html_url);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Card(
                              color: Colors.black,
                              child: Text(
                                item?.name ?? "User name is null",
                                style: TextStyle(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ));
  }
}

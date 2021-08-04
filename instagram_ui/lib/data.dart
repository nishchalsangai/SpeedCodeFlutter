import 'package:flutter/material.dart';

const instagramColors = [
  Color(0xFFfeda75),
  Color(0xfffa7e1e),
  Color(0xffd62976),
  Color(0xff962fbf),
  Color(0xff4f5bd5),
];

const StoryData = [
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/G3FNI3FneNjiw/giphy.gif',
    name: 'Your Story',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/10UIAGM7uyvcUo/giphy.gif',
    name: 'Sasuke',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/aY1HMl4E1Ju1y/giphy.gif',
    name: 'Kakashi',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/kiOGNdQMj04SI/giphy.gif',
    name: 'Sakura',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/7BW9U2cJPQZ0s/giphy.gif',
    name: 'Lufi',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/OaHp43V1N4OvC/giphy.gif',
    name: 'Natsu Dragneel',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/PivTIVskYVjOfPaSw7/giphy.gif',
    name: 'Happy',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/skuD9hdP64chi/giphy.gif',
    name: 'Gray',
  ),
  StoryContent(
    imgUrl: 'https://media.giphy.com/media/13n7XeyIXEIrbG/giphy.gif',
    name: 'IamMeme',
  ),
];

const PostData = [
  Post(
    userName: 'Sakura',
    userImage: 'https://media.giphy.com/media/kiOGNdQMj04SI/giphy.gif',
    image: 'assets/users/user0.jpg',
  ),
  Post(
    userName: 'frenzy.dev',
    userImage: 'https://media.giphy.com/media/spHCUbRqG4cjS/giphy.gif',
    image: 'assets/users/user1.jpg',
  ),
  Post(
    userName: 'Gray',
    userImage: 'https://media.giphy.com/media/skuD9hdP64chi/giphy.gif',
    image: 'assets/users/user2.jpg',
  ),
  Post(
    userName: 'Sasuke',
    userImage: 'https://media.giphy.com/media/10UIAGM7uyvcUo/giphy.gif',
    image: 'assets/users/user3.jpg',
  ),
];

class StoryContent extends StatelessWidget {
  final String? imgUrl;
  final String? name;
  const StoryContent({Key? key, required this.imgUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            width: 78,
            height: 78,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(95),
                gradient: LinearGradient(
                  colors: instagramColors,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(95),
              child: Image.network(imgUrl!),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            name!,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  final String? userName;
  final String? userImage;
  final String? image;
  const Post({Key? key, this.image, this.userImage, this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.network(userImage!),
                      ),
                    ),
                  ),
                  Text(
                    userName!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            image!,
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/heart.png',
                    color: Colors.white,
                    height: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  const SizedBox(width: 16.0),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Liked by Naruto and thousands of others",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "$userName Today's Progress!...",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Show comments",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "21 minutes ago",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
              fontSize: 10.0,
            ),
          ),
        )
      ],
    );
  }
}
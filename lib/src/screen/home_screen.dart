import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../common/app_color.dart';
import '../widget/text_widget.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _images = [
    'https://e0.365dm.com/24/06/768x432/skysports-kane-england_6589508.jpg?20240624081329',
    'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2158904115-restricted.jpg?c=16x9&q=h_438,w_780,c_fill',
    'https://t4.ftcdn.net/jpg/01/58/91/07/360_F_158910791_SgNhFoYcuYYUKpuq2gVmLEZPiZkyDwhV.jpg',
    'https://www.chinadaily.com.cn/photo/images/attachement/jpg/site1/20170918/d8cb8a5155b01b297c550d.jpg',
    'https://www.usnews.com/object/image/00000190-4867-df6a-a3fa-fbef69200000/627b3affa8af4de1a8dd29d186a367e5Mets_Cubs_Baseball_47889.jpg?update-time=1719197758000&size=responsive640',
    'https://static.toiimg.com/photo/msid-111223571/111223571.jpg',
    'https://img.rasset.ie/00207b16-600.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: CachedNetworkImage(
            imageUrl:
                'https://img.pikbest.com/origin/09/21/93/4pIkbEsTEpIkbEsT49t.png!sw800',
            fit: BoxFit.cover,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 26,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
          bottom: const TabBar(
            isScrollable: false,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Latest news'),
              Tab(text: 'Health'),
              Tab(text: 'Sports'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            4, // Number of tabs
            (index) => buildContent(),
          ),
        ),
      ),
    );
  }

  Widget buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return _buildCard(index);
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return _buildItem(index); // Pass index if needed
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCard(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailScreen()));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              blurRadius: 5,
              spreadRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedNetworkImage(
                imageUrl: _images[index],
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Place Name',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        Spacer(),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 13,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: CachedNetworkImageProvider(_images[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    'Sports',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  SizedBox(height: 4),
                  TextWidget(
                    "Lorem Ipsum is simply dummy text of the printing and "
                    "typesetting industry. Lorem Ipsum has been the industry's"
                    " standard dummy text ever since the 1500s, when an unknown "
                    "printer took a galley of type and scrambled it to make a type"
                    " specimen book. It has survived not only five centuries, but "
                    "also the leap into electronic typesetting, remaining "
                    "essentially unchanged. It was popularised in the 1960s "
                    "with the release of Letraset sheets containing Lorem Ipsum "
                    "passages, and more recently with desktop publishing software"
                    "like Aldus PageMaker including versions of Lorem Ipsum.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: AppColor.colorPrimary,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      TextWidget('14/02/2024'),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: AppColor.colorPrimary,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      TextWidget('10:00AM'),
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

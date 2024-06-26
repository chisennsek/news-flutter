import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../common/app_color.dart';
import '../widget/text_widget.dart';

class MyFeedScreen extends StatefulWidget {
  const MyFeedScreen({super.key});

  @override
  State<MyFeedScreen> createState() => _MyFeedScreenState();
}

class _MyFeedScreenState extends State<MyFeedScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          'My Feed',
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black54,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}

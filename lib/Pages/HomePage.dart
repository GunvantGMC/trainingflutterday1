// ignore_for_file: prefer_const_constructors

import 'package:firstapp/Widgets/CstmAppBar.dart';
import 'package:firstapp/Widgets/ImageCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imgUrlList = [
    "https://5.imimg.com/data5/SELLER/Default/2022/2/BU/QX/HK/23366456/ladies-kurta-combo-1000x1000.jpg",
    "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/19076450/2022/7/22/e158832a-4fba-4a11-bcca-bd022ac503321658487852198-Libas-Women-Kurta-Sets-2351658487851381-1.jpg",
    "https://media.wforwoman.com/product/20FES10489-113005/665/20FES10489-113005_1.JPG?format=webp&w=480&dpr=2.6",
    "https://static01.manyavar.com/uploads/dealimages/11771/detailimages/embroidered-light-yellow-kurta-s952811-324-8.jpg",
  ];

  List<String> imgLabelList = [
    "KURTA",
    "KTR",
    "KRT",
    "MAN KURTA",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CstmAppBar(
          title: "Categories",
        ),
      ),
      body: GridView.builder(
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) => ImageCard(
          imgUrl: imgUrlList[index],
          label: imgLabelList[index],
        ),
        itemCount: imgLabelList.length,
      ),
    );
  }
}

// Image.network(),
// NetworkImage()

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  final List<String> imageList = ["https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider.builder(itemCount: imageList.length,
              itemBuilder: (context,index,realIndex){
                final urlImage = imageList[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.12,
                  autoPlay: true,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
              )),
        ),
        SizedBox(height: 14,),
        builIndicator()
      ],
    );

  }


  Widget buildImage(String urlImage, int index){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.grey,
      ),
      margin: EdgeInsets.all(8),

      child: Image.network(urlImage,fit: BoxFit.fitWidth,width: MediaQuery.of(context).size.width * 90),

    );
  }

  Widget builIndicator(){
    return Container(
      height: 2,
      child: AnimatedSmoothIndicator(activeIndex: currentIndex,
        count: imageList.length,
        curve: Curves.fastOutSlowIn,
        effect: JumpingDotEffect(
          activeDotColor: Colors.indigo,
        ),
      ),
    );
  }
}


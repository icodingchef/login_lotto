import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.backgroundColor,
      this.imagePath, // 선택적으로 사용하는 속성
      required this.radius,
      this.icon}); // 선택적으로 사용하는 속성

  final double width;
  final double height;
  final Color? backgroundColor; // 음영색이 없을 때를 대비한 nullable 타입
  final String? imagePath; // 선택적으로 사용하기에 널 값이 올 때를 대비한 nullable 타입
  final double radius;
  final Icon? icon; // 선택적으로 사용하기에 널 값이 올 때를 대비한 nullable 타입

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // 속성값 변수로 대체
      height: height, // 속성값 변수로 대체
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(radius), // 속성값 변수로 대체
        color: backgroundColor,
        image: imagePath != null // 삼항조건 연산자 사용
            ? DecorationImage(
                image: AssetImage(imagePath!), // image 속성값 사용시 반드시 값이 전달됨
                fit: BoxFit.fill,
              )
            : null, // image 속성 사용하지 않을 시 null 처리 됨
      ),
      child: icon, // 속성값 변수로 대체
    );
  }
}

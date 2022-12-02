import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticked_booking_app/utils/app_layout.dart';
import 'package:ticked_booking_app/utils/app_styles.dart';
import 'package:ticked_booking_app/widgets/thick_container.dart';

class TickedView extends StatelessWidget {
  const TickedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /*
            showing the blue part of the card/ticked
            * */
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              // color: Colors.red,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      // const Spacer(), // gian cach 2 dau
                      Expanded(child: Container()),
                      const ThickContainer(),

                      Expanded(
                          child: Stack(
                            children:[
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constrains) {
                                    print(
                                        "The width is ${constrains.constrainWidth()}");
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constrains.constrainWidth() / 6).floor(),
                                              (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                    );
                                  },
                                  // child: Flex(
                                  //   direction: Axis.horizontal,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children:
                                  //     List.generate(5, (index) => Text("-")),
                                ),
                              ),

                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )),

                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                          child: Text('new-York', style: Styles.headLineStyle4.copyWith(color: Colors.white,),)
                      ),
                      Text("8h30", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      SizedBox(
                          width: 100,
                          child: Text('London', textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white,),)
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

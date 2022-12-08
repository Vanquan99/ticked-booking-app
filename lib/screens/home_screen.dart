import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticked_booking_app/screens/hotel_screen.dart';
import 'package:ticked_booking_app/screens/ticked_view.dart';
import 'package:ticked_booking_app/utils/app_info_list.dart';
import 'package:ticked_booking_app/utils/app_styles.dart';
import 'package:ticked_booking_app/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFeeedf2),
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //canh chu dau hang bang nhau
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        // const SizedBox(height: 5,),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    // const Text('Good moirning'),
                    // Image.asset("assets/images/img_1.png")
                    // const Text('Book Tickets'),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                /* search */
                const Gap(25),
                Container(
                  // padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                /* Upcoming Flights */
                const Gap(40),
                AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),

              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                // children: [
                //   TickedView(),
                //   TickedView(),
                //   TickedView(),
                //
                // ],
                children: ticketList.map((singleTicket) => TickedView(ticket: singleTicket)).toList(),
              ),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                // children: [
                //   HotelScreen(),
                //   HotelScreen(),
                //   HotelScreen(),
                // ],
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              )
          ),
          // TickedView(),
        ],
      ),
    );
  }
}

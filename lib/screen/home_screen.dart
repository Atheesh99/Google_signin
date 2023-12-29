import 'package:flutter/material.dart';
import 'package:food/screen/widgets/container_listview.dart';
import 'package:food/screen/widgets/custombottomappbar.dart';
import 'package:food/screen/widgets/customtextfield.dart';
import 'package:food/screen/widgets/office_addreess.dart';
import 'package:food/screen/widgets/order_now_card.dart';
import 'package:food/screen/widgets/restaurant_listview.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List networkImage = [
    "https://s3-alpha-sig.figma.com/img/e689/9a16/4f98262ac6a09a97c122a2a5ab792e4f?Expires=1704672000&Signature=FE2llNtqxVhdpgKHJd4L8DMgGfoz2q0mEE9NTT20x3ZffC~3CBwpcMpytBdQDegyE~cDv-Fah93Kt8WkAYimwNJy5t~cRXX81Bt-Yd8G2JyJexbA0g1b1794yNbK2r-4SzCqPI2xrz~43zM2QMCyTqfIGAfgnxbVh2Cwd2Wx2rPg3o0xvDLoPJj7BKqa6aQt-rriz-gMVnngreAteY79B7Cz1Mv6eeKn-qSyH94vke5oaL~UxOPezpBfuDnm~~C89jJGOF3MMc5MYtqoXL6bAergVjWGrwAeDj~K5WmRFb6j0JMhnSHQ3vYUSRJvI~NOuuIPC1dQZnuRtnyg2QdTjQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    'https://s3-alpha-sig.figma.com/img/1412/c93d/0fef0c7d156fe40dd7fe533048047be5?Expires=1704672000&Signature=gGTgusKvnq~PVs-nFcb2rMIX0lL7UMpFNTi1J1YOU8b2utBGq1O5vkptj76Rb7SaL1Nu0OUmYymJ8OIis1ipv43SLar4b-WOByi-EUuBfl049i2td6ohD3xotpXYqNv0RrbRDMyk585j1ZK2~0ODCJsZm687aG0KODXvPp1Pd3Qa1Wi8-jo1KVOIermV4ajop9e5nubDDyZbbgB-gDO4uTQZO-huMfnxjDUwspXO83nLhbq-txQYOFkD2xyRZub3fUXsSKaoAB4MQgv2QhJUgunFmcnlvaWdkoGmuMWdhwH4~7tlF1gZPHAphjdLLIG4PiitMB7-oZ8YVC4E4is81g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/148b/7c33/dc6edd1d3f895a56710570124268bdf0?Expires=1704672000&Signature=JzTZ~bDURDhQujl9xUYfpMeCpWhmxBuQbWeguDEoMuomOI~sWPe~yNRVaAJco2UdZOpXHIcnvoCiE2mxFxWzQFjCgUqs9nXEmqzi5Bsidh34dBalf0b3grBY4OVzsqfW1s4qKtBq1XLU5qBd1ljlBTIRiI5ZP26IUN8fmZPpwq4Vd6QxIC~C8-dbPi7wTcrzo5rFDdtQSHPtsQBJgnytL3ailQOzoDWOIh7ImNzH781vTVrFgJBBRWrJ-Ngo8WBbvmgzpyVzgckv3qE~0QcN~i~PTyKkElpDMSawjDiKEMupJ6QNsAHQdfB0bC4~byaqQrOqywCBjDPoiCWWj6dzWQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/6dc1/c77b/32dd77c908efc8c8ab1606a18deac513?Expires=1704672000&Signature=FQIcvadmTNTCYtHwwT4aC05tfcz6lnM1QBrR83zITzL9trpcNDfXi-eMwjKVqwvLlDnhYk1PpomM958zbIru86Wvy0euXaxG1lRJnXdU2ve4ceqFzIz5aMcE1iUQjReHz0j6KOaofKlwzdFAoGA3eQ0FKCdl1itVF9vUdDykEIJ4DVkvq9oedRYait8PAsSoAgCRJIBCfgKIL01b6cMJBA3b8VfymWU4WmAWWYdBuA09HOQ8fhBLH2Butq6J2jAb7LfI~zMQymkMUonmS1HUYCoKP~AecrgZlu~gvlAoJl7Rq3S5NMSGQ4hjIqGwUUZEkdlj7hAUHaYZE89lmYlRLQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/1f4c/5935/a750b1dbb763d97eecacb260da119d6a?Expires=1704672000&Signature=SxzHSD8-DrBCnNpESofdD64hNIHdmNeq~1gzhMCr~YXwcOekBqGCy3g62nayS9lVp6isC8S5K2yHrD3YNqwHJgWFP7jOo-ODi2tc9nJB9hGOsXmHzJeAG8yYrMNV7LZdBkRNSeqlGD6Ai1E~hYuZZbDJs0AcP-Dp6AvmCm3Ri9lYGh1A0Ut55z7Hl3~0B2yLhQ2TS~Uz7poCu6LRBKcgQSqesfg6vYy7E4og5cje-iFkcP9UoA3DlZvLthp9t5DwczUzk3rmxuiP3V1msseF6hc4t-CN8~yvGKoiF9NLmiW3-mgEEuvizj4F4ssAGxqT2CYxIL6TMr8K1qbjZB3OXQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
  ];

  final List<String> text = ['Pizza', 'Burger', 'Healthy', 'Noodle', 'Fries'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Container(
            height: size.height * .87,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OfficeAdddress(),
                    const OrderNowContainer(),
                    SizedBox(height: size.height * 0.021),
                    const CustomTextField(),
                    SizedBox(height: size.height * 0.021),
                    SizedBox(
                      height: size.height * .15,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 12),
                        itemCount: networkImage.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ContainerListviewBuilder(
                              image: networkImage[index], text: text[index]);
                        },
                      ),
                    ),
                    Text(
                      'Restaurant Near You',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8500000238418579),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    SizedBox(
                      height: 500,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 15),
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return const RestaurantListView();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomnavigation(),
    );
  }
}

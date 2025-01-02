import 'package:flutter/material.dart';

class CardWallets extends StatefulWidget {
  const CardWallets({super.key});

  @override
  State<CardWallets> createState() => _CardWalletsState();
}

class _CardWalletsState extends State<CardWallets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Scaffold(
              backgroundColor: const Color(0xFFF9F9F9),
              body: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: Column(children: [
                    appBar(),
                    SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        physics: const ClampingScrollPhysics(),
                        child: bodyPart())
                  ])));
        });
  }

  Widget appBar() {
    return const Row(children: [
      Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
      SizedBox(width: 10),
      Text('Card & Wallets',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
    ]);
  }

  Widget bodyPart() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      firstCardwithImage(),
      const SizedBox(height: 10),
      sceondCardActivateNow(),
      const SizedBox(height: 10),
      const Text('Wallet',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      const SizedBox(height: 10),
      thirdCardWalletAndCoin()
    ]);
  }
  //(16,19,114buttonColor) (59,55,11 More) svgbg 231,231,231  235, 236,255

  Widget firstCardwithImage() {
    return Container(
      height: 175,
      width: 350,
      decoration: BoxDecoration(
          color: const Color(0xFFEBECFF),
          borderRadius: BorderRadius.circular(11)),
      child: Column(children: [
        Container(
            height: 140,
            width: 320,
            decoration: BoxDecoration(
                color: const Color(0xFF141639),
                borderRadius: BorderRadius.circular(11)),
            child: Stack(alignment: Alignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LifelineCart',
                                style: TextStyle(
                                    letterSpacing: -0.27,
                                    fontSize: 18,
                                    color: Color(0xFF8F92C0),
                                    fontWeight: FontWeight.w500)),
                            Text('Purchase Power Card',
                                style: TextStyle(
                                    letterSpacing: -0.27,
                                    fontSize: 9,
                                    color: Color(0xFF8F92C0),
                                    fontWeight: FontWeight.w500)),
                          ]),
                      const SizedBox(height: 20),
                      Row(children: [
                        const SizedBox(width: 15),
                        Opacity(
                            opacity: 0.7,
                            child: SizedBox(
                                height: 20,
                                width: 30,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset('assets/simCard.png')))),
                        const RotatedBox(
                            quarterTurns: 1,
                            child: Icon(Icons.wifi,
                                color: Color(0xFF8F92C0), size: 18))
                      ]),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 26.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const SizedBox(width: 15),
                  Container(width: 80, height: 0.5, color: Colors.red),
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/greenHeartBeat.png',
                          color: Colors.red)),
                  Container(width: 40, height: 0.5, color: Colors.red),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset('assets/greenHeartBeat.png',
                          color: Colors.green)),
                  SizedBox(
                      height: 100,
                      width: 95,
                      child: Image.asset('assets/greenHeartBeat.png',
                          color: Colors.green)),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(Icons.lock_outline, color: Colors.white, size: 30),
              ) //lock_open
            ])),
        const Spacer(),
        Row(
          children: [
            const SizedBox(width: 25),
            const Text('Card status: ',
                style: TextStyle(
                    letterSpacing: -0.27,
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            const Text('Inactive',
                style: TextStyle(
                    letterSpacing: -0.27,
                    fontSize: 10,
                    color: Colors.red,
                    fontWeight: FontWeight.w500)),
            const Spacer(),
            Container(
              height: 29,
              width: 85,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(223, 225, 253, 0.8),
                            border: Border.all(
                                color: const Color(0x4B000000), width: 0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                            child: Text('Guide',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF2C265A),
                                    fontWeight: FontWeight.bold))))
                  ]),
            ),
          ],
        ),
      ]),
    );
  }

  Widget sceondCardActivateNow() {
    return Container(
      height: 230,
      width: 350,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: const Color(0xCCFFFFFF),
          border: Border.all(color: const Color(0x4B000000), width: 0.5),
          borderRadius: BorderRadius.circular(11)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Activate your LifelineCard',
                  style: TextStyle(
                      letterSpacing: -0.27,
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 3),
              const Row(children: [
                Icon(Icons.currency_rupee, color: Color(0xFF2C265A), size: 10),
                Text('3499/- Life Time',
                    style: TextStyle(
                        letterSpacing: -0.27,
                        fontSize: 10,
                        color: Color(0xFF2C265A),
                        fontWeight: FontWeight.w500))
              ]),
              const SizedBox(height: 3),
              const Row(children: [
                Icon(Icons.currency_rupee, color: Colors.red, size: 10),
                Text('9999/Year',
                    style: TextStyle(
                        letterSpacing: -0.27,
                        fontSize: 9,
                        color: Colors.red,
                        fontWeight: FontWeight.w500))
              ]),
              const SizedBox(height: 3),
              const Text('Offer Ends Soon!',
                  style: TextStyle(
                      letterSpacing: -0.27,
                      fontSize: 8,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              Container(
                  height: 20,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(17, 18, 114, 1),
                      border: Border.all(
                          color: const Color(0x4B000000), width: 0.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text('Activate Now',
                        style: TextStyle(
                            letterSpacing: -0.27,
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )),
            ]),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                  height: 90,
                  width: 100,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10),
                          SizedBox(
                              width: 80, child: Image.asset('assets/man.png')),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.black)),
                        child: const Icon(Icons.check,
                            size: 18, color: Color(0xFF000059)),
                      ),
                    ],
                  )),
            )
          ]),
          Container(width: 306, height: 0.5, color: const Color(0x33000000)),
          const Text('Our Features',
              style: TextStyle(
                  letterSpacing: -0.27,
                  fontSize: 11,
                  color: Color(0xB1000000),
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                    color: const Color(0x66FFFFFF),
                    border:
                        Border.all(color: const Color(0x66000000), width: 0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Udhar Limit: ',
                          style: TextStyle(
                              letterSpacing: -0.27,
                              fontSize: 9,
                              color: Color(0x66000000),
                              fontWeight: FontWeight.w500)),
                      Icon(Icons.currency_rupee,
                          color: Color(0x66000000), size: 10),
                      Text('74425',
                          style: TextStyle(
                              letterSpacing: -0.27,
                              fontSize: 9,
                              color: Color(0x66000000),
                              fontWeight: FontWeight.w500)),
                    ])),
            Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                    color: const Color(0x66FFFFFF),
                    border:
                        Border.all(color: const Color(0x66000000), width: 0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CP EMI Limit: ',
                          style: TextStyle(
                              letterSpacing: -0.27,
                              fontSize: 9,
                              color: Color(0x66000000),
                              fontWeight: FontWeight.w500)),
                      Icon(Icons.currency_rupee,
                          color: Color(0x66000000), size: 10),
                      Text('74425',
                          style: TextStyle(
                              letterSpacing: -0.27,
                              fontSize: 9,
                              color: Color(0x66000000),
                              fontWeight: FontWeight.w500)),
                    ]))
          ]),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            commonIconsTitle(title: 'Udhar', image: 'assets/moneyUdhar.png'),
            commonIconsTitle(title: 'CP EMI', image: 'assets/moneyCPEMI.png'),
            commonIconsTitle(
                title: 'Business Funds', image: 'assets/moneyFunds.png'),
          ]),
        ],
      ),
    );
  }

  Widget thirdCardWalletAndCoin() {
    List list = [
      {
        'image': 'assets/img1.png',
        'title': 'Lifeline Crad Wallet',
        'Amount': '4356',
        'subTitle': 'Upcomng EMI/Udhar',
        'subAmount': '4356',
        'Date': ''
      },
      {
        'image': 'assets/img2.png',
        'title': 'Lifeline Coin',
        'Amount': '4356',
        'subTitle': 'Lifeline Magic Coin',
        'subAmount': '600',
        'Date': '11 Sep 2023 To 11 Oct 2023'
      },
      {
        'image': 'assets/img3.png',
        'title': 'Cashback coin',
        'Amount': '4356',
        'subTitle': 'Add Credit Coin',
        'subAmount': '',
        'Date': '11 Sep 2023 To 11 Oct 2023'
      }
    ];
    return SizedBox(
      height: 227,
      width: 350,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: 350,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  color: const Color(0xCCFFFFFF),
                  border:
                      Border.all(color: const Color(0x4B000000), width: 0.5),
                  borderRadius: BorderRadius.circular(11)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xCCFFFFFF),
                              border: Border.all(
                                  color: const Color(0x4B000000), width: 0.5),
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(list[index]['image']))),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 254,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(list[index]['title'],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500)),
                                    Text(list[index]['Amount'],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: -0.27,
                                            fontWeight: FontWeight.w500))
                                  ]),
                            ),
                            SizedBox(
                              width: 254,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(list[index]['subTitle'],
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: list[index]['subAmount'] ==
                                                    ''
                                                ? Colors.red
                                                : list[index]['subTitle']
                                                        .toString()
                                                        .contains('Coin')
                                                    ? const Color(0xFF26236E)
                                                    : const Color(0xFF9E9E9E),
                                            fontWeight: FontWeight.w500)),
                                    Text(list[index]['subAmount'],
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: list[index]['subTitle']
                                                    .toString()
                                                    .contains('Coin')
                                                ? const Color(0xFF26236E)
                                                : const Color(0xFF9E9E9E),
                                            letterSpacing: -0.27,
                                            fontWeight: FontWeight.w500))
                                  ]),
                            )
                          ]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (list[index]['Date'] != '')
                        Text(list[index]['Date'],
                            style: const TextStyle(
                                fontSize: 7,
                                wordSpacing: -0.98,
                                color: Color(0xFF9E9E9E),
                                fontWeight: FontWeight.w500))
                      else ...[
                        const Text('Withdraw',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF2C265A),
                                fontWeight: FontWeight.bold)),
                        const Text('Transfer',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF2C265A),
                                fontWeight: FontWeight.bold))
                      ],
                      Container(
                          height: 28,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(223, 225, 253, 0.8),
                              border: Border.all(
                                  color: const Color(0x4B000000), width: 0.5),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                            child: Text('More',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF2C265A),
                                    fontWeight: FontWeight.bold)),
                          )),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: 3),
    );
  }

  Widget commonIconsTitle({required String image, required String title}) {
    return Column(children: [
      Container(
        width: 60,
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0x11000000),
            border: Border.all(color: const Color(0x66000000), width: 0.5),
            borderRadius: BorderRadius.circular(11)),
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Image.asset(image)),
      ),
      const Text('Udhar',
          style: TextStyle(
              letterSpacing: -0.27,
              fontSize: 10,
              color: Color(0xB1000000),
              fontWeight: FontWeight.w500))
    ]);
  }
}

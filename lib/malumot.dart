import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class malumot extends StatefulWidget {
  const malumot({super.key});

  @override
  State<malumot> createState() => _malumotState();
}

class _malumotState extends State<malumot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/images/2.gif'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  style: TextStyle(fontSize: 20),
                  "Bosim - bu tabiat va inson hayotida alohida o'rin tutadigan jismoniy miqdor hisoblanadi."
                  "Bosim — biror jismning boshqa jism sirtiga tik yoʻnalishda taʼsir qiladigan kuchlar intensivligini ifodalovchi fizik kattalik. Pa(paskal) yoki N/sm2 da oʻlchanadi."
                  "Kuchlar sirt boʻylab tekis taqsimlangan boʻlsa, u holda bosim : P=F/S  bunda F — jism sirtiga taʼsir qiladigan kuch, S — jism yuzasi."
                  "Bosimning bir necha turi mavjud: •Gidromexanik bosim— suyuklikning biror nuqtasidagi bosim. U gidrostatik (tinch holatdagi suyuklikka oid) va gidrodinamik (harakatdagi suyuqlikka oid) xillarga boʻlinadi. Gidromexanik bosimning atmosfera bosimidan katta bosim - ortiqcha bosim, atmosfera bosimidan kichik bosim - vakuummetrik bosim deb ataladi."
                  "Bundan tashqari, havo bosimi, bugʻ bosimi, parsial bosim (gazga oid), yonilgʻi ichki yonuv dvigateli silindrida yonganda hosil boʻladigan gaz bosimi va boshqa xil bosimlar boʻladi. Biror idish, qozon hamda boshqalar ichidagi va atrofdagi muhit bosimlari birgalikda mutloq bosim deyiladi."
                  "Meteorologiyada bosim birligi bar yoki mm sim. ust. bilan ifodalanadi. MKS tizimida (qarang Birliklar tizimi) bosim birligi sifatida N/m2 (nyuton kvadrat metr), SGS tizimida — dina/sm2 (dina kvadrat santimetr), MKGSS tizimida — kgk/m2 (kilogramm kuch kvadrat metr) qabul qilingan. Bosim barometr, datchik va manometr bilan oʻlchanadi.[1]"
                  "Katta qiymatlardagi bosimni ifodalash uchun SI sistemasiga tegishli boʻlmagan Bar birligi ham keng ishlatiladi."
                  "1 bar = 105 Pa = 1.02 kgk/sm2=10200 mm H2O ust."
                  "Texnikada eng keng tarqalgan bosim oʻlchov birligi bu meʼyoriy atmosfera bosimi xisoblanadi. U erkin tushish tezligi 9,806 m/s va simob zichligi 13.595 boʻlganda, balandligi 760 mm boʻlgan simob ustunini muvozanatlagan xavo bosimi, yaʼni meʼyoriy atmosfera bosimi orqali ifodalanadi. Bunday simob ustuni xar bir kvadrat santimetrga oʻz ogʻirligiga teng boʻlgan bosim bilan taʼsir koʻrsatadi."
                  "1Ratm = 760 mm Hg ust. = 1,033 kgk/sm2 = 101325 Pa = 1.01 bar."
                  "Agar bosimni toʻgʻridan toʻgʻri milimetr simob ustuni tarzida ifodalasak,"
                  "1 mm Hg ust = 133,3 Pa = 13.59 mm H2O ust."
                  "Bosim simob ustuni balandligi birligida ifodalansa, Atmosfera bosimini simob ustuni yordamida oʻlchashni kashf etgan olim Evangelista Torricelli sharafiga birligini Torr deb yuritiladi."),
            ),
          )
        ],
      ),
    );
  }
}

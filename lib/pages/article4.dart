import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../services/bloc_service.dart';

class Article4 extends StatefulWidget {
  const Article4({super.key});

  @override
  State<Article4> createState() => _Article4State();
}

class _Article4State extends State<Article4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: (){
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.navigateToArticlePage);
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: ListView(
            children: [
              Container(
                height: 228,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/article3.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Payg'ambarlikdan oldingi davr",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Feather.calendar,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "30.09.2023",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Icon(
                    Feather.eye,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("67",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "#МУАТТАР_СИЙРАТ Хадича розияллоҳу анҳога уйланганларидан пайғамбар бўлгунларига қадар бошларидан кечирганлари    Пайғамбар қилиб юборилган даврлари тарихига яқинлашар эканмиз, Расулуллоҳ соллаллоҳу алайҳи васалламнинг ҳидоят ҳамда ҳақиқатни излаш, уни топиб, хаёлларини банд этган ҳайрат ва тараддуддан халос бўлиш йўлидаги жараёнлар, ҳодисалар билан танишишга эҳтиёж сезамиз.   Ривоятларда айтилганидек, Каъба қайта қурилганидан кўп ўтмай Набий соллаллоҳу алайҳи васалламнинг ўғиллари Қосим дунёдан ўтди. Фарзанд доғи у зотнинг қалбларини ўртади. Ушбу кўнгилсиз воқеадан бир оз ўтиб, Маккада қаҳатчилик бошланди. Бунинг натижасида Абу Толибнинг аҳволи жуда оғирлашди. У серфарзанд бўлгани сабабли моддий жиҳатдан танг аҳволда қолди. Шу боис Расулуллоҳ соллаллоҳу алайҳи васаллам амакилари Ҳамза ва Аббосга: — Амаким Абу Толибга жуда қийин бўлди. Унга ёрдам бермаймизми?! – дедилар.   Амакилари у зотнинг таклифларини маъқуллаб Абу Толиб ҳузурига боришди ва: — Бизга болаларингдан битта-битта берсанг. Биз уларни ўз қарамоғимизга оламиз, — дейишди.   Абу Толиб уларнинг ниятлари холис эканини кўриб: — Ақилдан бошқа болаларимдан истаганингизни олинг, - деди. У фарзандлари ичида Ақилни жуда яхши кўрарди. Шундай қилиб, Аббос Толибни, Ҳамза Жаъфарни, Пайғамбар соллаллоҳу алайҳи васаллам эса Алини ўз қарамоғларига олишди. Бу вақтда Али олти ёшда эди. У Набий соллаллоҳу алайҳи васаллам учун яқинда вафот этган ўғиллари Қосимнинг ўрнини босгандек бўлди. Алига нисбатан отадек меҳр-муҳаббатлари, раҳм-шафқатлари беқиёс эди. Шунингдек, бундай меҳрибончилик Расулуллоҳ соллаллоҳу алайҳи васалламни боболари Абдулмутталибдан сўнг амакилари Абу Толиб ўз кафиллигига олгани ҳамда кўрсатган ғамхўрликлари учун жавобдек эди гўё.   Набий соллаллоҳу алайҳи васаллам айрилган ўғилларини соғинганлари боис доимо маъюс эдилар. Дарду аламларини бир оз бўлса-да енгиллатиш учун Зайд ибн Ҳорисани ҳам ўғил қилиб олдилар. Каъбанинг қаршисида туриб, Зайдни ўғил ва меросхўр сифатида тан олганларини баралла айтдилар. Шу кундан одамлар Зайдни Муҳаммаднинг ўғли, дея чақира бошлашди. Вақт-соати етиб, Пайғамбар соллаллоҳу алайҳи васаллам уни оқсочлари Умму Айманга уйлантириб қўйдилар. У иккисидан дунёга келган Усома Расулуллоҳ соллаллоҳу алайҳи васаллам умрларининг охирида Шом мушрикларига қарши қилган юришларида қўшинни бошқарди.  \"Ислом тарихидан олтин саҳифалар\" китобидан.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}
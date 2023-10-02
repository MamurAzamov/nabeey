import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../services/bloc_service.dart';

class Article2 extends StatefulWidget {
  const Article2({super.key});

  @override
  State<Article2> createState() => _Article2State();
}

class _Article2State extends State<Article2> {
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
                      image: AssetImage("assets/images/article1.jpg"),
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
                  Text("96",
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
                "Ўспиринликлари Пайғамбаримиз (соллаллоҳу алайҳи ва саллам)  етим ўсдилар. Ҳали туғилмасларидан оталари  Абдуллоҳ вафот этди. Сўнгра у кишини боболари  Абдулмутталиб ўз қарамоғига олди. Пайғамбаримиз (соллаллоҳу алайҳи ва саллам) олти ёшга етганларида оналари Мадинаи мунавварага энагалари Умму Айман Барака Ҳабашийя билан бирга  Бани Нажжор қавмидан бўлган тоға уруғларини  зиёрат қилиш учун олиб борди. У ерда бир ой  туришди. Сўнгра бирга қайтишда йўлда оналари  касал бўлиб қолди ва вафот этди. Абво деган  жойга дафн этилди. Пайғамбаримиз (соллаллоу алайҳи ва саллам)ни энагалари Умму Айман  бир карвон ҳамроҳлигида Маккага – боболари  Абдулмутталибникига олиб борди. Бир ривоятда Пайғамбаримиз (алайҳиссалом) оналарининг  жасадини Маккага олиб келишди ва ўша ерда  дафн этилди, деб келтирилади. Бу тўғрида Ибн  Жавзий “Ал-Вафо” деган китобида ҳикоя қилган.  Пайғамбаримиз (соллаллоҳу алайҳи ва саллам)  саккиз ёшга кирганларида боболари вафот этди.  Сўнгра у зотни амакилари Абу Толиб боболарининг васиятига биноан ўз қарамоғига олди. Амакилари Абу Толиб оталари Абдуллоҳнинг ота-она  бир акаси эди.  Абу Толиб Расулуллоҳ (соллаллоҳу алайҳи ва  саллам)га душманларидан ҳимоячи ва у кишининг  меҳрибонига айланди. Абу Толиб камбағал киши  эди. Муҳаммад Мустафо (соллаллоҳу алайҳи ва  саллам)ни қарамоғига олгани туфайли моллари  кўпайиб, бойиб кетди.  Муҳаммад ибн Аббос Ҳасаний 12 Расулуллоҳ (соллаллоҳу алайҳи ва саллам) ўн  икки ёшга етганларида амакилари Абу Толиб билан бирга Шом ўлкасига сафарга отландилар, аммо  амакилари у зотга яҳудийлар зарар етказишидан қўрқиб йўлдан қайтди. Баҳийро номли роҳиб  амакиларини яҳудийлар ёмонлигидан қўрқитган  эди.  Сўнгра Расулуллоҳ (соллаллоҳу алайҳи ва саллам) иккинчи марта Шом ўлкасига Хадича (розияллоҳу анҳо)нинг тижорати учун унинг хизматкори Майсара исмли киши билан бирга сафарга  чиқдилар",
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
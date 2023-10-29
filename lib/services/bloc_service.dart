import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book1.dart';
import 'package:nabeey_app/pages/book_page.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/home_page.dart';
import 'package:nabeey_app/pages/video1.dart';
import 'package:nabeey_app/pages/video1_1.dart';
import 'package:nabeey_app/pages/video_page.dart';
import 'package:nabeey_app/pages/profile_page.dart';
import 'package:nabeey_app/pages/btmNavBar.dart';
import 'package:nabeey_app/pages/quiz_page.dart';
import 'package:nabeey_app/pages/rating_page.dart';
import 'package:nabeey_app/pages/article2.dart';
import 'package:nabeey_app/pages/article3.dart';
import 'package:nabeey_app/pages/videos.dart';

import '../pages/article4.dart';
import '../pages/articleInside.dart';
import '../pages/category2_page.dart';
import '../pages/category3_page.dart';

enum NavigationEvent {
  navigateToHomePage,
  navigateToCategoryPage,
  navigateToArticlePage,
  navigateToVideoPage,
  navigateToAudioPage,
  navigateToBookPage,
  navigateToProfilePage,
  navigateToQuizPage,
  navigateToRatingPage,
  navigateToArticlePage2,
  navigateToArticlePage3,
  navigateToArticleInside,
  navigateToArticlePage4,
  navigateToYoutubeVideo,
  navigateToCategory2Page,
  navigateToCategory3Page,
  navigateToYoutubeVideo2,
  navigateToPdf,
  navigateToVideo1,
}

class NavigationBloc extends Bloc<NavigationEvent, int> {
  
  NavigationBloc() : super(0) {
    on<NavigationEvent>(
      (event, emit) {
        if (event == NavigationEvent.navigateToHomePage) {
          emit(0);
        } else if (event == NavigationEvent.navigateToCategoryPage) {
          emit(1);
        } else if (event == NavigationEvent.navigateToArticlePage) {
          emit(2);
        } else if (event == NavigationEvent.navigateToVideoPage) {
          emit(3);
        } else if (event == NavigationEvent.navigateToAudioPage) {
          emit(4);
        } else if (event == NavigationEvent.navigateToBookPage) {
          emit(5);
        } else if (event == NavigationEvent.navigateToProfilePage) {
          emit(6);
        } else if (event == NavigationEvent.navigateToQuizPage) {
          emit(7);
        } else if (event == NavigationEvent.navigateToRatingPage) {
          emit(8);
        }else if (event == NavigationEvent.navigateToArticlePage2) {
          emit(9);
        }else if (event == NavigationEvent.navigateToArticlePage3) {
          emit(10);
        }else if (event == NavigationEvent.navigateToArticleInside) {
          emit(11);
        }else if (event == NavigationEvent.navigateToArticlePage4) {
          emit(12);
        }else if (event == NavigationEvent.navigateToYoutubeVideo) {
          emit(13);
        }else if (event == NavigationEvent.navigateToCategory2Page) {
          emit(14);
        }else if (event == NavigationEvent.navigateToCategory3Page) {
          emit(15);
        }else if (event == NavigationEvent.navigateToYoutubeVideo2) {
          emit(16);
        }else if (event == NavigationEvent.navigateToPdf) {
          emit(17);
        }else if (event == NavigationEvent.navigateToVideo1) {
          emit(18);
        }
      },
    );
    // on<NavigationEvent>(
    //   (event, yield) {
    //     if (event == NavigationEvent.navigateToHomePage) {
    //       (0);
    //     } else if (event == NavigationEvent.navigateToCategoryPage) {
    //       yield(1);
    //     } else if (event == NavigationEvent.navigateToArticlePage) {
    //       yield(2);
    //     } else if (event == NavigationEvent.navigateToVideoPage) {
    //       yield(3);
    //     } else if (event == NavigationEvent.navigateToAudioPage) {
    //       yield(4);
    //     } else if (event == NavigationEvent.navigateToBookPage) {
    //       yield(5);
    //     } else if (event == NavigationEvent.navigateToProfilePage) {
    //       yield(6);
    //     } else if (event == NavigationEvent.navigateToQuizPage) {
    //       yield(7);
    //     } else if (event == NavigationEvent.navigateToRatingPage) {
    //       yield(8);
    //     }
    //   },
    // );
  }
}

class BlocProviderIns {
  static final navigationBloc = NavigationBloc();

  returnBPI() {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocBuilder<NavigationBloc, int>(
              builder: (context, currentPage) {
                switch (currentPage) {
                  case 0:
                    return const HomePage();
                  case 1:
                    return const CategoryPage();
                  case 2:
                    return const ArticlePage();
                  case 3:
                    return const VideoPage();
                  case 4:
                    return const AudioPage();
                  case 5:
                    return const BookPage();
                  case 6:
                    return const ProfilePage();
                  case 7:
                    return const QuizPage();
                  case 8:
                    return const RatingPage();
                  case 9:
                    return const Article2();
                  case 10:
                    return const Article3();
                  case 11:
                    return ArticleInside();
                  case 12:
                    return const Article4();
                  case 13:
                    return const Videos();
                  case 14:
                    return const Category2Page();
                  case 15:
                    return const Category3Page();
                  case 16:
                    return const Video1();
                  case 17:
                    return PDFViewerPage();
                  case 18:
                    return const Video1Page();
                  default:
                    return Container();
                }
              },
            ),
            bottomNavigationBar: const BtmNavBar(),
          );
        },
      ),
    );
  }
}

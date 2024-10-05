import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninga/cache/cache_helper.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/features/home/data/manger/cubit/change_theme_cubit.dart';
import 'package:food_ninga/features/splash/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cacheIntialzation();
  runApp(const FoodNinja());
}

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangeThemeCubit>(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          final themeIsDark = state is ThemeIsDark ? state.isDark : false;
          final themeSaved =
              BlocProvider.of<ChangeThemeCubit>(context).getTheme();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor: const Color(0xfffef7ff),
                cardColor: const Color(0xffF6F6F6),
                focusColor: const Color(0xfffef5ec),
                primaryColor: ColorManger.kMaterialWhiteColor,
                hintColor: Colors.black),
            themeMode:
                themeSaved ?? themeIsDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black,
              cardColor: Colors.grey,
              focusColor: ColorManger.kMaterialBlackColor,
              primaryColor: ColorManger.kMaterialBlackColor,
              hintColor: ColorManger.kMaterialWhiteColor,
            ),
            home: const SplashView(),
          );
        },
      ),
    );
  }
}

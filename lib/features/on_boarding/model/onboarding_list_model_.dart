import 'package:food_ninga/core/utils/assets_manger.dart';
import 'package:food_ninga/features/on_boarding/model/onboarding_model.dart';

final List<OnBoardingModel> items = [
  OnBoardingModel(
    image: AssetsManger.kIllustartionCandy,
    subTitel: 'Find your Comfort\nFood here',
    titel:
        'Here You Can find a chef or dish for every\n taste and color. Enjoy!',
  ),
  OnBoardingModel(
    image: AssetsManger.kIllustartionBerger,
    subTitel: 'Food Ninja is Where Your\n Comfort Food Lives',
    titel: 'Enjoy a fast and smooth food delivery at\n your doorstep',
  ),
];

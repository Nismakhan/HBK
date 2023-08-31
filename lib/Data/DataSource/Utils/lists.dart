import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Domain/Models/categories_model.dart';
import 'package:hbk_blanket_app_design/Domain/Models/new_arrivals_model.dart';

class Lists {
  static final List<CategoriesModel> categories = [
    CategoriesModel(
        assetsPaths: AssetsPaths.generalProduct,
        productName: "General Products"),
    CategoriesModel(
        assetsPaths: AssetsPaths.babyBlanket, productName: "Baby Blanket"),
    CategoriesModel(
        assetsPaths: AssetsPaths.flannelBlanket,
        productName: "Flannel Blanket"),
    CategoriesModel(
        assetsPaths: AssetsPaths.flannelSets, productName: "Flannel sets"),
    CategoriesModel(
        assetsPaths: AssetsPaths.simpleBedBlanket,
        productName: "Simple Bed Blanket"),
    CategoriesModel(
        assetsPaths: AssetsPaths.doubleBedBlanket,
        productName: "Double Bed Blanket"),
    CategoriesModel(
        assetsPaths: AssetsPaths.bedCoverSet, productName: "Bed Cover Set"),
  ];
  static final List<NewArrivalsModel> newArrivals = [
    NewArrivalsModel(
      assetsPaths: AssetsPaths.logo,
      description: "Belpla Teenagers 1 Ply Single Bed Blanket",
    ),
    NewArrivalsModel(
      assetsPaths: AssetsPaths.logo,
      description: "Belpla Teenagers 1 Ply Single Bed Blanket",
    ),
    NewArrivalsModel(
      assetsPaths: AssetsPaths.logo,
      description: "Belpla Teenagers 1 Ply Single Bed Blanket",
    ),
  ];
}

import 'package:amit/models/productsModel.dart';
import 'package:amit/shared/components/components.dart';
import 'package:flutter/material.dart';

List<ProductModel> data = [
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Smart Tv",
    "200",
  ),
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Smart Tv",
    "200",
  ),
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Tv",
    "200",
  ),
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Tv",
    "200",
  ),
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Tv",
    "200",
  ),
  ProductModel(
    "https://cdnprod.mafretailproxy.com/sys-master-root/h30/hc8/17399093624862/522249_main.jpg_1700Wx1700H",
    "Tv",
    "200",
  ),
];

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        childAspectRatio: 1 / 1.5,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(
            data.length,
                (index) =>
                buildGridProducts(data[index], context)),
      ),
    );
  }
}

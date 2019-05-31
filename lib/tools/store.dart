import 'package:flutter/material.dart';

class Store{
  String itemName, itemImage;
  double itemPrice, itemRating;
  Store.items({
    this.itemName,
    this.itemPrice,
    this.itemImage,
    this.itemRating
});
}
List<Store> storeItems = [
  Store.items(
      itemName: 'Summer Shirt',
      itemPrice: 2500.00,
      itemImage: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-summer-shirts-for-men-9-1533739614.jpg?crop=1xw:1xh;center,top&resize=480:*",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Winter Shirt',
      itemPrice: 2500.00,
      itemImage: "https://i.ebayimg.com/images/g/lSIAAOxyoahSV5AH/s-l300.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Summer Shoes',
      itemPrice: 2500.00,
      itemImage: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1550787720-converse-1-1550787709.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Winter Shoes',
      itemPrice: 2500.00,
      itemImage: "https://images-na.ssl-images-amazon.com/images/I/81I6rE7c06L._UY500_.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Summer Pantalon',
      itemPrice: 2500.00,
      itemImage: "https://www.bbois.com/63-large_default/pantalon-en-loden-.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Winter Pantalon',
      itemPrice: 2500.00,
      itemImage: "https://www.jachensen.nl/media/catalog/product/cache/1/image/1185x1140/040ec09b1e35df139433887a97daa66f/m/e/meyer_pantalon_dublin__modern_fit__grijs_cf_555706_11.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Glasses',
      itemPrice: 2500.00,
      itemImage: "https://images.homedepot-static.com/productImages/ea15223b-0818-40e2-8594-1bb2ddd17373/svn/magnifeye-reading-glasses-86020-14-64_1000.jpg",
      itemRating: 0.0
  ),
  Store.items(
      itemName: 'Watch',
      itemPrice: 2500.00,
      itemImage: "https://images-na.ssl-images-amazon.com/images/I/71QHGTKiwAL._UX342_.jpg",
      itemRating: 0.0
  ),
];
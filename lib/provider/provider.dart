import 'package:flutter/material.dart';
import 'data.dart';

class ItemsProvider extends ChangeNotifier {
  final List<Item> _items = [
    Item(
        image: 'images/img1.jpg',
        text: 'images 1',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget tortor eget nunc sollicitudin varius. Donec sit amet turpis faucibus, rhoncus lorem vitae, efficitur quam. Sed eget nisi nunc. Vestibulum ante ipsum pefficitur arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '100',
        price: '300',
        mrp: '400'),
    Item(
        image: 'images/img2.jpg',
        text: 'images 2',
        description: 'Lorem ipsum dolor sit a s arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '200',
        price: '500',
        mrp: '600'),
    Item(
        image: 'images/img3.jpg',
        text: 'images 3',
        description: 'Lorem ipsum dDonec sit amet turpis faucibus, rhoncus lorem vitae, efficitur quam. Sed eget nisi nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eget efficitur arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '50',
        price: '200',
        mrp: '700'),
    Item(
        image: 'images/img5.jpg',
        text: 'images 4',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget tortor eget nunc sollicitudin varius. Donec sit amet turpis faucibus, rhoncus lorem vitae, efficitur quam. Sed eget nisi nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eget efficitur arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '20',
        price: '100',
        mrp: '500'),
    Item(
        image: 'images/img5.jpg',
        text: 'images 5',
        description: 'Lorem ipsum dolor sit ametDonec sit amet turpis faucibus, rhoncus lorem vitae, efficitur quam. Sed eget nisi nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eget efficitur arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '150',
        price: '450',
        mrp: '700'),
    Item(
        image: 'images/img6.jpg',
        text: 'images 6',
        description: 'Lorem ipsum dolor si Donec sit amet turpis faucibus, rhoncus lorem vitae, efficitur quam. Sed eget nisi nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eget efficitur arcu. Fusce id quam at nisl tincidunt scelerisque. Sed pretium tortor justo, at tristique est varius at. Morbi pharetra fringilla metus, vel congue eros malesuada non. Integer fringilla, leo sed condimentum rhoncus, ligu',
        offerprice: '180',
        price: '700',
        mrp: '900')
  ];

  List<Item> _cartItems = [];

  List<Item> get items => _items;

  List<Item> get cartItems => _cartItems;

  void addItemToCart(Item item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItemFromCart(Item item) {
    _cartItems.remove(item);
    notifyListeners();
  }
}

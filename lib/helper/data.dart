import 'package:flutter/cupertino.dart';
import 'package:news_app/models/categori_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.categoryName="Business";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1425421669292-0c3da3b8f529?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

   //2
  categoryModel.categoryName="Entertainment";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1518609878373-06d740f60d8b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

   //3
  categoryModel.categoryName="Health";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

   //4
  categoryModel.categoryName="General";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1562979314-bee7453e911c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

   //5
  categoryModel.categoryName="Sports";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1556817411-31ae72fa3ea0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

   //6
  categoryModel.categoryName="Technology";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
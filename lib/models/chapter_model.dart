class ChapterResponseModel {
  String status;
  List<Content> contents;

  ChapterResponseModel({
    required this.status,
    required this.contents,
  });
}

class Content {
  String id;
  String cname;
  String dogsImage;
  String catImage;
  List<SubCategory> subCategory;

  Content({
    required this.id,
    required this.cname,
    required this.dogsImage,
    required this.catImage,
    required this.subCategory,
  });
}

class SubCategory {
  String subcatid;
  String catId;
  String subCategoryName;
  dynamic banner;
  String image;

  SubCategory({
    required this.subcatid,
    required this.catId,
    required this.subCategoryName,
    required this.banner,
    required this.image,
  });
}

dynamic responseData = {
  "status": "success",
  "contents": [
    {
      "id": "15",
      "cname": "DOGS",
      "dogs_image": "1638695967-rtyyyt.jpg",
      "cat_image": "1638695967-jhjjj.jpg",
      "sub_category": [
        {
          "subcatid": "36",
          "cat_id": "15",
          "sub_category_name": "Accessories",
          "banner": null,
          "image": "1638695982-ACCESORIE.jpg",
          "inner_sub": [
            {
              "inner_sub_name": "Accessories",
            },
            {
              "inner_sub_name": "Beds",
            },
          ]
        },
        {
          "subcatid": "39",
          "cat_id": "15",
          "sub_category_name": "Beds",
          "banner": null,
          "image": "1638695982-ACCESORIE.jpg",
          "inner_sub": [
            {
              "inner_sub_name": "ACCESORIE",
            },
            {
              "inner_sub_name": "1638695967",
            },
          ]
        }
      ]
    },
    {
      "id": "14",
      "cname": "CATS",
      "dogs_image": "1638695967-rtyyyt.jpg",
      "cat_image": "1638695967-jhjjj.jpg",
      "sub_category": [
        {
          "subcatid": "47",
          "cat_id": "14",
          "sub_category_name": "Accessories",
          "banner": null,
          "image": "1638695982-ACCESORIE.jpg"
        }
      ]
    }
  ]
};

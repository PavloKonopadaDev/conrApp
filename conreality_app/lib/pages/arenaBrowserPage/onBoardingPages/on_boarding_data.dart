import 'package:conreality_app/constants.dart';

class SliderModel {
  String img;
  String title;
  String subTitle;
  String descript;
  SliderModel({
    this.title,
    this.img,
    this.subTitle,
    this.descript,
  });

  void setImgAsset(String getImgPath) {
    img = getImgPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setSubTitle(String getSubTitle) {
    subTitle = getSubTitle;
  }

  void setDescrip(String getDescript) {
    descript = getDescript;
  }

  String getImgAsset() {
    return img;
  }

  String getTitle() {
    return title;
  }

  String getSubTitle() {
    return subTitle;
  }

  String getDescrip() {
    return descript;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = List<SliderModel>();
  SliderModel sliderModel = SliderModel();
  //1
  sliderModel.setTitle(titleforfirstcard);
  sliderModel.setSubTitle(subtitleforfirstcard);
  sliderModel.setImgAsset(imageforfirstcard);
  sliderModel.setDescrip(textforfirstcard);
  slides.add(sliderModel);
  sliderModel = SliderModel();

  //2
  sliderModel.setTitle(titleforsecondcard);
  sliderModel.setSubTitle(subtitleforsecondcard);
  sliderModel.setImgAsset(imageforsecondcard);
  sliderModel.setDescrip(textforsecondcard);
  slides.add(sliderModel);
  sliderModel = SliderModel();

  //3
  sliderModel.setTitle(titleforthirdcard);
  sliderModel.setSubTitle(subtitleforthirdcard);
  sliderModel.setImgAsset(imageforthirdcard);
  sliderModel.setDescrip(textforthirdcard);
  slides.add(sliderModel);
  sliderModel = SliderModel();

  //4
  sliderModel.setTitle(titleforfourthcard);
  sliderModel.setSubTitle(subtitleforfourthcard);
  sliderModel.setImgAsset(imageforfourthcard);
  sliderModel.setDescrip(textforfourthcard);
  slides.add(sliderModel);
  sliderModel = SliderModel();

  return slides;
}

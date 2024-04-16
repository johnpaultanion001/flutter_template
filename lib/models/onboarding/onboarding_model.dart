class OnboardingModel {
  String title;
  String description;
  String buttonName;
  String image;


  OnboardingModel({
    required this.title,
    required this.description,
    required this.buttonName,
    required this.image,
  });

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  void setButtonName(String getButtonName) {
    buttonName = getButtonName;
  }

  void setImage(String getImage) {
    image = getImage;
  }


  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }

  String getButtonName() {
    return buttonName;
  }

  String getImage() {
    return image;
  }
}

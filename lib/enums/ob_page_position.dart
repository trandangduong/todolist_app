enum ObPagePosition {
  page1,
  page2,
  page3,
}

extension ObPagePositionExtension on ObPagePosition {
  String obPageImage() {
    switch (this) {
      case ObPagePosition.page1:
        return "assets/images/ob1.png";
      case ObPagePosition.page2:
        return "assets/images/ob2.png";
      case ObPagePosition.page3:
        return "assets/images/ob3.png";
    }
  }

  String obPageTitle() {
    switch (this) {
      case ObPagePosition.page1:
        return "Manage your tasks";
      case ObPagePosition.page2:
        return "Create daily routine";
      case ObPagePosition.page3:
        return "Organize your tasks";
    }
  }

  String obPageContent() {
    switch (this) {
      case ObPagePosition.page1:
        return "You can easily manage all of your daily tasks.";
      case ObPagePosition.page2:
        return "In Uptodo  you can create your personalized routine to stay productive";
      case ObPagePosition.page3:
        return "You can organize your daily tasks by adding your tasks into separate categories";
    }
  }
}

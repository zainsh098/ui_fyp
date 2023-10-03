class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Scan edit crop. ",
    image: "assets/apple.png",
    desc: "Do whatever you want and then \nshare the files with just click.",
  ),
  OnboardingContents(
    title: "O C R",
    image: "assets/google.png",
    desc:
    "Instant conversion to text\n with OCR don't worry about typing.",
  ),
  OnboardingContents(
    title: "Save Files Locally",
    image: "assets/facebook.png",
    desc:
    "Take control of notifications, collaborate live or on your own time.",
  ),
];
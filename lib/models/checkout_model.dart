class Checkout {
  final String name, experience, linkedin, twitter;

  Checkout({
    required this.name,
    required this.experience,
    required this.linkedin,
    required this.twitter,
  });
}

List<Checkout> checkout = [
  Checkout(
    name: "Abhishek Ranjan",
    experience:
        "Ex-Developer Intern @Samsung R&D Institute | Ex-ML Engineer Intern @PolymathAI | SME-Design and Analysis of Algorithms @GreyNodes | ML + Deep Learning Practitioner",
    linkedin: "https://www.linkedin.com/in/abhishekrp2002/",
    twitter: "https://twitter.com/abhishek_rp2002",
  ),
  // Checkout(name: "name", experience: experience, linkedin: linkedin, twitter: twitter)
];

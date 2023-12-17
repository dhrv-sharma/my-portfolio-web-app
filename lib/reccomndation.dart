class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "State Management",
    source: "Flutter",
    text:
        "Setstate in Flutter is a basic method for managing state within StatefulWidget, suitable for simpler applications. The Provider package is a third-party solution that excels in sharing and updating state across different widgets, offering flexibility for app-wide or scoped state management. On the other hand, the Bloc pattern, often implemented with the flutter_bloc package, is an architectural approach ideal for larger applications. It uses streams and events to separate UI and business logic, enhancing maintainability and testability in complex scenarios. The choice among these methods depends on the specific needs and scale of the Flutter application.",
  ),
  Recommendation(
    name: "GCCF-Google Cloud Certified Foundations",
    source: "Certification",
    text:
        "The GCCF (Google Cloud Certified - Foundations) course, completed between August 2023 and December 2023, encompasses essential aspects of cloud computing. Participants delved into TensorFlow for machine learning, SQL query creation for database management, and the fundamentals of AI image processing. The course also covered the creation of clusters, emphasizing practical skills in deploying and managing cloud infrastructure. This comprehensive foundation equips learners with the knowledge and hands-on experience needed for effective cloud computing, data management, and artificial intelligence applications.",
  ),
  Recommendation(
    name: "Java SE Development on Oracle Cloud",
    source: "Certification",
    text:
        "Completed an Oracle course on Java Development in Oracle Cloud, gaining expertise in building robust and scalable Java applications within the Oracle Cloud environment. The course covered key aspects of Java development, including programming concepts, application design, and cloud deployment. Participants learned to leverage Oracle Cloud services for efficient development, deployment, and management of Java applications, enhancing their skills in creating powerful, cloud-native solutions using Java technologies.",
  ),
  Recommendation(
    name: "Test-Driven Development (TDD)",
    source: "Principle",
    text:
        "TDD is a software development methodology where tests are written before the actual code implementation. The process involves three main steps: write a failing test, implement the code to make the test pass, and refactor the code while keeping the tests passing. TDD encourages modular and loosely coupled code by focusing on small, testable units. It helps in catching bugs early, ensuring code correctness, and providing a safety net for future changes.",
  ),
  Recommendation(
    name: "Clean Architecture",
    source: "Market",
    text:
        "Clean Architecture, introduced by Robert C. Martin, emphasizes the separation of concerns and the independence of the application's business logic from external frameworks and delivery mechanisms. It promotes a layered architecture with concentric circles, each representing a different layer of the application: Entities, Use Cases, Interface Adapters, and Frameworks & Drivers. The core business logic resides in the innermost circle, making it independent of the UI, database, or external frameworks. This separation enhances flexibility, testability, and maintainability.",
  ),
];

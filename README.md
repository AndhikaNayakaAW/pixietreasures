# PixieTreasures E-Commerce Application

## Assignment 7: Basic Elements of Flutter

This assignment focuses on implementing a simple E-Commerce application in Flutter. The app includes three primary actions with Snackbar notifications, button color variations, and uses various Flutter widgets.

## Questions and Answers

1. **What are Stateless and Stateful Widgets? Explain the difference between them.**  
   - **Stateless Widgets:** Stateless widgets are immutable, meaning their properties cannot change once created. They are primarily used for static content that doesn’t need to update dynamically. An example is a button or label that doesn’t change after being built.
   - **Stateful Widgets:** Stateful widgets are mutable and can change over time in response to user interactions or other factors. These widgets maintain a "state," and the UI is re-rendered whenever that state changes. An example is a form with text fields where the user’s input alters the displayed content.

2. **Widgets Used in This Project and Their Uses**  
   - **MaterialApp:** The root widget for setting up app-level properties, like the theme and home page.
   - **Scaffold:** Provides the basic structure, including an `AppBar` at the top and `body` for the main content.
   - **AppBar:** Displays the title of the application at the top of the screen.
   - **ElevatedButton.icon:** Used for creating buttons with icons and labels for the main app actions, styled with custom colors.
   - **SnackBar:** Displays messages at the bottom of the screen to notify users of their actions.
   - **Column:** Arranges the buttons in a vertical list in the center of the screen.
   - **Padding:** Adds space around each button for a better layout.

3. **Use-case for `setState()` and Its Effects**  
   - `setState()` is used in **stateful** widgets to trigger a rebuild of the UI when the state of an object changes. It’s commonly used in interactive parts of an app, like updating counters, lists, or other dynamic data. Since this app only uses `StatelessWidget`, `setState()` is not applied here, as there’s no need for dynamic content that changes over time.

4. **Difference Between `const` and `final` Keywords**  
   - **const:** Declares compile-time constants, meaning the variable’s value must be known at compile time and cannot be changed later. Use `const` for values that are fully determined before runtime.
   - **final:** Declares variables that are set only once and can be initialized at runtime, unlike `const`, which is strictly for compile-time constants. Use `final` for values that need to be set once but aren’t known until runtime, like an API response.

5. **Implementation Steps for Assignment 7**  
   - **Step 1:** Created the Flutter project `pixietreasures` by running the following commands in the terminal:
     ```bash
     flutter create pixietreasures
     cd pixietreasures
     ```
     This initializes a new Flutter project with all the default directories and files. The project name is set as `pixietreasures` to match the theme.

   - **Step 2:** Defined three primary buttons within `main.dart` that serve as the main actions for the app. Each button is associated with an action and displayed using `ElevatedButton.icon` with an icon and text:
     - **View Product List** (Icon: `Icons.list`, Color: `Colors.blue`): Navigates to the product list page where users can view available products.
     - **Add Product** (Icon: `Icons.add`, Color: `Colors.green`): Opens a form to add new products to the list.
     - **Logout** (Icon: `Icons.logout`, Color: `Colors.red`): Logs the user out of the application.
     
     These buttons were placed in a `Column` widget for vertical alignment and padded with `Padding` for spacing.

   - **Step 3:** Applied distinct colors to each button by using the `styleFrom` method with the `backgroundColor` parameter:
     ```dart
     ElevatedButton.styleFrom(
       backgroundColor: button.color,
     );
     ```
     Each button has a unique color to help users visually distinguish the actions, enhancing the user experience and making the interface intuitive.

   - **Step 4:** Configured `SnackBar` messages to appear at the bottom of the screen when each button is pressed:
     - "You have pressed the View Product List button" for the **View Product List** button.
     - "You have pressed the Add Product button" for the **Add Product** button.
     - "You have pressed the Logout button" for the **Logout** button.
     
     The `SnackBar` notifications provide feedback, confirming the user’s action. This was implemented by creating a helper function `_showSnackbar` that displays a `SnackBar` with a custom message, which is then called within each button’s `onPressed` callback.

   - **Step 5:** Added the explanations above to the README.md file to document the project and describe each step in detail. This README includes answers to questions about Flutter concepts used in the app and provides a guide for future reference or collaborators.

   - **Step 6:** Committed and pushed the project to GitHub using Git commands:
     ```bash
     git add .
     git commit -m "Implement PixieTreasures E-Commerce app with interactive buttons"
     git push -u origin main
     ```
     This ensures that the project is saved and accessible in a remote repository, allowing for version control and collaboration if needed.


## Running the Application

1. Navigate to the project directory in the terminal.
2. Use `flutter run` to launch the app and test the functionality.


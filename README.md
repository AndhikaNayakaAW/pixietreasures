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


## Assignment 8: Flutter Navigation, Layouts, Forms, and Input Elements

### Questions and Answers

1. **What is the purpose of `const` in Flutter? Explain the advantages of using `const` in Flutter code. When should we use `const`, and when should it not be used?**  
   - **Purpose of `const`:** The `const` keyword is used to create constant values and widgets that are immutable and determined at compile-time. It signals that a widget or value will not change after being created.
   - **Advantages of using `const`:**
     - **Performance Improvement:** Flutter can optimize and reuse the widget, reducing rebuilds and improving performance.
     - **Predictability:** Const widgets ensure that the UI behaves predictably, as they are immutable.
   - **When to use `const`:** Use `const` when the value is known at compile-time and does not change, such as static text or layout properties.
   - **When not to use `const`:** Avoid using `const` when the widget relies on runtime data or when the state of the widget is expected to change.

2. **Explain and compare the usage of `Column` and `Row` in Flutter. Provide example implementations of each layout widget!**  
   - **Column:**
     - Arranges widgets vertically (top to bottom).
     - Commonly used when displaying elements stacked on top of each other.
     - Example:
       ```dart
       Column(
         children: [
           Text('Item 1'),
           Text('Item 2'),
           Text('Item 3'),
         ],
       );
       ```
   - **Row:**
     - Arranges widgets horizontally (left to right).
     - Useful for placing elements side by side.
     - Example:
       ```dart
       Row(
         children: [
           Icon(Icons.star),
           Text('Rating'),
         ],
       );
       ```

3. **List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!**  
   - **Input elements used:**
     - `TextFormField` for the **name** field.
     - `TextFormField` with `keyboardType: TextInputType.number` for the **amount** field.
     - `TextFormField` for the **description** field with a multi-line setup (`maxLines: 3`).
   - **Other input elements not used:**
     - `Checkbox` for boolean selection.
     - `Radio` and `RadioListTile` for selecting one option from a set.
     - `Switch` for toggling states (on/off).
     - `Slider` for choosing a value from a range.
     - `DropdownButton` for selecting from a dropdown list.
     - `DatePicker` for date selection.
     
     These input elements were not needed in this assignment as only text and numeric input fields were required.

4. **How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?**  
   - **Setting the theme:** Use the `ThemeData` object within the `MaterialApp` widget to set the theme for an entire app. This ensures consistent styling across all widgets and pages.
   - **Example:**
     ```dart
     MaterialApp(
       title: 'PixieTreasures',
       theme: ThemeData(
         primarySwatch: Colors.deepPurple,
       ),
       home: MyHomePage(),
     );
     ```
   - **Implementation in the app:** Yes, the `PixieTreasures` app has a theme applied with `primarySwatch` set to `Colors.deepPurple` for a unified look.

5. **How do you manage navigation in a multi-page Flutter application?**  
   - **Navigation management:** Navigation is handled using the `Navigator` widget with methods like `Navigator.push()`, `Navigator.pop()`, and `Navigator.pushReplacement()`.
   - **Example for navigating to a new page:**
     ```dart
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => AddItemFormPage()),
     );
     ```
   - This stack-based approach allows moving between pages and managing the back stack for page transitions.

## Assignment 9: Integrating Django Web Service with Flutter Application

This assignment focuses on integrating a Flutter application with a Django backend, implementing features such as user authentication, data retrieval, and data submission.

### Questions and Answers

1. **Why do we need to create a model to retrieve or send JSON data? Will an error occur if we don't create a model first?**

   - **Purpose of a Model:**
     - Models in Django define the structure of data stored in the database and allow interaction through the ORM.
     - They facilitate data serialization into JSON format for API consumption.
     - Without a model, it is impossible to structure, validate, or manipulate data effectively.

   - **Errors Without a Model:**
     - Django views such as `serializers.serialize` or database queries will throw errors because the model schema is missing.
     - APIs requiring JSON responses cannot function properly without a structured model.

2. **What is the function of the `http` library that you implemented for this task?**

   - **Functionality:**
     - The `http` library in Flutter enables HTTP communication with the Django backend.
     - It supports various request methods, such as `GET`, `POST`, and `DELETE`, for data exchange.

   - **Examples:**
     - `GET` Request:
       ```dart
       final response = await http.get(Uri.parse('http://localhost:8000/json/'));
       ```
     - `POST` Request:
       ```dart
       final response = await http.post(
         Uri.parse('http://localhost:8000/create-product-flutter/'),
         headers: {"Content-Type": "application/json"},
         body: jsonEncode({
           "name": _name,
           "price": _price.toString(),
           "description": _description,
           "rating": _rating.toString(),
         }),
       );
       ```

3. **What is the function of `CookieRequest`, and why is it necessary to share the `CookieRequest` instance with all components in the Flutter app?**

   - **Purpose of `CookieRequest`:**
     - Manages session cookies for authenticated requests.
     - Ensures session persistence by attaching cookies to each request automatically.

   - **Sharing the Instance:**
     - Sharing the same `CookieRequest` instance across the app allows all components to maintain the same session state.
     - For example, it ensures that a user logged in through one component can access protected resources in another.

4. **Explain the mechanism of data transmission, from input to display in Flutter.**

   - **Mechanism:**
     1. **Input**:
        - Data is entered in Flutter (e.g., product name and price in a form).
        - Example:
          ```dart
          final response = await request.postJson(
            "http://localhost:8000/create-product-flutter/",
            jsonEncode({
              "name": _name,
              "price": _price.toString(),
              "description": _description,
              "rating": _rating.toString(),
            }),
          );
          ```
     2. **Data Transmission**:
        - Flutter sends the data to Django via an HTTP POST request.
     3. **Data Processing**:
        - Django validates the data and stores it in the database.
     4. **Display**:
        - Flutter retrieves the data using a GET request and displays it using widgets such as `ListView`.

5. **Explain the authentication mechanism from login, register, to logout.**

   - **Mechanism**:
     1. **Register**:
        - Flutter sends user data (username and password) to Django's `/auth/register/` endpoint.
        - Django creates a new user and returns a success response.
     2. **Login**:
        - Flutter sends credentials to `/auth/login/`.
        - Django verifies the credentials, starts a session, and returns session cookies.
        - These cookies are stored by `CookieRequest` for future authenticated requests.
     3. **Logout**:
        - Flutter sends a request to `/auth/logout/`.
        - Django clears the session and invalidates the cookies.

6. **How do you implement the checklist above step by step?**

   - **Step-by-Step Implementation**:
     1. **Ensure Django Deployment**:
        - Start the Django development server locally:
          ```bash
          python manage.py runserver
          ```
        - Ensure all endpoints (e.g., `/json/`, `/auth/login/`) are functional.

     2. **Registration Feature**:
        - Implement the `RegisterPage` in Flutter.
        - Send registration data to `/auth/register/` via a POST request.
        - On success, navigate to the login page.

     3. **Login Feature**:
        - Implement the `LoginPage` in Flutter.
        - Authenticate user credentials via a POST request to `/auth/login/`.
        - Store the session cookies in `CookieRequest`.

     4. **Custom Model in Django**:
        - Define a `Product` model:
          ```python
          class Product(models.Model):
              name = models.CharField(max_length=255)
              price = models.PositiveIntegerField()
              description = models.TextField()
              rating = models.PositiveIntegerField()
              user = models.ForeignKey(User, on_delete=models.CASCADE)
          ```

     5. **List of Items**:
        - Implement `ProductEntryPage` in Flutter.
        - Fetch product data via a GET request to `/json/`.
        - Parse and display product details in a `ListView`.

     6. **Detail Page**:
        - Implement `ProductDetail` in Flutter.
        - Pass the selected product details from the list page.
        - Display all attributes and add a button to navigate back to the list.

     7. **Filter Items by User**:
        - Modify Django’s `/json/` endpoint to return only items belonging to the logged-in user:
          ```python
          def show_json(request):
              data = Product.objects.filter(user=request.user)
              return HttpResponse(serializers.serialize("json", data), content_type="application/json")
          ```
---

## Running the Application

1. Ensure the Django server is running locally.
2. Launch the Flutter app using:
   ```bash
   flutter run

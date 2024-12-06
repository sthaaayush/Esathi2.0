# Esathi 2.0

Esathi is a social media platform built using Java, JSP, and Servlets. It allows users to securely log in, interact anonymously, and enjoy engaging mini-games, all through a responsive and user-friendly interface.

---

## **Features**
- **User Authentication**: Secure login and registration system.
- **Anonymous Posts**: Share posts while maintaining privacy.
- **Mini-Games**: Interactive games for entertainment.
- **Responsive UI**: Built with JSP, Servlets, HTML, and CSS.
- **Database Integration**: Connected to a MySQL database using JDBC.

---

## **Setup Instructions**
1. **Prerequisites**:
   - **Java Development Kit (JDK)**: Version 8 or higher.
   - **NetBeans IDE**: For project development and deployment.
   - **Apache Tomcat**: Version 9 or later.
   - **MySQL Database**: For storing user and application data.
   - **JDBC Connector**: Ensure the MySQL JDBC Driver is added to the project.

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/sthaaayush/Esathi2.0.git
    ```
3. **Database Configuration**:

- Create a database named esathi.
- Import the esathi.sql file located in the db/ folder to set up the database schema and sample data.
4. **Update Database Credentials**:

- Open DbConnection.java in the src/utils/ folder.
- Update the database URL, username, and password:
```java
private static final String URL = "jdbc:mysql://localhost:3306/esathi";
private static final String USER = "your_username";
private static final String PASSWORD = "your_password";
```
5. **Run the Project**:
- Open the project in NetBeans.
- Right-click the project and select Run.
- Deploy to Apache Tomcat via NetBeans.
- Access the application at http://localhost:8080/Esathi2.0.
## **Functionality**
1. Login & Registration:

- Users can register with a unique username and password.
- Existing users can securely log in with session management.
2. Anonymous Interaction:

- Post and share content without revealing identity.
3. Games:

- A set of interactive mini-games integrated into the platform.
4. Error Handling:

- User-friendly error messages and validations.
## **Gameplay Features**
- Game Directory: Includes HTML and JSP files for various mini-games.
- Leaderboard (Planned): Tracks user scores and ranks.
## **Future Improvements**
- Integration with Spring Framework for better scalability.
- Addition of a leaderboard system for games.
- Enhanced UI/UX with modern design practices.
- Deployment on a cloud server (e.g., AWS or Heroku).
## **Tools & Technologies**
- **Backend**: Java Servlets and JSP.
- **Frontend**: HTML, CSS, and JavaScript.
- **Database**: MySQL.
- **IDE**: NetBeans.
- **Server**: Apache Tomcat.
- **Build Tool**: Ant.
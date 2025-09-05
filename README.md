
# VIT Bhopal Examination Portal

Welcome to the VIT Bhopal Examination Portal! This comprehensive platform is designed to streamline the examination process for students and faculty at VIT Bhopal University. The portal provides a modern, responsive interface with role-based access for both students and administrators.

![VIT Bhopal Examination Portal](https://github.com/akhilthirunalveli/VIT-Examination-portal/blob/main/docs/VIT-Exam-Page.png)

## Features

### Core Functionality
- **Dual Role Authentication:** Separate login portals for students and administrators
- **Modern UI/UX:** Clean, responsive design with glassmorphism effects
- **Exam Management:** Comprehensive exam scheduling and management system
- **Interactive Quiz System:** Dynamic quiz interface with timer functionality
- **Timetable Management:** View and manage examination schedules
- **Password Management:** Secure password change functionality
- **Dashboard Analytics:** Role-specific dashboards with relevant information

### Student Features
- View upcoming examinations and timetables
- Take interactive quizzes with real-time feedback
- Access exam results and performance analytics
- Manage profile and password settings
- Responsive mobile-friendly interface

### Admin Features
- Complete exam management system
- Student registration and management
- Timetable creation and scheduling
- Result management and analytics
- System configuration and settings

## Demo

Check out the live demo of the portal [here](https://examination-portal-nine.vercel.app/).

## Project Structure

```
VIT-Examination-portal/
├── index.html                 # Main landing page
├── README.md                  # Project documentation
├── assets/                    # Static assets
│   ├── documents/            # PDF documents and papers
│   └── images/               # Organized image assets
│       ├── logos/            # VIT logos and branding
│       ├── profiles/         # User profile images
│       ├── papers/           # Exam paper screenshots
│       └── ui/               # UI elements and backgrounds
├── css/                      # Stylesheets
│   ├── main.css             # Global styles and components
│   ├── admin.css            # Admin-specific styles
│   ├── student.css          # Student-specific styles
│   ├── quiz.css             # Quiz interface styles
│   ├── admin-styles.css     # Additional admin styling
│   └── student-styles.css   # Additional student styling
├── js/                       # JavaScript functionality
│   ├── main.js              # Core functionality
│   ├── admin.js             # Admin dashboard logic
│   ├── student.js           # Student dashboard logic
│   ├── quiz.js              # Quiz system functionality
│   └── timeTable.js         # Timetable management
├── pages/                    # Application pages
│   ├── auth/                # Authentication pages
│   │   ├── login-selection.html
│   │   ├── admin-login.html
│   │   └── student-login.html
│   ├── admin/               # Admin dashboard pages
│   │   ├── dashboard.html
│   │   ├── exam.html
│   │   ├── password.html
│   │   └── timetable.html
│   ├── student/             # Student dashboard pages
│   │   ├── dashboard.html
│   │   ├── exam.html
│   │   ├── password.html
│   │   └── timetable.html
│   └── quiz/                # Quiz system pages
│       ├── quiz.html
│       └── testing.html
└── docs/                     # Documentation assets
    └── VIT-Exam-Page.png
```

## Technologies Used

### Frontend
- **HTML5** - Modern semantic markup
- **CSS3** - Advanced styling with custom properties, flexbox, and grid
- **JavaScript (ES6+)** - Interactive functionality and DOM manipulation
- **Remix Icons** - Comprehensive icon library
- **Swiper.js** - Touch slider components
- **Google Fonts (Poppins)** - Modern typography

### Design Features
- **Glassmorphism Effects** - Modern UI with backdrop blur
- **Responsive Design** - Mobile-first approach
- **CSS Custom Properties** - Consistent theming
- **Custom Scrollbars** - Branded gold scrollbars
- **Smooth Animations** - Enhanced user experience

### Backend Integration Ready
- **SQL Database** - Data persistence layer
- **SENDER** - Communication system

## Getting Started

To get a local copy up and running, follow these steps.

### Prerequisites

- Modern web browser (Chrome, Firefox, Safari, Edge)
- Local web server (optional but recommended)
- Text editor or IDE

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/akhilthirunalveli/VIT-Examination-portal.git
   cd VIT-Examination-portal
   ```

2. **Start a local server** (recommended)

   Using Python:
   ```bash
   # Python 3
   python -m http.server 5500
   
   # Python 2
   python -m SimpleHTTPServer 5500
   ```

   Using Node.js:
   ```bash
   npx serve .
   ```

   Using VS Code Live Server extension:
   - Install Live Server extension
   - Right-click on `index.html`
   - Select "Open with Live Server"

3. **Access the application**

   Open your browser and navigate to `http://localhost:5500`

## Usage

### For Students
1. **Access the Portal:** Open the application and select "Student Portal"
2. **Login:** Use your student credentials to access your dashboard
3. **Dashboard:** View upcoming exams, timetables, and announcements
4. **Take Exams:** Access and complete online examinations
5. **View Results:** Check exam results and performance analytics

### For Administrators
1. **Admin Access:** Select "Admin Portal" from the login selection page
2. **Login:** Use administrator credentials to access admin dashboard
3. **Manage Exams:** Create, schedule, and manage examinations
4. **Student Management:** View and manage student records
5. **Timetable:** Create and update examination schedules
6. **System Settings:** Configure portal settings and preferences

## File Organization

The project follows a clean, modular structure:

- **`/assets/`** - All static assets organized by type
- **`/css/`** - Modular stylesheets for different components
- **`/js/`** - JavaScript modules for specific functionality
- **`/pages/`** - HTML pages organized by user role and function

## Styling Features

### Color Scheme
- **Primary:** Gold (#f8f208) and Orange (#ee9821)
- **Secondary:** Dark blue variants (#04091d, #0f1221, #03060f)
- **Accent:** Light text (#94a3b8) and White (#ffffff)

### Key Design Elements
- **Glassmorphism:** Translucent containers with backdrop blur
- **Custom Scrollbars:** Gold-themed scrollbars matching brand colors
- **Responsive Layout:** Mobile-first design with breakpoints
- **Smooth Transitions:** Enhanced user experience with animations
- **Modern Typography:** Poppins font family for readability

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**VIT Bhopal University Examination Portal** - Streamlining education through technology


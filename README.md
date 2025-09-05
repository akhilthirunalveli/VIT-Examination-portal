
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

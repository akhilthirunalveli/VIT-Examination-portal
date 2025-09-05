# VIT Examination Portal - File Reorganization Script
# Run this script from the root directory of your project

Write-Host "Starting VIT Examination Portal reorganization..." -ForegroundColor Green

# Create new directory structure
$directories = @(
    "assets",
    "assets/images",
    "assets/images/logos",
    "assets/images/profiles", 
    "assets/images/papers",
    "assets/images/ui",
    "assets/images/backgrounds",
    "assets/documents",
    "css",
    "js", 
    "pages",
    "pages/auth",
    "pages/admin",
    "pages/student", 
    "pages/quiz",
    "data",
    "docs"
)

Write-Host "Creating directory structure..." -ForegroundColor Yellow
foreach ($dir in $directories) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
        Write-Host "Created: $dir" -ForegroundColor Cyan
    }
}

# File mapping - source to destination
$fileMappings = @{
    # Images - Logos
    "header.png" = "assets/images/logos/header.png"
    "header1.png" = "assets/images/logos/header1.png"
    "12.png" = "assets/images/logos/12.png"
    
    # Images - Profiles
    "profile-5.png" = "assets/images/profiles/profile-5.png"
    "R-1.png" = "assets/images/profiles/R-1.png"
    
    # Images - Papers
    "Mid-1.png" = "assets/images/papers/Mid-1.png"
    "Mid-2.png" = "assets/images/papers/Mid-2.png"
    "End-1.png" = "assets/images/papers/End-1.png"
    "End-2.png" = "assets/images/papers/End-2.png"
    "P-1.png" = "assets/images/papers/P-1.png"
    "P-2.png" = "assets/images/papers/P-2.png"
    
    # Images - UI
    "about.jpg" = "assets/images/ui/about.jpg"
    "ue.png" = "assets/images/ui/ue.png"
    "timer.png" = "assets/images/ui/timer.png"
    "1.png" = "assets/images/ui/1.png"
    
    # Documents
    "paper.pdf" = "assets/documents/paper.pdf"
    
    # CSS Files
    "styles.css" = "css/main.css"
    "ad-style.css" = "css/admin.css"
    "sd-style.css" = "css/student.css"
    "quizstyle.css" = "css/quiz.css"
    
    # JavaScript Files
    "ad-app.js" = "js/admin.js"
    "sd-app.js" = "js/student.js"
    "quizscript.js" = "js/quiz.js"
    # main.js and timeTable.js stay in js/ folder
    
    # HTML Pages - Auth
    "Login.html" = "pages/auth/login-selection.html"
    "admin-login.html" = "pages/auth/admin-login.html"
    "student-login.html" = "pages/auth/student-login.html"
    
    # HTML Pages - Admin
    "ad-index-sec.html" = "pages/admin/dashboard.html"
    "ad-timetable-sec.html" = "pages/admin/timetable.html"
    "ad-exam-sec.html" = "pages/admin/exam.html"
    "ad-password-sec.html" = "pages/admin/password.html"
    
    # HTML Pages - Student
    "sd-index-sec.html" = "pages/student/dashboard.html"
    "sd-timetable-sec.html" = "pages/student/timetable.html"
    "sd-exam-sec.html" = "pages/student/exam.html"
    "sd-password-sec.html" = "pages/student/password.html"
    
    # HTML Pages - Quiz
    "quiz.html" = "pages/quiz/quiz.html"
    "testing.html" = "pages/quiz/testing.html"
    
    # Documentation
    "VIT-Exam Page.png" = "docs/VIT-Exam-Page.png"
}

Write-Host "Moving and renaming files..." -ForegroundColor Yellow

# Move and rename files
foreach ($source in $fileMappings.Keys) {
    $destination = $fileMappings[$source]
    
    if (Test-Path $source) {
        try {
            Move-Item -Path $source -Destination $destination -Force
            Write-Host "Moved: $source -> $destination" -ForegroundColor Green
        }
        catch {
            Write-Host "Error moving $source : $($_.Exception.Message)" -ForegroundColor Red
        }
    }
    else {
        Write-Host "File not found: $source" -ForegroundColor Magenta
    }
}

# Handle files that stay in js folder but need to be moved
$jsFiles = @("main.js", "timeTable.js")
foreach ($jsFile in $jsFiles) {
    if (Test-Path $jsFile) {
        Move-Item -Path $jsFile -Destination "js/$jsFile" -Force
        Write-Host "Moved: $jsFile -> js/$jsFile" -ForegroundColor Green
    }
}

# Handle blog images (if they exist)
$blogImages = Get-ChildItem -Path "." -Name "blog-*.jpg" -ErrorAction SilentlyContinue
foreach ($blogImage in $blogImages) {
    if (Test-Path $blogImage) {
        Move-Item -Path $blogImage -Destination "assets/images/ui/$blogImage" -Force
        Write-Host "Moved: $blogImage -> assets/images/ui/$blogImage" -ForegroundColor Green
    }
}

Write-Host "`nReorganization complete!" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Update file paths in your HTML, CSS, and JS files" -ForegroundColor White
Write-Host "2. Test all functionality to ensure everything works" -ForegroundColor White
Write-Host "3. Update any hardcoded paths in your code" -ForegroundColor White

Write-Host "`nFiles that might need path updates:" -ForegroundColor Yellow
Write-Host "- index.html (update CSS and JS links)" -ForegroundColor White
Write-Host "- All HTML files (update image paths, CSS links, JS links)" -ForegroundColor White
Write-Host "- CSS files (update background image paths)" -ForegroundColor White
Write-Host "- JS files (update any file references)" -ForegroundColor White

# Create a backup of the original structure info
Write-Host "`nCreating structure info file..." -ForegroundColor Yellow
$structureInfo = @"
VIT Examination Portal - File Reorganization Completed
Date: $(Get-Date)

Original structure has been reorganized to:
- assets/ (images, documents)
- css/ (stylesheets)
- js/ (JavaScript files)
- pages/ (HTML pages organized by role)
- data/ (for future data files)
- docs/ (documentation)

Remember to update file paths in your code!
"@

$structureInfo | Out-File -FilePath "REORGANIZATION-INFO.txt" -Encoding UTF8
Write-Host "Created: REORGANIZATION-INFO.txt" -ForegroundColor Cyan

Write-Host "`nScript completed successfully! 🎉" -ForegroundColor Green
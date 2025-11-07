# 1️⃣ Clone your Flutter base template
git clone https://github.com/abdulsalam/flutter_template.git my_new_app
cd my_new_app

# 2️⃣ Remove Git history (disconnect from template repo)
rm -rf .git

# 3️⃣ Rename Flutter app name (what shows on the device)
flutter pub run rename --appname "My New App"

# 4️⃣ Change the package/bundle ID (Android + iOS)
flutter pub run change_app_package_name:main com.abdulsalam.mynewapp

# 5️⃣ Get dependencies
flutter pub get

# 6️⃣ Reinitialize Git for the new project
git init
git add .
git commit -m "Initial commit from template"

# 7️⃣ Add your new remote repo
git remote add origin https://github.com/abdulsalam/my_new_app.git

# 8️⃣ Push your new project to your own repository
git branch -M main
git push -u origin main

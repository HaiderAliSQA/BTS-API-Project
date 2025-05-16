@echo off
echo 🧠 Downloading latest Postman collection...

curl --location ^
--request GET ^
"https://api.getpostman.com/collections/p09wt6p" ^
--header "X-Api-Key: PMAK-<your-new-api-key>" ^
-o BTS-API.postman_collection.json

echo ✅ Collection downloaded successfully.

echo 📦 Adding all changes to Git...
git add -A

echo 💬 Committing changes...
git commit -m "🔁 Auto-exported updated Postman collection"

echo 🚀 Pushing to GitHub...
git push

echo 🎉 Done! Press any key to exit.
pause >nul

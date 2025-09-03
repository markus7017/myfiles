find . -name ".DS_Store" -type f -delete
git stage *
git commit -m "updated"
git push
git status

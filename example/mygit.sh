dir=$(pwd)
git add "$dir"
time=$(date)
git commit -m "$time"
git push

while true; do
     inotifywait -r -e close_write,moved_to,create,delete,delete_self --exclude '.git' "~"
     git add .
     git commit -m "Automatic commit"
     git push
   done

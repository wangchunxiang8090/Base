for i in {1..100}; do
   curl http://192.168.1.72 -o /dev/null
   sleep 1
done

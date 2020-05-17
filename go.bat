set CLASSPATH=.
javac *.java
java mkfs filesys.dat 256 16
java mkdir /home
java mkdir /home/rayo
java ls /home
echo howdy, podner | java tee /home/rayo/hello.txt
java cp /home/rayo/hello.txt /home/rayo/greeting.txt
java cat /home/rayo/greeting.txt

java chmod /home/rayo 0111
java ls /home

java chmod  /home/rayo /home 0700
java ls /home

java chmod /home 0760
java ls /home

java chown /home 5
java ls /home

java chgrp /home 7
java ls /home

java find /home

pause
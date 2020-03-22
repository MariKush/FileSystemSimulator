set CLASSPATH=.
javac *.java
java mkfs filesys.dat 256 16
java mkdir /home
java mkdir /home/rayo
java ls /home
echo howdy, podner | java tee /home/rayo/hello.txt
java cp /home/rayo/hello.txt /home/rayo/greeting.txt
java cat /home/rayo/greeting.txt

java chmod /home/rayo 777
java ls /home

java chmod  /home/rayo /home 077
java ls /home

java chmod /home 007
java ls /home

pause
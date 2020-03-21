set CLASSPATH=.
javac *.java
java mkfs sample.dat 256 16
java mkdir /home
java mkdir /home/rayo
java ls /home
echo howdy, podner | java tee /home/rayo/hello.txt
java cp /home/rayo/hello.txt /home/rayo/greeting.txt
java cat /home/rayo/greeting.txt

java ls /home
pause
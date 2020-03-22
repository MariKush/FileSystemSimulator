set CLASSPATH=.
javac *.java
java mkfs filesys.dat 256 16
java mkdir /home
java mkdir /home/rayo
java ls /home
echo howdy, podner | java tee /home/rayo/hello.txt
java cp /home/rayo/hello.txt /home/rayo/greeting.txt
java cat /home/rayo/greeting.txt

java mkdir /root
java ls /
dir /b *.java | java tee /root/t.lis
java ls /root
java cat /root/t.lis

pause
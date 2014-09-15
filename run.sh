gradle clean build
cd ~/apps/Tomcat7/webapps/
rm Airline.war
rm -f Airline
cd ~/Desktop/All_Projects/Airline/build/libs/
cp Airline.war ~/apps/Tomcat7/webapps/

gradle clean build
cd ~/apps/Tomcat7/webapps/
rm Airline.war
rm -r Airline
cd ~/Desktop/CO226Pr/Airline/build/libs/
cp Airline.war ~/apps/Tomcat7/webapps/

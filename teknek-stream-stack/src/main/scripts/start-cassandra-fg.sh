CP=`ls teknek-stream-stack*.jar`
CP=$CP:streamstack.properties
for f in `ls lib/*` ; do
  CP=$CP:$f
done
echo "Starting cassandra"
/usr/java/jdk1.7.0_13/bin/java -classpath $CP io.teknek.streamstack.StandAloneCassandraServer

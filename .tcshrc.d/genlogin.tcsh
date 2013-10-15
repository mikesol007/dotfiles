# Oracle
setenv ORACLE_BASE /opt/ora11g/orabase
setenv ORACLE_HOME $ORACLE_BASE/db
setenv ORA_CRS_HOME /opt/ora11g/crs
setenv PATH $ORACLE_HOME/bin:$PATH
setenv ORACLE_SID rnd_MISC
setenv LD_LIBRARY_PATH $ORACLE_HOME/lib
setenv DEV_HOME $HOME/devel/java

setenv CVSROOT ':pserver:msoliman@eng.cvs:2401/usr/local/cvs/eng'

setenv CLASSPATH $ORACLE_HOME/JRE:$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms:$ORACLE_HOME/network/jlib:$DEV_HOME/:$DEV_HOME/3rdparty/ojdbc6.jar:$DEV_HOME/3rdparty/mail.jar

README

Costa Rica Kids School Sponsorship Program

Software Stack

* Tested on Microsoft Windows 8+ and Chrome

* Java
 * install Java 8 JDK from Oracle website http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

* jruby 9.0.3.0
 * install from http://jruby.org/download into C:\jruby-9.0.3.0

* SQL Server Express 2014
  * install from http://www.microsoft.com/en-ca/server-cloud/products/sql-server-editions/sql-server-express.aspx
  * use the SQL Server Express with Advanced Services package
  * install with mixed mode authentication
  * create a login crk_app_login with password "password"
  * create a user crk_app_user for said login
  * activate TCP to listen on port 1433
  * download the jdbc driver sqljdbc42.jar from https://msdn.microsoft.com/en-us/library/ms378526(v=sql.110).aspx
  * copy said sqljdbc42.jar to C:\jruby-9.0.3.0\sqljdbc42.jar

* git
 * install Git for Windows https://git-scm.com/download/win
 * change directory to c:\
 * run the command "git clone https://github.com/kpatrick/crk2 c:\crk2" to pull down the latest source code from Github.

* rails
 * change directory to c:\crk2
 * run the command "jruby -S gem install bundler" as the bundler gem has to be installed as its own step.
 * run the command "jruby -S bundle install" to pull down the dependencies.
 * run the command "jruby -S rake db:create db:migrate db:seed" to setup the development and test databases
 * run the command "jruby -S rails server"
 * open http://localhost:3000 to see a default Ruby on Rails page. Control-C the rails server to stop.
 * additional flags and commands are need to run in production mode. Set the RAILS_ENV and SECRET_KEY_BASE system variables, run the assets compilations, setup production database, set the port.

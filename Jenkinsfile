pipeline {

 agent any

 tools {
  jdk 'JAVA_HOME'
  maven 'M2_HOME'
 }

 stages {

 stage('GIT') {

           steps {

               git branch: 'ziedFADHLAOUI-5WIN-ZYMA',

               url: 'https://github.com/WINZYMA/5WIN_ZYMA_tp-foyer.git'

          }

     }

 stage ('clean Stage') {

 steps {

 sh 'mvn clean '

 }

 }
  stage ('Compile Stage') {

 steps {

 sh 'mvn clean compile'

 }

 }

 }

}

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

   /*  stage('MVN SONARQUBE') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=Sonarsonar1!'
           // }
            }
        }*/
  stage('nexus') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn package -DskipTests'
           // }
            }
        }

    stage('deploy nexus') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn deploy -DskipTests'
           // }
            }
        }
   stage('Docker image') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'docker build -t ziedfadhlaoui/tp-foyer:1.0.0 .'
           // }
            }
        }

 }

}

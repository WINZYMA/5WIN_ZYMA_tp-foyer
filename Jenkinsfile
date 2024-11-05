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

 stage ('Clean Stage') {

 steps {

 sh 'mvn clean '

 }

 }
   stage ('Compile Stage') {

      steps {

          sh 'mvn clean compile';

         }

       }

     stage('SONARQUBE') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=Sonarsonar1!'
           // }
            }
        }
 stage('Nexus') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn package -DskipTests'
           // }
            }
        }

    stage('Deploy Nexus') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'mvn deploy -DskipTests'
           // }
            }
        }
  stage('Docker Image') {
            steps {
               // withSonarQubeEnv(installationName: 'sonarq')
         //   {
               sh 'docker build -t ziedfadhlaoui/tp-foyer:1.0.0 .'
           // }
            }
        }
  
    stage('Push Docker Image') {
            steps {
         
               sh 'docker login -u ziedfadhlaoui -p dckr_pat_0lYmtgDsboGslTwn78aOkZQIG-Y'

             sh 'docker push ziedfadhlaoui/tp-foyer:1.0.0'
            }
        }

    stage('Docker Compose') {
            steps {
             sh 'docker compose up -d'
             }
        }

stage('test') {
            steps {
          
             }
        }


 }

}

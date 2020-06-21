pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven_3_6_3') {
                    sh 'mvn clean install'
                }
            }
        }
        
        stage ('Build & Package') {
            steps {
                withSonarQubeEnv('SonarQubeScanner') {
                    sh 'mvn clean package sonar:sonar'
               } 
           }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'maven_3_6_3') {
                    sh 'mvn test'
                }
            }
        }


        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'maven_3_6_3') {
                    nexusArtifactUploader artifacts: [
                        [
                            artifactId: 'maven', classifier: '', 
                            file: 'target/maven-0.0.1.jar', type: 'jar'
                        ]
                    ], 
                        credentialsId: 'nexus3', 
                        groupId: 'test', 
                        nexusUrl: 'localhost:8081', 
                        nexusVersion: 'nexus3', 
                        protocol: 'http', 
                        repository: 'Demo_project', 
                        version: '0.0.1'
                }
            }
        }
    }
}

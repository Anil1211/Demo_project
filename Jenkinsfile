pipeline {
     agent any 
     
     stages {
         stage ('compile stage') {
         step {
            with maven(maven : 'maven_3_6_0') {
               sh 'mvn clean complete'
            
           }
          }
         
       } 
       
  
         stage ('testing stage') {
         step {
            with maven(maven : 'maven_3_6_0') {
               sh 'mvn test'
            
           }
          }
         
       } 
       
       
         stage ('deploy stage') {
         step {
            with maven(maven : 'maven_3_6_0') {
               sh 'mvn deploy'
            
           }
          }
         
       }     
       
       }
       
       }

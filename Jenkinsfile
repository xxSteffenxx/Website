pipeline{
    agent any
    tools{
        java 'JAVA_HOME'
        maven 'M2_HOME'
    }
    stages{
        stage('SCM Checkout'){
            steps{
                git 'https://github.com/xxSteffenxx/Website'
            }
        }
        stage('Compile-Package'){
            steps{
                sh 'mvn package'
            }
        }
    }
  
}

pipeline{
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v /root/.m2:/root/.m2'
        }
    }
    tools{
        maven 'M2_HOME'
    }
    options {
        skipStagesAfterUnstable()
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
        stage('Initialize'){
            def dockerHome = tool 'MyDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Docker') {
            steps {
                sh """
                  docker build -t Website .
                """
                sh """
                  docker run -rm Website .
                """
            }
        }
    }
  
}

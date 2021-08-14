pipeline{
    tools{
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

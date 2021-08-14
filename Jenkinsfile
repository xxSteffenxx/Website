pipeline{
    tools{
        maven 'M2_HOME'
         jdk 'JAVA_HOME'
    }
    stages{
        stage('SCM Checkout'){
            git 'https://github.com/xxSteffenxx/Website'
        }
        stage('Compile-Package'){
            withMaven {
                sh 'mvn package'
            }
        }
    }
  
}

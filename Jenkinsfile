node{
  stage('SCM Checkout'){
    git 'https://github.com/xxSteffenxx/Website'
  }
  stage('Compile-Package'){
    withMaven {
        sh 'mvn package'
    }
  }
  
}

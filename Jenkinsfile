pipeline{
    agent any

stages {
    stage('checkout') {
        steps {
            echo " Echo this is checkout stage"
            git branch: 'main', url: 'https://github.com/Dev-april-2023/java-example.git'
             }
        }

    stage('build') {
        steps {
            echo " echo this is checkout build stage"
             }
         }

    stage('deploy') {
        steps {
             echo "echo this is checkout deploy"
        }
  }

}
}

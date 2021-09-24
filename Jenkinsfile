pipeline {
  agent {
    label "justice-codegen-sdk"
  }
  stages {
    stage('Build') {
      steps {
        sh "make samples"
      }
    }
  }
}
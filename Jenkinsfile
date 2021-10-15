library(
  identifier: 'jenkins-shared-library@master',
  retriever: modernSCM(
    [
      $class: 'GitSCMSource',
      remote: 'https://github.com/dhanarab/jenkins-pipeline-library.git'
    ]
  )
)

bitbucketCredentials = "Bitbucket_Build_AccelByte"

bitbucketPayload = null
bitbucketCommitHref = null

pipeline {
  agent {
    label "justice-codegen-sdk"
  }
  stages {
    stage('Prepare') {
      steps {
        script {
          if (env.BITBUCKET_PAYLOAD) {
            bitbucketPayload = readJSON text: env.BITBUCKET_PAYLOAD
            if (bitbucketPayload.pullrequest) {
              bitbucketCommitHref = bitbucketPayload.pullrequest.source.commit.links.self.href
            }
          }
          if (bitbucketCommitHref) {
            bitbucket.setBuildStatus(bitbucketCredentials, bitbucketCommitHref, "INPROGRESS", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
          }
        }
      }
    }
    stage('Lint') {
      stages {
        stage('Lint Commits') {
          when {
            expression {
              return env.BITBUCKET_PULL_REQUEST_LATEST_COMMIT_FROM_TARGET_BRANCH
            }
          }
          agent {
            docker {
              image 'randondigital/commitlint:3.0'
              reuseNode true
            }
          }
          steps {
            sh "npm install @commitlint/config-conventional@13.2.0"
            sh "commitlint --color false --verbose --from ${env.BITBUCKET_PULL_REQUEST_LATEST_COMMIT_FROM_TARGET_BRANCH}"
          }
        }
        stage('Lint Source Code') {
          steps {
            sh "make lint"
          }
        }
        stage('Lint Mod Outdated') {
          steps {
            sh "make lint-mod-outdated"
          }
        }
      }
    }
    stage('Build') {
      steps {
        sh "make samples  || true"   // FIXME Enable later after lint error is fixed
      }
    }
  }
  post {
    success {
      script {
        if (bitbucketCommitHref) {
          bitbucket.setBuildStatus(bitbucketCredentials, bitbucketCommitHref, "SUCCESSFUL", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
        }
      }
    }
    failure {
      script {
        if (bitbucketCommitHref) {
          bitbucket.setBuildStatus(bitbucketCredentials, bitbucketCommitHref, "FAILED", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
        }
      }
    }
  }
}

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
bitbucketCredentialsSsh = "build_account_bitbucket_key"

bitbucketPayload = null
bitbucketCommitHref = null

pipeline {
  agent none
  stages {
    stage('Prepare') {
      agent {
        label "master"
      }
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
      agent {
        label "justice-codegen-sdk"
      }
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
        stage('Lint Spec') {
          steps {
            sh "[ -s spec/TIMESTAMP ]"  // Make sure TIMESTAMP file is present in spec directory
          }
        }
        stage('Lint Code') {
          steps {
            sh "[ -s codegen.txt ]"  // Make sure codegen.txt file is present in spec directory
            sh "make lint-mod-outdated"
            sh "make lint"
          }
        }
      }
    }
    stage('Build') {
      agent {
        label "justice-codegen-sdk"
      }
      steps {
        sh "make samples"
      }
    }
    stage('Test') {
      agent {
        label "justice-codegen-sdk"
      }
      stages {
        stage('Core Tests') {
          steps {
            sshagent(credentials: [bitbucketCredentialsSsh]) {
              sh "rm -rf .justice-codegen-sdk-mock-server"
              sh "git clone --depth 1 git@bitbucket.org:accelbyte/justice-codegen-sdk-mock-server.git .justice-codegen-sdk-mock-server"
            }
            sh "make test_core SDK_MOCK_SERVER_PATH=.justice-codegen-sdk-mock-server"
          }
        }
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

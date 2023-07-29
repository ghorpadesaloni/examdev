pipeline {
    agent any
    stages {
        stage ('SCM checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ghorpadesaloni/examdev.git'
            }
        }
        stage ('docker image build') {
            steps {
                sh'/usr/bin/docker image build -t salonighorpade/devops .'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo dckr_pat_D56b1i2WmP02Q8FkTZa1Jf30bvU | /usr/bin/docker login -u salonighorpade --password-stdin'
            }
        }
        stage ('docker image push') {
            steps {
                sh '/usr/bin/docker image push salonighorpade/devops'
            }
        }
        stage ('get the confirmation from user') {
            steps {
                input 'Do you want to deploy this application?'
            }
        }
        stage ('remove existing service') {
            steps {
                sh '/usr/bin/docker service rm dockerservice'
            }
        }
        stage ('create docker service') {
            steps {
                sh '/usr/bin/docker service create --name dockerservice -p 4000:4000 --replicas 2 salonighorpade/devops'
            }
        }
    }
}

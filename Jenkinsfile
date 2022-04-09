pipeline {
    agent any
    stages {
    stage('clean workspace'){
        steps {
            script {
            cleanWs()
            }
        }
    }
    stage('checkoutscm'){
        steps {
            git credentialsId: 'github', 
            url: 'https://github.com/AnilNanda/dockerrepo',
            branch: 'master'
        }
    }
    stage('PackageImage'){
        steps {
            script{
		  docker.build("${params.ECR_REPO_NAME}:${env.BUILD_ID}")
		  sh "echo Docker build completed successfully"
		}}}
    stage('Publish Image'){
        steps{
            script{
		  docker.withRegistry("${params.ECR_HOST}","ecr:${params.ECR_REGION}:${ECR_CREDS}"){
		  	docker.image("${params.ECR_REPO_NAME}:${env.BUILD_ID}").push("${params.ECR_REPO_NAME}-${env.BUILD_ID}")
			docker.image("${params.ECR_REPO_NAME}:${env.BUILD_ID}").push("latest")
		}}}}
    }
}
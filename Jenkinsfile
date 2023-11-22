pipeline
{
       agent any
       stages {
             stage('Build') 
             {
                  steps 
                  {
                     sh 'chmod +x init.sh'
                     sh './init.sh&#39'
                  }
             }
             stage('Test') 
             {
                    steps 
                  {
                     sh 'docker exec app python manage.py test'
                     sh 'sleep 4'
                     sh '10.208.0.2:8000'
                     sh 'status=$?'
                     echo '$status'
                  }
            }
            stage('Deploy') 
            {
               steps {
                  echo 'Deploying....'
}


}
}
  post {
     success {
         sh 'version=$(git log -n 1 --format="%s" HEAD)'
         sh 'echo $(git log -n 1 --format="%s" HEAD)'
         sh 'chmod +x deploy.sh'
         sh './deploy.sh $(git log -n 1 --format="%s" HEAD)'
         sh 'rm -rf *'
}
     failure {
         echo 'The Pipeline failed :('
         sh 'rm -rf *'
}
     always {
         sh 'echo build ended, deleting all resources...'
         sh 'chmod +x ./delete.sh'
         sh './delete.sh'
}
}
}
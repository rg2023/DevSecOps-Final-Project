pipeline
{
       agent any
       stages {
             stage('Build') 
             {
                  steps 
                  {
                     sh 'chmod +x init.sh'
                     sh './init.sh'
                  }
             }
             stage('Test') 
             {
                    steps 
                  {
                     sh 'docker exec devconnect python django_web_app/manage.py test'
                     sh 'sleep 4'
                     sh 'http://127.0.0.1:8000'
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
         echo 'The Pipeline success :)'
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
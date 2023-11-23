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
                     sh 'python django_web_app/manage.py runserver 0.0.0.0:8000 &'
                     sh 'sleep 10'
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
}
     failure {
         echo 'The Pipeline failed :('
}
     always {
         sh 'echo build ended, deleting all resources...'
         sh 'chmod +x ./delete.sh'
         sh './delete.sh'
}
}
}
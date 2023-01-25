
pipeline{
    tools{
       
        maven 'mymaven'
    }
	agent any
      stages{
           stage('Checkout'){
	    
               steps{
		 echo 'cloning'
                 git 'https://github.com/ragasang/DevOpsCodeDemo.git'
              }
          }
          stage('Compile'){
             
              steps{
                  echo 'complie the code..'
                  sh 'mvn compile'
	      }
          }
          stage('CodeReview'){
		  
              steps{
		    
		  echo 'codeReview'
                  sh 'mvn pmd:pmd'
              }
          }
           stage('UnitTest'){
		  
              steps{
	         
                  sh 'mvn test'
              }
          
          }
        
          stage('Package'){
		  
              steps{
		  
                  sh 'mvn package'
              }
          }
	   
	   stage('Deploy'){
		  
              steps{
		  
                  //sh 'sudo docker build -t myimage:$BUILD_NUMBER /var/lib/jenkins/workspace/pipelineDemo/target/addressbook.war'
		  sh 'cd /var/lib/jenkins/workspace/PipelineDemo1/target'
		  sh 'echo ***successs*****'
		  sh 'pwd'
		  sh 'ls'
		  sh 'sudo docker build -t myimage:$BUILD_NUMBER .'
		  sh 'echo *****passed******'
		  sh 'sudo docker run -itd -P myimage:$BUILD_NUMBER'
              }
          }
	      
	         
      }
	
			
}

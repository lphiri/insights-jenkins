node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
        checkout scm
        /* We need npm install to run our tests*/
        sh 'npm install'
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        app = docker.build("insights/jenkins-example")
    }

    stage('Run Insights scan on image') {
        /*
         * gulp task will run the scan and save results to the file insights_scan.xml
         */
        sh 'gulp'
        junit allowEmptyResults: true, keepLongStdio: true, testResults: 'insights_scan.xml'
    }

   
}

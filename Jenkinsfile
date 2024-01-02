node {
    stage('Checkout') {
        // Checkout code from the repository
        checkout scm
    }
    stage("ada"){
        emailext (
                subject: '${DEFAULT_SUBJECT}', 
                to: '$DEFAULT_RECIPIENTS',
                attachmentsPattern: '**/destructivePackage.xml',
                recipientProviders: [
                    [$class: 'DevelopersRecipientProvider']
                ], 
                body: '${DEFAULT_CONTENT}'
        )
    }
}
 

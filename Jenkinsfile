node {
    stage('Checkout') {
        // Checkout code from the repository
        checkout scm
    }

    stage('Display Changelog') {
        def changeLogSets = currentBuild.changeSets
        for (int i = 0; i < changeLogSets.size(); i++) {
            def entries = changeLogSets[i].items
            for (int j = 0; j < entries.length; j++) {
                def entry = entries[j]
                echo "Commit by ${entry.author} on ${entry.commitId}: ${entry.msg}"
            }
        }
    }
    stage("ada"){
        getCommitAuthors()
         

    }
    
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
  def getCommitAuthors() {
        def changeLogSets = currentBuild.changeSets
        def authors = []
        for (entry in changeLogSets) {
            for (change in entry.getItems()) {
                def author = change.getAuthor().getAddress()
                if (!authors.contains(author)) {
                    authors.add(author)
                }
            }
        }
        def f = authors.join(', ')
        echo "${f}"
        return f
    }

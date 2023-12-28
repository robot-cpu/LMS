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

    // Add other stages as needed
}

node {
	if [ -e ".git" ]
	then
    		git pull
	else
    		git clone --progress -o origin https://github.com/littlemee/HelloWorld.git
	fi
}

stage('Build') {
    node {
        checkout scm
        sh 'bat'
        stash includes: '**/HelloWorld/*.class', name: 'test' // <1>
    }
}

	


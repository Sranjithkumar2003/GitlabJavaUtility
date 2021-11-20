package test.java.vars;


class SystemCredentials {
	
	String GITLAB_TOKEN = "abcdef";
	
	def getSecretText(String token) {
		return "abcde"
	}
}

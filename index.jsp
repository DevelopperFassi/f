<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="704090768276-f5ocjkk244bii0ud7fpnfror75q9g1qh.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
      <script src="https://apis.google.com/js/platform.js" async defer></script>
<title>Insert title here</title>
</head>
<body>
<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
<div id='status'></div>
 
    
    <script>
    function onSignIn(googleUser) {
    	  var profile = googleUser.getBasicProfile();
    	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    	  console.log('Name: ' + profile.getName());
    	  console.log('Image URL: ' + profile.getImageUrl());
    	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    	}
    if (auth2.isSignedIn.get()) {
    	  var profile = auth2.currentUser.get().getBasicProfile();
    	  console.log('ID: ' + profile.getId());
    	  console.log('Full Name: ' + profile.getName());
    	  console.log('Given Name: ' + profile.getGivenName());
    	  console.log('Family Name: ' + profile.getFamilyName());
    	  console.log('Image URL: ' + profile.getImageUrl());
    	  console.log('Email: ' + profile.getEmail());
    	}
    </script>
 
</body>
</html>
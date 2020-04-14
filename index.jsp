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
        // Useful data for your client-side scripts:
        localStorage.setItem("name", googleUser.getBasicProfile().getName());
        document.getElementById("status").innerHTML = 'Welcome '+name+'! <a href=success.jsp>Redirection</a>'
      }
    </script>
</body>
</html>
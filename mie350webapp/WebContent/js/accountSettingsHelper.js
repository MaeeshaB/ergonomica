$(document).ready(function () {
    $('#submitBtn').click(function() {
    	
    	var curr = document.getElementById("current").value;
        var newPass = document.getElementById("new").value;
        var confirm = document.getElementById("confirm").value;
      
      if(confirm.equals("hi")) {
        alert("The confirmed password is not the same as the new password!");
        return false;
      }
      alert("The confirmed password is not the same as the new password!");
    });
});

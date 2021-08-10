
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" media="all" href="css/feedback/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    </head>
    <body>

        <form action="feedback" method="post">
            <div class="container d-flex justify-content-center">
                <div class="card mt-5 pb-5">
                    <div class="d-flex flex-row justify-content-between p-3 adiv text-white"> <i class="fas fa-chevron-left"></i> <span class="pb-3">feedback</span> <i class="fas fa-times"></i> </div>
                    <div class="mt-2 p-4 text-center">
                        <h6 class="mb-0">Your feedback help us to improve.</h6> <small class="px-3">Please let us know about your chat experience.</small>
                        <div class="d-flex flex-row justify-content-center mt-2">
                            <input type="hidden" value="${requestScope.doctor_id}"/>
                            <label><input type="radio" name="rate" value="0"> <img src="https://img.icons8.com/emoji/48/000000/angry-face-emoji--v2.png" /> </label>
                            <label><input type="radio" name="rate" value="1"> <img src="https://img.icons8.com/fluent/48/000000/sad.png" /> </label>
                            <label><input type="radio" name="rate" value="2"> <img src="https://img.icons8.com/color/48/000000/happy.png" /> </label>
                            <label><input type="radio" name="rate" value="3"> <img src="https://img.icons8.com/emoji/48/000000/smiling-face.png" /> </label>
                            <label><input type="radio" name="rate" value="4"> <img src="https://img.icons8.com/color/48/000000/lol.png" /> </label>
                        </div>    
                        <div class="form-group mt-4"> <textarea name="content" class="form-control" rows="4" placeholder="Message"></textarea> </div>
                        <div class="mt-2"> <button id="cf-submit" type="submit" class="btn btn-primary btn-block"><span>Send feedback</span></button> </div>
                        <p class="mt-3">Continue without sending feedback</p>
                    </div>
                </div>
            </div>
        </form>

        <script language="javascript">
            var button = document.getElementById("cf-submit");
            button.onclick = function () {
                alert("Feedback Success");
            }
        </script>

    </body>
</html>

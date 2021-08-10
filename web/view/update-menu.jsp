<%-- 
    Document   : option
    Created on : Jul 21, 2021, 1:27:22 PM
    Author     : HIEU19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="../dashboard">Doctor website</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i
                    class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">

                    <div class="input-group-append" style="color: white; font-size: 30px; margin-left: 1100px">
                        Department of Subclinical
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="../home">Home Page</a>             
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../logout">Logout</a>
                    </div>
                </li>
            </ul>
        </nav><br/><br/>
        <div class="container">
            <div class="row">
                <h2>ID: ${requestScope.id}</h2>
                
                <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Physical Record</h5>
                        <p class="card-text">The physical examination is the recording of observations of the patient. This includes the vital signs, muscle power and examination of the different organ systems, especially ones that might directly be responsible for the symptoms the patient is experiencing..</p>
                        <a href="update-physical?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                 <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Eye record</h5>
                        <p class="card-text">Medical Vision Technology is an organization of general and specialized ophthalmologists, dedicated to patient care and to improving quality of life through life-changing vision procedures and treatments. </p>
                        <a href="update-eye?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div> <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Internal Record</h5>
                        <p class="card-text">A physical exam of the vagina, cervix, uterus, fallopian tubes, ovaries, and rectum. First, the area outside the vagina is checked for signs of disease. A speculum is then inserted into the vagina to widen it so the vagina and cervix can be checked for signs of disease. Cell samples may be taken for a Pap test, or to test for sexually transmitted diseases or other infections.</p>
                        <a href="update-internal?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                 <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Maxillofacial Record</h5>
                        <p class="card-text">Oral and Maxillofacial Surgeons are specialists in the diagnosis and treatment of a broad range of disorders affecting the facial complex and skeleton, including the jaws and oral cavity.</p>
                        <a href="update-maxi?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                 <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Ear, nose and throat Record</h5>
                        <p class="card-text">Abbreviation for ears, nose and throat. A field of medicine also called otolaryngology</p>
                        <a href="update-ent?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Biochemical Examination</h5>
                        <p class="card-text">Stats of your biochemical examination.</p>
                        <a href="update-bio?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">BloodCell Examination</h5>
                        <p class="card-text">Stats of your biochemical examination.</p>
                        <a href="update-blood?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                    <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Update result</h5>
                        <p class="card-text">When you finish create records for patient, click here to return to dashboard</p>
                        <a href="updatef?id=${requestScope.id}" class="btn btn-primary">Update</a>
                    </div>
                </div>
                <div class="card" style="width: 25rem;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Finish</h5>
                        <p class="card-text">When you finish create records for patient, click here to return to dashboard</p>
                        <a href="dashboard" class="btn btn-primary">Finish</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </html>

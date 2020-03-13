<%-- 
    Document   : mycontact
    Created on : Mar 13, 2020, 9:59:31 AM
    Author     : TRAINING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Card title</h2>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <form action="contactServlet" method ="post">
            <h2>Contact Us</h2>
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Nama</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nama" name="nama">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" name="email">
                </div>
            </div>
            <div class="form-group row">
                <label for="exampleFormControlTextarea1" class="col-sm-2 col-form-label">Pesan</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="pesan" rows="3" name="pesan"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10">
                    <input type="submit" class="btn btn-primary"></input>
                </div>
            </div>
            </form>
        </div>

    </div>
    <form>

</div>
<%@include file="footer.jsp" %>

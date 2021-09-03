<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>Pizza Order Form</title>
</head>
<body>
<h1 style="text-align: center">Create Your Pizza Order</h1>
<div class="container">
<form method="POST" action="/pizza.jsp">
    <div class="form-group">
        <label for="crustType" >Select a Crust</label>
        <select class="form-control" id="crustType" name="crustType">
            <option>Hand Tossed</option>
            <option>Thin Crust</option>
            <option>Chicago Deep Dish</option>
            <option>Stuffed Crust</option>
        </select>
    </div>
        <div class="form-group">
        <label for="sauceType">Select a Sauce</label>
        <select class="form-control" id="sauceType">
            <option>Traditional Red</option>
            <option>Creamy Alfredo</option>
            <option>BBQ Sauce</option>
        </select>
        </div>
            <div class="form-group">
        <label for="pizzaSize">Select a Size</label>
        <select class="form-control" id="pizzaSize">
            <option>Small</option>
            <option>Medium</option>
            <option>Large</option>
            <option>Extra Large</option>
        </select>
    </div>
    <div class="form-check">
        <h3>Toppings</h3>
        <br>
        <input class="form-check-input" type="checkbox" value="" id="pepperoni">
        <label class="form-check-label" for="pepperoni">
            Pepperoni
        </label>
    </div>
        <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="sausage">
        <label class="form-check-label" for="sausage">
            Sausage
        </label>
        </div>
            <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="cheese">
        <label class="form-check-label" for="cheese">
            Cheese
        </label>
            </div>
                <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="mushrooms">
        <label class="form-check-label" for="mushrooms">
            Mushrooms
        </label>
                </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputName">First and Last Name</label>
            <input type="text" class="form-control" id="inputName">
        </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
        <label for="inputAddress">Delivery Address</label>
        <input type="text" class="form-control" id="inputAddress" name="inputAddress">
    </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">City</label>
            <input type="text" class="form-control" id="inputCity">
        </div>
        <div class="form-group col-md-2">
            <label for="inputState">State</label>
            <input type="text" class="form-control" id="inputState">
        </div>
        <div class="form-group col-md-2">
            <label for="inputZip">Zip</label>
            <input type="text" class="form-control" id="inputZip">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>

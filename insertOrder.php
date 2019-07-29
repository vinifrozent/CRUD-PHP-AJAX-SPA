<?php
$clientName = $_POST['clientName'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$nickname = $_POST['nickname'];
$product = $_POST['product'];
$address = $_POST['address'];
$description = $_POST['description'];

$conn = new mysqli('localhost', 'root', '', 'customizablespa');
$db = mysqli_connect('localhost', 'root', '', 'customizablespa');

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
} 


 $sqlOrder = "INSERT INTO orders (Client_Name, Client_Email, Client_Phone, Client_Nickname, Delivery_Address, order_Description, order_Product_Id)
        VALUES ('$clientName', '$email', '$phone', '$nickname', '$address', '$description', '$product')";
		
try {    
        if ($conn->query($sqlOrder) === TRUE) {
            echo "";
        } else {
            throw new Exception('Ocorreu um erro ao cadastrar pedido: ' . $conn->error);
        }
		
        $conn->close();
}
catch (Exception $e) {
    echo json_encode(array(
        'error' => array(
            'msg' => $e->getMessage(),
            'code' => $e->getCode(),
        ),
    ));
}


?>
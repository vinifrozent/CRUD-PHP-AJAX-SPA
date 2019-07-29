<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT  number, street, city, cep FROM website_informations";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
				echo "<address>". $row['number'] ." ". $row['street'] ."<br>". $row['city'] .", ". $row['cep'] ."</address>";
    }

?>
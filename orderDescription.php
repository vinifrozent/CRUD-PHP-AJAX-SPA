<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT orderDescription_Text FROM order_description";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
				echo "<p class='header-p'>". $row['orderDescription_Text'] ."</p>";
    }
?>
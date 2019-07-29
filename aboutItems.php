<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT items_Text FROM about_Items";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
            echo "<li><i class='fa fa-check'></i>". $row['items_Text'] ."</li>";
    }
?>

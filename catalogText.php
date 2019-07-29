<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT catalog_Text FROM catalog_informations";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
			echo "<p class='header-p'>" . $row['catalog_Text'] . "</p>";
    }
?>
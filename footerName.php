<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT website_Name FROM website_configuration";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
			echo "<h4 class='widget-title'>".$row['website_Name']."</h4>";
    }
?>
<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT website_Name, website_Title, website_subTitle FROM website_configuration";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
		   echo "<h1 class='logo-name'>". $row['website_Name'] ."</h1>";
           echo "<h2>". $row['website_Title'] ."</h2>";
            echo "<p>". $row['website_subTitle'] ."</p>";
    }
?>
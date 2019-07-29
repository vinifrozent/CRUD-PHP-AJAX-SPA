<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT about_Title, about_Description FROM website_about";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
			echo "<h1 class=1header-h1>". $row['about_Title'] ."</h1>";
			echo "<p class=1header-p>". $row['about_Description'] ."</p>";
    }
?>
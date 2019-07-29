<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT about_subTitle, about_subDescription FROM website_about";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
			echo  "<h2 class='heading'>".$row['about_subTitle']."</h2>";
            echo  "<p>".$row['about_subDescription']."</p>";
    }
?>

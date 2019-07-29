<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT category_Name FROM product_category";
    $result = mysqli_query($db, $sql);
	echo "<li><a class='filter active' data-filter='menu-show-all'>Show All</a></li>";
    while ($row = mysqli_fetch_array($result)) {
		echo "<li><a class='filter' data-filter='". $row['category_Name'] ." menu-show-all'>". $row['category_Name'] ."</a></li>";
    }
?>
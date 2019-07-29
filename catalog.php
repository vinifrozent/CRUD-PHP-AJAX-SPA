<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT  CT.category_Name, PD.product_Name, PD.product_Value, PD.product_Description FROM products as PD
			INNER JOIN product_category AS CT ON PD.productCategory_Id = CT.category_Id";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
        echo "<div name='productsByCategory' class='menu-show-all ". $row['category_Name'] ."' data-cat='". $row['category_Name'] ." menu-show-all'>";
		echo "<span class='clearfix'>";
		echo "<a class='menu-title' href='#' data-meal-img='assets/img/restaurant/rib.jpg'>". $row['product_Name'] ."</a>";
		echo "<span style='left: 166px; right: 44px;' class='menu-line'></span>";
		echo "<span class='menu-price'>". $row['product_Value'] ."</span>";
		echo "</span>";
		echo "<span class='menu-subtitle'>". $row['product_Description'] ."</span>";
        echo "</div>";
    }
?>
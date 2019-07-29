<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT PD.product_Name, FP.featured_Product_Description, FP.featured_Value, FP.promotionTime FROM featured_product AS FP
			INNER JOIN products AS PD ON FP.featuredProduct_FkId = PD.product_Id";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
               echo "<h2>".$row['product_Name']."</h2>";
               echo "<p>".$row['featured_Product_Description']."</p>";
               echo "<address>";
               echo "<strong>Value: </strong>$".$row['featured_Value']."";
               echo "<br>";
               echo "<strong>Promotion goes until: </strong>".$row['promotionTime']."</address>";
    }
?>
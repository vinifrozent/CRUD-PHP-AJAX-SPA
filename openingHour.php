<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT opening_Week, opening_Weekends FROM website_informations";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
             echo"<p class='light-blue regular alt-p'>". $row['opening_Week'] ."</p>";
              echo"<p class='light-blue regular alt-p'>". $row['opening_Weekends'] ."</p>";
    }
?>
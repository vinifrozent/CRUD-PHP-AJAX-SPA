<?php 

    $db = mysqli_connect('localhost', 'root', '', 'customizablespa');
                                
    $sql = "SELECT phone_Number FROM website_informations";
    $result = mysqli_query($db, $sql);

    while ($row = mysqli_fetch_array($result)) {
             echo"<p class='light-blue regular alt-p'>".$row['phone_Number']."</p>";
    }
?>
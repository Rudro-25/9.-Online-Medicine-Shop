 <link rel="stylesheet" type="text/css" href="style7.css"/>
 <?php
     $q=$_POST['q'];
         include "conn.php";
		 //$conn=mysqli_connect("localhost","root","","drug");
         $query=mysqli_query($conn,"SELECT * FROM drug_list WHERE Name LIKE '%$q%' ");
         $num_rows = mysqli_num_rows($query);
         
         
         echo '<center><b>' ."NUMBER OF ALL MATCHED ITEM =".$num_rows.'</b></center>';
        $n=1;
         while($row = mysqli_fetch_array($query)){
         	$id = $row['ID'];
          $name = $row['Name'];
         	$location = $row['Location'];
         	$shop = $row['Shop'];

         	echo '<center><h3>' .$n.'. ' .$name . '</h3><p>' .$location . '<br />' . $shop . '</p></center><br />';    
              $n++;
                 }
      
      
         
    
    ?>
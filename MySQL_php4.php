<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>足球分析系統</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- <link rel="stylesheet" type="text/css" href="CSS/CSS_background_trans2.css"> -->
        <style type="text/css">
        body{
            background-color: #fc0
        }
        </style>

    </head>
    <body>
        
    <nav class="navbar navbar-expand-md bg-primary navbar-dark">
            <a class="navbar-brand"  href="#">
                <img src="./img/117.png" style=height:10% width:20%>
                
           </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
					</li>
					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							TEAM
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">進攻</a></li>
							<li><a class="dropdown-item" href="#">防守</a></li>
							<li><hr class="dropdown-divider" href="#"> 組織</a></li>
							<li><a class="dropdown-item" href="#">其他</a></li>
						</ul>
					</li>
                    <li class="nav-item">
						<a class="nav-link active" aria-current="page" href="https://s1080844.wixsite.com/socceranalyze/abouts-us">ABOUTS US</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">NEWS</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link active" aria-current="page" href="PLAYERS">PLAYERS</a>
					</li>
				</ul>
				
			</div>
    </nav>
    <div class="banner container-fluid">
        <div class="container-test1">
            <div class="banner-text">
                <h1>足球分析系統</h1>
            </div>
            <div><img src="./img/151.jpg" style=height:10% width:200px>
        </div>
        </div>
    </div>
    <div class="container-fluid p-5 bg-primary text-white text-left">
<?php
include("MySQL_php1.php");


$sql = "select * from team";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo "<TABLE>";
    echo "<tr>";
    echo "<th>球隊1</th><th>球隊2</th><th>球隊3</th><th>球隊4</th>";
    echo "</tr>";   
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo 
"<td>".$row["球隊1"]."</td><td>".$row["球隊2"]."</td><td>".$row["球隊3"]."</td><td>".$row["球隊4"]."</td>";     
        echo "</tr>";
    }
    echo "</TABLE>";
}


$sql = "select * from 巴塞隆納players";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo "<TABLE>";
    echo "<tr>";
    echo "<th> ID</th><th>NAME</th><th>AGE </th> <th> COUNTRY</th><Th>TEAM</th><th>Characteristic</th>";
    echo "</tr>";   
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $v) {
            echo "<td>".$v."</td>";
        }
        echo "</tr>";
    }
    echo "</TABLE>";
}

$conn->close();
echo "</br>";

echo "<a Style=\"border: 3px solid #FFF;background: #EDF; border-radius: 200px;\"
href=\"https://127.0.0.1/MySQL_php6.html\"></a>";
?>
</body>
</html>
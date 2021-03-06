<html>

<head>
    <style>
        p.inline {
            display: inline-block;
            padding-block: 150px;
        }

        span {
            font-size: 20px;
            padding-left: 2px;
        }
    </style>
    <style type="text/css" media="print">
        @page {
            size: A6 portrait;
            /* auto is the initial value */
            margin: 0mm;
            /* this affects the margin in the printer settings */

        }
    </style>
    <style>
        p {
            padding: 4px;
            margin-top: 0mm;
            margin-left: 1.5mm;
            margin-right: 4mm;
            margin-bottom: 0mm;
            /* border: 1px solid #4CAF50; */
        }
    </style>
</head>

<body onload="window.print();">
    <div style="margin-left: 5%">
        <?php
        include "db.php";
        include 'barCodelib.php';
        $bid = $_POST['bid'];
        $acid = $_POST['ac_num'];
        $copies = $_POST['copy'];
        $bookname = $_POST['bname'];
        $uid = str_split(uniqid(true), 8)[1];
        $array = array();
        while ($copies > 0) {
            $copyid = $bid . $uid . $copies;
            $copies--;
            $qu = mysqli_query($con, "INSERT INTO `booksdata` (`BookGuid`,`BookName`) values('$copyid','$bid')") or die(mysqli_error($con));
            if ($qu) {
                array_push($array, $copyid);
            }
        }

        foreach ($array as $key => $value) {
            echo "<p class='inline'><span ><font size = 1.5px><b>Ideal Institute of Technology</b></font></span>" . bar128(stripcslashes($value)) . "</p>&nbsp&nbsp&nbsp&nbsp";
            echo "<p class='inline'><span ><font size = 1.5px><b>Ideal Institute of Technology</b></font></span>" . bar128(stripcslashes($value)) . "</p>&nbsp&nbsp&nbsp&nbsp";
        }
        ?>
    </div>
</body>

</html>
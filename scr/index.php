<?php
    include 'header.php';
    include 'config.php';
?>
<div class="container">
    <h1 class="d-flex justify-content-center">THÔNG TIN XE CHO THUÊ</h1>
    <?php
    if(isset($SESSION['noti'])){
        echo $_SESSION['noti'];
        unset($_SESSION['noti']);
    }
    ?>
    <table class="table">
    <a href="/Project/scr/add.php" id="show">Thêm</a>
        <thead>
            <tr>
                <th scope="col">Mã phương tiện</th>
                <th scope="col">Biển số xe</th>
                <th scope="col">Model</th>
                <th scope="col">Năm sản xuất</th>
                <th scope="col">Kiểu oto</th>
                <th scope="col">Giá cho thuê theo ngày</th>
                <th scope="col">Giá cho thuê theo tuần</th>
                <th scope="col">Trạng thái</th>
            </tr>
        </thead>
        <tbody id="table">
            <?php
            $sql = "SELECT * FROM blood_cars LIMIT 5 ";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
                $i = 1;
                while ($row = mysqli_fetch_assoc($result)) {
            ?>
                    <tr>
                        <td><?php echo $row['vehicle_id']; ?> </td>
                        <td><?php echo $row['license_no']; ?> </td>
                        <td><?php echo $row['model']; ?> </td>
                        <td><?php echo $row['year']; ?> </td>
                        <td><?php echo $row['ctype']; ?> </td>
                        <td><?php echo $row['drate']; ?> </td>
                        <td><?php echo $row['wrate']; ?> </td>
                        <td><?php echo $row['status']; ?> </td>

                        <th scope="col"><a href="edit.php?vehicle_id=<?php echo $row['vehicle_id'];?>"> Edit</a> </th>
                        <th scope="col"><a href="delete.php?vehicle_id=<?php echo $row['vehicle_id'];?>"> Delete</a> </th>

                    </tr>
            <?php
                    $i++;
                }
            }
            ?>
        </tbody>
    </table>
    <a href="#" id="show">Chi tiết</a>

</div>
<?php
include 'footer.php';
?>
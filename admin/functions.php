<?php include "../includes/db.php";?>
<?php
function insert_categories()
{
    global $connection;
    if (isset($_POST['submit'])) {
        $cat_title = $_POST['cat_title'];
        if ($cat_title == "" || empty($cat_title)) {
            echo "This field is required";
        } else {
            $query = "INSERT INTO categories(cat_title) ";
            $query .= "Value('{$cat_title}')";
            $create_category_query = mysqli_query($connection, $query);
            if (!$create_category_query) {
                die('QUERY FAILED' . mysqli_error($connection));
            }
        }
    }
}
function find_all_categories()
{
    global $connection;
    $query = "SELECT * FROM categories";
                                $select_all_categories = mysqli_query($connection, $query);

                                while ($row = mysqli_fetch_assoc($select_all_categories)) {
                                    $cat_ids = $row['cat_id'];
                                    $cat_title = $row['cat_title'];

                                    echo "<tr>";
                                    echo "<td>{$cat_ids}</td>";
                                    echo "<td>{$cat_title}</td>";
                                    echo "<td><a href='categories.php?delete={$cat_ids}'>Delete</a></td>";
                                    echo "<td><a href='categories.php?edit={$cat_ids}'>Edit</a></td>";
                                    echo "</tr>";
                                }
}
function deleteCategories()
{
    global $connection;
    if (isset($_GET['delete'])) {
        $delete_id = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id={$delete_id}";
        $delete_query = mysqli_query($connection, $query);
        //header("Location: categories.php");
    }

}
function confirm($result)
{
    global $connection;
    if(!$result)
    {
        die("QUERY FAILED" . mysqli_error($connection));
    }
    
}
function escape($string) {

    global $connection;
    
    return mysqli_real_escape_string($connection, trim($string));
    
    
    }
?>
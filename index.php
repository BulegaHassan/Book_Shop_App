<?php include 'view/header.php'; ?>
<style>
    html {
        background-image: url(images/books_bg.jpg);
    }
    body {
        text-align: center;
        border: 1px solid black;
        margin: 5em auto;
        width: 50%;
        background-color: white;
    }
   
    ul {
        list-style-type: none;
    }
</style>
<main>
    <h1>Menu</h1>
    <ul>
        <li>
            <a href="product_manager"><h2>Product Manager</h2></a>
        </li>
        <li>
            <a href="product_catalog"><h2>Product Catalog</h2></a>
        </li>
    </ul>
</main>
<?php include 'view/footer.php'; ?>
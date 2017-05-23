<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Welcome</h1>
    <ul>
      <?php
        $response = file_get_contents('http://product-service');
        $json = json_decode($response);
        $products = $json->products;
        foreach ($products as $product) {
          echo '<li>' . $product . '</li>';
        }
      ?>
    </ul>
  </body>
</html>

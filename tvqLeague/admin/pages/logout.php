<?php
	session_start();
	session_destroy();
	header("Location: /TVQ-League/index.php");
?>

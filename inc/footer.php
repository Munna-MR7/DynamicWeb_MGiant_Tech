<div class="footersection templete clear">
	<div class="footermenu clear">
		<ul>
			<li><a href="index.php">Home</a></li>
			<li><a href="page.php?pageid=1">About</a></li>
			<li><a href="contact.php">Contact</a></li>
			<li><a href="page.php?pageid=2">Privacy</a></li>
		</ul>
	</div>
	<?php
	$query = "select * from tbl_footer where id='1'";
	$copyright = $db->select($query);
	if ($copyright) {
		while ($result = $copyright->fetch_assoc()) {
	?>
			<p>&copy; <?php echo $result['note']; ?> <?php echo date('Y'); ?></p>
	<?php }
	} ?>
</div>

<script type="text/javascript" src="js/scrolltop.js"></script>
<script id="dsq-count-scr" src="//db-blog.disqus.com/count.js" async></script>
</body>

</html>
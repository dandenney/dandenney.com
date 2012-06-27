<?php include "shared/page-open.php" ?>
	<title>Dan Denney - A Super Social Front-End Dev</title>
</head>  

<body class="home">

	<?php include "shared/header.php" ?>

	<section class="intro">

		<h1>I <span data-icon="&#x0028;" aria-hidden="true"></span> the web <div>and the people that build it.</div></h1>

		<h2>A little about me:</h2> 

		<h3>I work with the awesome team at <a href="http://envylabs.com">Envy Labs</a>, doing front-end work for projects including <a href="http://codeschool.com">Code School</a>. Because I'm (probably a little too) social, I <a href="http://twitter.com/dandenney">tweet a lot</a>, attend as many meetups and conferences as possible, <a href="/posts">share my thoughts via posts</a> and even run a <a href="http://frontendconf.com">front-end conf</a> with the help of my awesome wife, Cherrie.</h3>

		<p>There's more to the story: I'm a husband, dad, traveler, music lover and a foodie but most of my sharing on here is about the interwebs.</p>

	</section>

	<?php include "shared/footer.php" ?>

	<?php include "shared/scripts.php" ?>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="/js/jquery-1.7.2.min.js"><\/script>')</script>
    <script type="text/javascript">
		setTimeout(function(){var a=document.createElement("script");
		var b=document.getElementsByTagName("script")[0];
		a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0010/7445.js?"+Math.floor(new Date().getTime()/3600000);
		a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
	</script>
    <script src="/js/jquery.fittext.js"></script>
    <script>
    	$(function() {
    		$(".intro h1").fitText(.48);
    	});
    </script>

</body>

</html>
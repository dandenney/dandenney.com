<!DOCTYPE html>  
<html lang="en">  

<head>
	<meta charset="utf-8" />  
	<title>A Sass Noob Using Math for Flexible Widths</title>
	<link rel="stylesheet" type="text/css" href="../../stylesheets/screen.css">  
</head>  

<body>

	<article class="post-standard">

		<h2>A Sass Noob using Math for Flexible Widths</h2>

<!-- 		<img src="http://dandenney.com/dev/explanation.png" alt="flexible math explanation">
 -->		<p>So, now that I’m working with Compass and Sass one of the first things that I want to take advantage of is the math. One of my biggest pain points with responsive web design is using the calculator for the conversions to fluid widths. It bugged me so much that I learned a bunch of javascript to make a smoother way of doing <a href="http://responsv.com/flexible-math">flexible math</a>.</p>
		<p><strong>DISCLAIMER</strong>: I am new to writing mixins. There may be much, much better ways to do this. I am just sharing my learning. So, if you know of a better way please pop it in the comments.<br>
		<span id="more-355"></span></p>
		<h2>The Calculator is not my friend</h2>
		<p>The entire goal of flexible math was to be able to take known widths and divide them fast without having to then move decimals and add percentage signs. Sass does that stuff for you without the need to leave your editor, which is the bees knees.</p>
		<p>This isn’t fancy, I’m not trying to make a grid or anything. I just want to able to say my column is 320px wide in a 960px container.</p>
<pre><code>
@mixin flexible-width ($context, $target) {
     width: (($target / $context) * 100%);
}
</code>
</pre>
		
		<h2>What does that do?</h2>
		<p>So, what this little mixin does is sets up “flexible-width”, which is made up of a context and a target. Then it divides them, leaving a decimal. Then it multiplies that decimal by 100%. (This took a little figuring out on where to put the ‘%’)</p>
		<p>So now anytime I need a percentage width where I know the context and the target, all I have to do is call my mixin with the pixel widths: </p>
<pre><code>
.boom-dan-does-sass-now {
     @include flexible-width (960, 320);
}
</code>
</pre>
		
		<p>The actual compiled CSS is:</p>

<pre><code>
.boom-dan-does-sass-now {
     width: 33.333%;
}
</code>
</pre>

		<h2>Boom!</h2>
		<p>Now I won’t have to do any actual conversions and won’t even have to leave the CSS file to have flexible percentage widths. Thanks again to <a href="http://twitter.com/parenteau">@parenteau</a> for the nudge. I’ll be sharing my learnings as I go.</p>
		<h2>Accuracy <strike>Disclaimer</strike> Update</h2>
		<p>By default, the number was going to 3 decimal points. Sharing this post led the awesome <a href="http://twitter.com/chriscoyier">Chris Coyier</a> to chime in on a solution for that. You just update your config.rb with this funky little stuff and set how deep you want the rabbit hole to go:</p>
<pre><code>
Sass::Script::Number.precision = 10
</code>
</pre>

	</article>

	<footer>
		&copy; Dan Denney
	</footer>


</body>

</html>
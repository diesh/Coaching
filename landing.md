---
title:  <span class="icon-small alt fa fa-question-circle"></span> Good question!
layout: landing
description: 'Spicy musings about UX, design, tech, and the world we live in.'
image: assets/images/pic11.jpg
nav-menu: true
hide_from_tiles: true
nav-color: "#8d82c4" 
is_special: true  # <== Adds extra space in the menu in header html file
weight: 50

---

<!-- Main -->
<!--   	accent1: #FF6F61, // Fuchsia
 	accent2: #FF7F50, // Coral
    accent3: #8d82c4, // Lavender Blue 
    accent4: #ec8d81, // Soft Coral 
    accent5: #FFDDC1 // Warm Cream -->
<div id="main">

<!-- One -->
<section id="one">
	<div class="inner">
		<header class="major">
			<h2>landing page</h2>
		</header>
		<p>This is blog landing page and this is the landing md.</p>
	</div>
</section>

<!-- Blog Post Section -->
<section id="two" class="spotlights">
	{% for post in site.posts %}
		<section>
			<a href="{{ post.url | absolute_url }}" class="image">
				<!-- Optional: Add an image here related to the post -->
				<img src="{% link assets/images/pic08.jpg %}" alt="{{ post.title }}" data-position="center center" />
			</a>
			<div class="content">
				<div class="inner">
					<header class="major">
						<h3>{{ post.title }}</h3>
					</header>
					<p>{{ post.excerpt }}</p>
					<ul class="actions">
						<li><a href="{{ post.url | absolute_url }}" class="button">Read More</a></li>
					</ul>
				</div>
			</div>
		</section>
	{% endfor %}
</section>

<!-- Three -->
<section id="three">
	<div class="inner">
		<header class="major">
			<h2>Massa libero</h2>
		</header>
		<p>You can write footer stuff here.</p>
		<ul class="actions">
			<li><a href="generic.html" class="button next">Get Started</a></li>
		</ul>
	</div>
</section>

</div>

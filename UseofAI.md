---
layout: page
title: How I Use AI
description: How I use AI in coaching and in building this site.
image: assets/images/Gagan_Diesh_.png
nav-menu: true
nav-color: "#ff7a18"
nav_active: about
hide_from_tiles: true
is_special: true
weight: 10
main_class: alt
---

<section id="one" class="no-banner">
  <div class="inner two-col-layout">

    <!-- LEFT COLUMN -->
    <div class="left-col">

      <div class="page-intro">
        <header class="major">
          <h1>My Use of AI</h1>
          <p>AI is an assistant, not a coach. My coaching is built on trust, listening, and accountability. Our connection is human — and it will never be replaced by robots.</p>
        </header>
      </div>

      <h2>In Coaching</h2>
      <ul>
        <li>I use AI to summarize notes and surface themes from coaching sessions, helping me reduce bias and avoid tunnel vision.</li>
        <li>I maintain a library of prompts, frameworks, and exercises from design thinking, leadership, and product strategy work — AI helps me adapt these for each client while protecting confidentiality.</li>
        <li>I use AI as a proofreader, editor, and bias check for my written work, ensuring clarity and precision without losing my voice.</li>
      </ul>

      <h2>On This Website</h2>
      <ul>
        <li>I collaborated with AI to co-write and refine my site’s code, layout, and content — even though I’m not a coder (sorry, Kim #iykyk!).</li>
        <li>AI helps test design changes, proof content, and catch inconsistencies — but I review everything to make sure it reflects my intent and tone.</li>
        <li>It’s like having a very fast, occasionally annoying assistant who always needs editing.</li>
      </ul>

      <h2>My Commitment to Clients</h2>
      <p>AI supports my work, but it never replaces it. Coaching is about connection, reflection, and accountability — all human things.</p>
      <ul>
        <li>Your confidentiality is always protected.</li>
        <li>I’ll use AI to save time and remove bias, not to make decisions about you or your career.</li>
        <li>Every word, idea, and insight we create together is shaped by people — not machines.</li>
      </ul>

      <p>Coaching is about curiosity and progress. AI is just one more tool to help us focus on what really matters: your growth and impact.</p>

      <p style="margin-top:2em;">
        <a href="javascript:window.history.length > 1 ? history.back() : window.location.href='/AboutGagan.html';" class="button next">Go Back</a>
      </p>

    </div><!-- END LEFT COLUMN -->


    <!-- RIGHT COLUMN -->
    <div class="right-col">
      <br />
      <br />

      <!-- Coaching Sidebar -->
      {% include coaching-sidebar.html %}

      <!-- Mobile inline version -->
      {% include coaching-sidebar.html subnav_class="subnav-mobile" %}

      <!-- Additional Links -->
      <div class="box {{ include.subnav_class | default: 'subnav' }}">
        <h3>Explore More</h3>
        <ul>
          <li><a href="{{ '/AboutGagan.html' | relative_url }}">About Me</a></li>
          <li><a href="{{ '/WorkingTogether.html' | relative_url }}">How We’ll Work Together</a></li>
        </ul>
      </div>

      <!-- Testimonial Block -->
      <div class="testimonials-wrapper single-column" id="testimonial-box" data-count="1" data-box-wrap="true"></div>

    </div><!-- END RIGHT COLUMN -->

  </div><!-- END INNER -->
</section>

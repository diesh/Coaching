<div class="brandimage_masthead" style="background-image: url('{{ site.baseurl }}/{{ page.image }}');"></div>

<section id="one">
  <div class="inner"><!-- START .inner -->

    <div class="two-col-layout"><!-- START .two-col-layout -->

      <div class="left-col"><!-- START .left-col -->
      
        <header class="major">
          <h1>{{ page.title }}</h1>
        </header>

        <h2>Unlock Your Team’s Potential</h2>
        <div class="page-intro">
          <p>{{ page.description }}</p>
        </div>
        <!-- end .page-intro -->

        <h2>Types of Workshops</h2>
        <p>Every workshop is built around your team’s goals. Expect clarity, alignment, and outcomes you can act on.</p>

        <p><b>Select one of the boxes below</b> to see if a workshop speaks to your needs or 
          <a href="#contact" class="next scrolly">contact me</a> to build the workshop right for your team!
        </p>

        <!-- START Expandable Workshops Section -->
        <div class="expandable-section workshops"><!-- START .expandable-section.workshops -->

          <div class="content-cards"><!-- START .content-cards -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Design Thinking for Exec Teams</h3>
              <p class="short">Help your leadership team think creatively, solve the right problems, and stay customer-focused.</p>
              <div class="faq-answer">
                <p>CFOs don't know the power and value of design thinking. Sorry CFOs but you know it's (mostly) true! We’ll walk through real challenges and use empathy, ideation, and experimentation to frame better questions, generate deeper insight, and drive strategic innovation.</p>
                <ul>
                  <li>C-suite and senior leaders</li>
                  <li>Startups</li>
                  <li>GTM team</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Design Thinking) -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Building a Design Culture</h3>
              <p class="short">Shift from a reactive to intentional culture. Build systems and rituals that make innovation central to how your org works.</p>
              <div class="faq-answer">
                <p>This workshop focuses on operationalizing design values into your org’s daily habits. We’ll diagnose current culture blockers and co-create rituals, cadences, and decision-making patterns that support creative, customer-focused teams at scale.</p>
                <ul>
                  <li>C-suite and senior leaders</li>
                  <li>Design and adjacent teams (e.g. R&D, product, eng)</li>
                  <li>Sales</li>
                  <li>Customer support</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Building a Design Culture) -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Idea Generation Workshop</h3>
              <p class="short">Clear the noise and get to good ideas. Fast, structured, and focused on what matters most.</p>
              <div class="faq-answer">
                <p>Using proven ideation formats, we help teams break out of ruts and generate diverse, high-potential ideas. We will banish the "devil's advocate" and introduce the ideas to reality - What can work? What can't? Why not? This is a sprint-style workshop ideal for product, marketing, or cross-functional innovation sessions.</p>
                <ul>
                  <li>Senior leaders</li>
                  <li>Prefunded startup founders</li>
                  <li>Design and adjacent teams (e.g. R&D, product, eng)</li>
                  <li>Cross-functional teams wanting alignment</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Idea Generation) -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Design Sprint</h3>
              <p class="short">Turn problems that are vague, huge, or persistent into a tested prototype.</p>
              <div class="faq-answer">
                <p>This classic 4–5 day process helps you move from ambiguity to clarity fast. Your team will align on the big problem, sketch ideas, decide what to test, and prototype a solution...all grounded in customer feedback.</p>
                <ul>
                  <li>C-suite and senior leaders</li>
                  <li>Startups</li>
                  <li>Design and adjacent teams (e.g. R&D, product, eng)</li>
                  <li>Marketing and Sales</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Design Sprint) -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Ideas to Strategy Workshop</h3>
              <p class="short">Generate many creative ideas and then prioritize, commit, and leave with a clear path forward.</p>
              <div class="faq-answer">
                <p>We’ll guide your team through divergent thinking followed by structured convergence. The goal is to move from creative chaos to confident decision-making, backed by shared priorities and next steps.</p>
                <ul>
                  <li>C-suite and senior leaders</li>
                  <li>Product leadership</li>
                  <li>Product, design and engineering teams</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Ideas to Strategy) -->

            <div class="content-card faq-item expandable-card"><!-- START .content-card -->
              <h3 class="faq-question">Defining Product Space</h3>
              <p class="short">Clarify what you’re building and why so that you can be on the same page, and build what matters.</p>
              <div class="faq-answer">
                <p>This workshop aligns product, design, and exec stakeholders around a clear definition of the problem space. We’ll surface user needs, business goals, and system constraints to build a healthy consensus before building anything.</p>
                <ul>
                  <li>C-suite and senior leaders</li>
                  <li>Startups</li>
                  <li>Product Leadership</li>
                  <li>Product, design and engineering teams</li>
                </ul>
              </div>
            </div>
            <!-- end .content-card (Defining Product Space) -->

          </div>
          <!-- end .content-cards -->
        </div>
        <!-- END Expandable Workshops Section -->

        <blockquote>
          Workshops spark momentum. They shift how teams think, work, and build together. 
          If you're curious, explore <a href="{{ 'WorkingTogether.html' | relative_url }}">how we can work together</a> or 
          <a href="{{ 'AboutGagan.html' | relative_url }}">get to know me</a>.  
          When you're ready, <a href="#contact" class="next scrolly">reach out and let's chat</a> 
          about how a workshop can help you and your team move forward.
        </blockquote>

        <h2>Frequently Asked Questions</h2>
        <div class="faq-container"><!-- START .faq-container -->
          {% for faq in page.faqs %}
            <div class="faq-item"><!-- START .faq-item -->
              <div class="faq-question">
                <span>{{ faq.question }}</span>
                <i class="fa fa-plus faq-icon"></i>
              </div>
              <div class="faq-answer">
                {% for para in faq.answer %}
                  <p>{{ para }}</p>
                {% endfor %}
              </div>
            </div>
            <!-- end .faq-item -->
          {% endfor %}
        </div>
        <!-- end .faq-container -->
      </div>
      <!-- end .left-col -->

      <div class="right-col"><!-- START .right-col -->

        <!-- Dynamic Coaching Sidebar -->
        {% include coaching-sidebar.html %}
        <!-- end dynamic coaching sidebar -->

        {% for box in page.boxes %}
        <div class="box"><!-- START .box -->
          <h3>{{ box.title }}</h3>
          {% if box.content %}
            {{ box.content | markdownify }}
          {% endif %}
          {% if box.items %}
            <ul>
              {% for item in box.items %}
                <li>{{ item | markdownify | remove: '<p>' | remove: '</p>' }}</li>
              {% endfor %}
            </ul>
          {% endif %}
        </div>
        <!-- end .box -->
        {% endfor %}

        <!-- Testimonial Block -->
        <div class="testimonials-wrapper single-column" id="testimonial-box" data-count="1" data-box-wrap="true">
        </div>
        <!-- end testimonial block -->

      <!-- dynamic sidebar that only appears on mobile -->

      {% include coaching-sidebar.html subnav_class="subnav-mobile" %}

      <!-- end of dynamic sidebar that only appears on mobile -->

      </div>
      <!-- end .right-col -->

    </div>
    <!-- end .two-col-layout -->

  </div>
  <!-- end .inner -->
</section>
<!-- end #one -->

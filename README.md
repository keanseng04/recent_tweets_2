<div class="container">
<div id="challenge" class="row">
<div class="col-sm-8">
<div class="row">
<div class="col-sm-12">
<div class="tab-content">
<div id="body" class="tab-pane fade in active">

We're going to build on <a href="http://learn.codedivision.my/challenges/137">Recent Tweets 1</a> to learn how front-end and back-end can act together to provide a superior user experience.

Right now we have a page which loads the 10 most recent tweets. If our cache is stale the page can take a long time to load. If our cache is fresh it loads almost instantaneously.

There's only so much we can do to improve the raw load time as long as a user request might result in an API call. The 1-2 seconds spent making the API are going to be taken up somewhere, regardless.

What's the real user experience problem with a request that takes a long time? Anxiety and frustration User become anxious and start asking questions like "Is this site working" or "Is my browser broken?" This uncertainty and disequilibrium quickly leads to frustration:"This site is broken!", "This site is wasting my time!", etc.

Let's solve that problem.
<h2>Objectives</h2>
<h3>AJAX For A Better UX</h3>
We're going to create a version such that when a user lands on the "show tweets" page, the page always loads immediately.

If the cache is fresh, just load the page as normal. If the cache is stale, however, load a page which does the following:
<ol>
	<li>Displays a please wait message, maybe using a <a href="http://www.ajaxload.info/">spinner gif</a>.</li>
	<li>Upon loading, fires off an AJAX request which refreshes the cache (this will require a new URL).</li>
	<li>That AJAX call should return HTML which contains the list of tweets to be rendered, after populating the cache. Re-use your <a href="http://www.sinatrarb.com/faq.html#partials">view partials</a>; don't duplicate the HTML in two views.</li>
	<li>Replace the "please wait" message with the list of tweets as it would be displayed were the cache fresh</li>
</ol>
Using JSON in this instance is overkill.
<h3>New Endpoints</h3>
Add new page of your own choosing. It could be something entirely custom that makes multiple API requests or it could be something as simple as displaying a list of followers.

Re-use the caching infrastructure and AJAX technique above to make it quick where possible and graceful where it's not possible to be quick.

</div>
</div>
</div>
</div>
</div>
</div>
</div>
&nbsp;

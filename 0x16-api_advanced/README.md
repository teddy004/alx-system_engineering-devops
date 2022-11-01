# API Advanced

This project contains more tasks for learning how to consume RESTful APIs.

## Tasks To Complete

+ [x] 0. How many subs?<br/>_**[0-subs.py](0-subs.py)**_ contains a Python function queries the [Reddit API](https://www.reddit.com/dev/api) and returns the number of subscribers (not active users, total subscribers) for a given subreddit. If an invalid subreddit is given, the function should return 0.
  + Hint: No authentication is necessary for most features of the Reddit API. If you’re getting errors related to Too Many Requests, ensure you’re setting a custom User-Agent.
  + Requirements:
    + Prototype: `def number_of_subscribers(subreddit)`.
    + If not a valid subreddit, return 0.
    + NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

+ [x] 1. Top Ten<br/>_**[1-top_ten.py](1-top_ten.py)**_ contains a Python function queries the [Reddit API](https://www.reddit.com/dev/api) and prints the titles of the first 10 hot posts listed for a given subreddit.
  + Requirements:
    + Prototype: `def top_ten(subreddit)`.
    + If not a valid subreddit, print None.
    + NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

+ [x] 2. Recurse it!<br/>_**[2-recurse.py](2-recurse.py)**_ contains a *recursive Python function* that queries the [Reddit API](https://www.reddit.com/dev/api) and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None.
  + Hint: The Reddit API uses pagination for separating pages of responses.
  + Requirements:
    + Prototype: `def recurse(subreddit, hot_list=[])`.
    + Note: You may change the prototype, but it must be able to be called with just a subreddit supplied. AKA you can add a counter, but it must work without supplying a starting value in the main.
    + If not a valid subreddit, return None.
    + NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.
  + Your code will NOT pass if you are using a loop and not recursively calling the function! This /can/ be done with a loop but the point is to use a recursive function. :)

+ [x] 3. Count it!<br/>_**[100-count.py](100-count.py)**_ contains a *recursive Python function* that queries the Reddit API, parses the title of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces. `Javascript` should count as `javascript`, but `java` should not).
  + Requirements:
    + Prototype: `def count_words(subreddit, word_list)`.
    + Note: You may change the prototype, but it must be able to be called with just a subreddit supplied and a list of keywords. AKA you can add a counter or anything else, but the function must work without supplying a starting value in the main.
    + If `word_list` contains the same word (case-insensitive), the final count should be the sum of each duplicate (example below with `java`).
    + Results should be printed in descending order, by the count, and if the count is the same for separate keywords, they should then be sorted alphabetically (ascending, from A to Z). Words with no matches should be skipped and not printed. Words must be printed in lowercase.
    + Results are based on the number of times a keyword appears, not titles it appears in. `java java java` counts as 3 separate occurrences of `java`.
    + To make life easier, `java.` or `java!` or `java_` should not count as `java`.
    + If no posts match or the subreddit is invalid, print nothing.
    + NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are NOT following redirects.
    + Your code will NOT pass if you are using a loop and not recursively calling the function! This /can/ be done with a loop but the point is to use a recursive function. :)

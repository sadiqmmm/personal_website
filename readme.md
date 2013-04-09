# Jorge Coca - JSON & XML API Documentation

This documentation explains how to consume web services for the website [www.jorgecoca.com]("http://www.jorgecoca.com")

##### Articles
* [GET articles INDEX]("#articles_index")
* [GET article SHOW]("#")

##### Categories
* [GET categories INDEX]("#")

##### Projects
* [GET projects INDEX]("#")

##### Songs
* [GET songs INDEX]("#")
* [GET song SHOW]("#")

---

## <div id="articles_index">Articles INDEX</div>

To obtain a list with all the articles:

	GET /articles.json

It will return:

	[
		{
			article: {
				title: "one more test",
				summary: "summary test",
				picture: "picture_url",
				visits: 1,
				date: "09 Apr. 2013",
				comments_count: 0
			}
		},
		{
			article: {
				title: "test json",
				summary: "json test api",
				picture: "picture url",
				visits: 12,
				date: "09 Apr. 2013",
				comments_count: 3
			}
		}
	]
	
## <div id="article_show">Article SHOW</div>

To obtaine a singe record:

	GET /articles/title-of-the-article.json
	
It will return:
	
	{
		article: {
			title: "test json",
			summary: "json test api",
			content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit....",
			picture: "picture_url",
			date: "09 Apr. 2013",
			category: "Music",
			comments: [
				{
				comment: {
					content: "uno ",
					user: "jcocaramos"
				}
				},
				{
				comment: {
					content: "dos",
					user: "jcocaramos"
				}
				},
				{
				comment: {
					content: "tres",
					user: "jcocaramos"
				}
				}
			]
		}
	}
	
	





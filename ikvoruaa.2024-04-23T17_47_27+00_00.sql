--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18 (Ubuntu 11.18-1.pgdg20.04+1)
-- Dumped by pg_dump version 11.18 (Ubuntu 11.18-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: ikvoruaa
--

CREATE TABLE public.articles (
    article_id integer NOT NULL,
    title character varying NOT NULL,
    topic character varying NOT NULL,
    author character varying NOT NULL,
    body character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    votes integer DEFAULT 0 NOT NULL,
    article_img_url character varying DEFAULT 'https://images.pexels.com/photos/97050/pexels-photo-97050.jpeg?w=700&h=700'::character varying
);


ALTER TABLE public.articles OWNER TO ikvoruaa;

--
-- Name: articles_article_id_seq; Type: SEQUENCE; Schema: public; Owner: ikvoruaa
--

CREATE SEQUENCE public.articles_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_article_id_seq OWNER TO ikvoruaa;

--
-- Name: articles_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ikvoruaa
--

ALTER SEQUENCE public.articles_article_id_seq OWNED BY public.articles.article_id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: ikvoruaa
--

CREATE TABLE public.comments (
    comment_id integer NOT NULL,
    body character varying NOT NULL,
    article_id integer NOT NULL,
    author character varying NOT NULL,
    votes integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.comments OWNER TO ikvoruaa;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: ikvoruaa
--

CREATE SEQUENCE public.comments_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_comment_id_seq OWNER TO ikvoruaa;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ikvoruaa
--

ALTER SEQUENCE public.comments_comment_id_seq OWNED BY public.comments.comment_id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: ikvoruaa
--

CREATE TABLE public.topics (
    slug character varying NOT NULL,
    description character varying
);


ALTER TABLE public.topics OWNER TO ikvoruaa;

--
-- Name: users; Type: TABLE; Schema: public; Owner: ikvoruaa
--

CREATE TABLE public.users (
    username character varying NOT NULL,
    name character varying NOT NULL,
    avatar_url character varying
);


ALTER TABLE public.users OWNER TO ikvoruaa;

--
-- Name: articles article_id; Type: DEFAULT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.articles ALTER COLUMN article_id SET DEFAULT nextval('public.articles_article_id_seq'::regclass);


--
-- Name: comments comment_id; Type: DEFAULT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.comments ALTER COLUMN comment_id SET DEFAULT nextval('public.comments_comment_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: ikvoruaa
--

COPY public.articles (article_id, title, topic, author, body, created_at, votes, article_img_url) FROM stdin;
2	The Rise Of Thinking Machines: How IBM's Watson Takes On The World	coding	jessjelly	Many people know Watson as the IBM-developed cognitive super computer that won the Jeopardy! gameshow in 2011. In truth, Watson is not actually a computer but a set of algorithms and APIs, and since winning TV fame (and a $1 million prize) IBM has put it to use tackling tough problems in every industry from healthcare to finance. Most recently, IBM has announced several new partnerships which aim to take things even further, and put its cognitive capabilities to use solving a whole new range of problems around the world.	2020-05-14 01:02:00	0	https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?w=700&h=700
4	Making sense of Redux	coding	jessjelly	When I first started learning React, I remember reading lots of articles about the different technologies associated with it. In particular, this one article stood out. It mentions how confusing the ecosystem is, and how developers often feel they have to know ALL of the ecosystem before using React. And as someone who’s used React daily for the past 8 months or so, I can definitely say that I’m still barely scratching the surface in terms of understanding how the entire ecosystem works! But my time spent using React has given me some insight into when and why it might be appropriate to use another technology — Redux (a variant of the Flux architecture).	2020-09-11 21:12:00	0	https://images.pexels.com/photos/4974912/pexels-photo-4974912.jpeg?w=700&h=700
5	Please stop worrying about Angular 3	coding	jessjelly	Another Angular version planned already? Whaaaat? Didn’t Angular 2 just ship? Why Angular 3? What? Why? First off, there is no massive rewrite, and won’t be for Angular 3. Secondly, let me explain the future of Angular 2 and what Angular 3, Angular 4 will mean for you.	2020-04-21 17:06:00	0	https://images.pexels.com/photos/14011035/pexels-photo-14011035.jpeg?w=700&h=700
7	Using React Native: One Year Later	coding	tickle122	When I interviewed for the iOS developer opening at Discord last spring, the tech lead Stanislav told me: React Native is the future. We will use it to build our iOS app from scratch as soon as it becomes public. As a native iOS developer, I strongly doubted using web technologies to build mobile apps because of my previous experiences with tools like PhoneGap. But after learning and using React Native for a while, I am glad we made that decision.	2020-10-18 01:26:00	0	https://images.pexels.com/photos/6424586/pexels-photo-6424586.jpeg?w=700&h=700
8	Express.js: A Server-Side JavaScript Framework	coding	cooljmessy	You’re probably aware that JavaScript is the programming language most often used to add interactivity to the front end of a website, but its capabilities go far beyond that—entire sites can be built on JavaScript, extending it from the front to the back end, seamlessly. Express.js and Node.js gave JavaScript newfound back-end functionality—allowing developers to build software with JavaScript on the server side for the first time. Together, they make it possible to build an entire site with JavaScript: You can develop server-side applications with Node.js and then publish those Node.js apps as websites with Express. Because Node.js itself wasn’t intended to build websites, the Express framework is able to layer in built-in structure and functions needed to actually build a site. It’s a pretty lightweight framework that’s great for giving developers extra, built-in web application features and the Express API without overriding the already robust, feature-packed Node.js platform. In short, Express and Node are changing the way developers build websites.	2020-10-05 23:23:00	0	https://images.pexels.com/photos/11035482/pexels-photo-11035482.jpeg?w=700&h=700
9	Learn HTML5, CSS3, and Responsive WebSite Design in One Go	coding	grumpy19	Both CSS3 and HTML5 are just about fully supported in all modern browsers, and we there are techniques in place to patch old browsers that lack support. So there is no disadvantage to using CSS3 and HTML5 today. The opposite is true, however: there are many painful, frustrating disadvantages with forgoing HTML5 and CSS3. You may already “know” a bit of HTML5 and a touch of CSS3 (or perhaps you probably know enough old-school HTML and CSS, and with this knowledge, you might have thought you needn’t learn HTML5 and CSS3 fully.	2020-05-26 15:06:00	0	https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg?w=700&h=700
6	JavaScript’s Apply, Call, and Bind Methods are Essential for JavaScript Professionals	coding	grumpy19	Functions are objects in JavaScript, as you should know by now, if you have read any of the prerequisite articles. And as objects, functions have methods, including the powerful Apply, Call, and Bind methods. On the one hand, Apply and Call are nearly identical and are frequently used in JavaScript for borrowing methods and for setting the this value explicitly. We also use Apply for variable-arity functions; you will learn more about this in a bit.	2020-11-11 15:09:00	1	https://images.pexels.com/photos/4383298/pexels-photo-4383298.jpeg?w=700&h=700
1	Running a Node App	coding	jessjelly	This is part two of a series on how to get up and running with Systemd and Node.js. This part dives deeper into how to successfully run your app with systemd long-term, and how to set it up in a production environment.	2020-11-07 06:03:00	3	https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?w=700&h=700
11	Designing Better JavaScript APIs	coding	tickle122	At some point or another, you will find yourself writing JavaScript code that exceeds the couple of lines from a jQuery plugin. Your code will do a whole lot of things; it will (ideally) be used by many people who will approach your code differently. They have different needs, knowledge and expectations.	2020-07-07 00:13:00	0	https://images.pexels.com/photos/5483071/pexels-photo-5483071.jpeg?w=700&h=700
13	What does Jose Mourinho's handwriting say about his personality?	football	weegembump	Jose Mourinho was at The O2 on Sunday night to watch Dominic Thiem in action against Novak Djokovic. Thiem took the first set before Djokovic fought back to claim the victory, but Manchester United's manager was clearly impressed with the Austrian's performance.	2020-07-08 20:25:00	0	https://images.pexels.com/photos/114296/pexels-photo-114296.jpeg?w=700&h=700
14	Who Will Manage Your Club in 2021?	football	happyamy2016	Managerial changes are too common in the modern day game. Already in the 16/17 season, we have seen 14 managers lose their job from the Premier League to League Two. Swansea’s Francesco Guidolin became the first top division manager to lose his job but already question marks are raised regarding the future of the likes of David Moyes and Mike Phelan.	2020-06-24 15:14:00	0	https://images.pexels.com/photos/209841/pexels-photo-209841.jpeg?w=700&h=700
15	Why do England managers keep making the same mistakes?	football	tickle122	When Roy Hodgson resigned after this summer’s debacle, the England managerial merry go-round set into motion raising hopes that change would improve the nations fortunes.  In came Sam Allardyce but the same old squad was announced – apart from Michail Antonio – resulting in a similar type performance that was customary this summer. I was an advocate of Big Sam’s appointment because of the fact he managed down the league and could see that talent lay beyond just the big clubs in the country. Roy had many faults but the biggest frustration for me was he failed to utilise an already diminished pool of English players by continuing to pick the so called elite players – who are all tainted with failure. To be fair to Allardyce his first England game came so early in the season that it made making whole sale changes difficult. We shall never know if he would have picked different players. Since he left the job it was up to Gareth Southgate to take on the mantle and again hope arose that he may start to pick some of the talented under 21s that he has worked with over the last five years.	2020-03-19 00:14:00	0	https://images.pexels.com/photos/262524/pexels-photo-262524.jpeg?w=700&h=700
16	History of FC Barcelona	football	weegembump	The history of Futbol Club Barcelona goes from the football club's founding in 1899 and up to current time. FC Barcelona, also known simply as Barcelona and familiarly as Barça, is based in Barcelona, Catalonia, Spain. The team was founded in 1899 by a group of Swiss, English and Spanish footballers led by Joan Gamper. The club played amateur football until 1910 in various regional competitions. In 1910, the club participated in their first of many European competitions, and has since amassed ten UEFA trophies and a sextuple. In 1928, Barcelona co-founded La Liga, the top-tier in Spanish football, along with a string of other clubs. As of 2016, Barcelona has never been relegated from La Liga, a record they share with Athletic Bilbao and arch-rival Real Madrid. The history of Barcelona has often been politically. Though it is a club created and run by foreigners, Barcelona gradually became a club associated with Catalan values. In Spain's transition to autocracy in 1925, Catalonia became increasingly hostile towards the central government in Madrid. The hostility enhanced Barcelona's image as a focal point for Catalonism, and when Francisco Franco banned the use of the Catalan language, the stadium of Barcelona became one of the few places the people could express their dissatisfaction. The Spanish transition to democracy in 1978 has not dampened the club's image of Catalan pride. In the 2000s – a period of sporting success in the club and an increased focus on Catalan players – club officials have openly called for Catalonia to become an independent state.	2020-08-03 00:14:00	0	https://images.pexels.com/photos/102448/pexels-photo-102448.jpeg?w=700&h=700
17	Which current Premier League manager was the best player?	football	cooljmessy	Premier League managers work with some of the top players in world football - but were they any good in their day? From European Cup and league title winners to one manager who only played at university, there's a diverse range of experience among the top-flight bosses. We've taken a look at the playing achievements and ability of the current Premier League managers and ranked them. Read on to see who ranks where...	2020-03-19 11:15:00	0	https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?w=700&h=700
18	The People Tracking Every Touch, Pass And Tackle in the World Cup	football	grumpy19	With each click and drag of a mouse, young soccer fanatics are creating the building blocks of the advanced stats that are changing how the sport is played, watched and analyzed. Opta and Prozone are among the companies that have taken soccer stats far beyond goals and saves, into the realm of pass completion percentage, defensive touches, percentage of aerial balls won, tackle percentage and goals scored above expectation. Cameras alone can’t process all these stats. So companies employ people — mostly young, mostly male, most logging matches in their spare time as a second job — to watch matches and document every event. Their work has helped develop stats that capture the value of players who don’t score many goals, but who set them up with pinpoint passing and hustle. Teams use advanced stats to decide which players to buy and put on the pitch. And fans, whether they like it or not, read and hear more numbers than ever before about this sport that for so long bucked the sports-analytics trend.	2020-08-17 15:03:00	0	https://images.pexels.com/photos/1884576/pexels-photo-1884576.jpeg?w=700&h=700
19	Who are the most followed clubs and players on Instagram?	football	jessjelly	Manchester United are the UK's most popular club on Instagram, with over 14m people following their account for their latest photos and videos. United's total number of followers is over six million more than second-placed Arsenal (8.1m, while Chelsea are third on the list with 7.7m followers, according to data exclusively compiled for Sky Sports. Instagram has a 500m-strong community, with one in three people on the social media site (around 165m) following a sports account.	2020-09-13 13:02:00	0	https://images.pexels.com/photos/685382/pexels-photo-685382.jpeg?w=700&h=700
20	History of Football	football	tickle122	It may come as a surprise to many, but football has a long and interesting history; sources suggest that the sport was first introduced in England as early as 1170 when an account describes youths going to the fields for a ‘game of ball’. Aspects of the game can even be traced back to as early as the second and third century BC in China. Sources taken from military manuals at the time describe an exercise called Tsu’ Chu, in which opponents used a leather ball filled with feathers and hair. The aim was to get the ball into a small net fixed on to bamboo canes while also defending themselves from attacks. Variations of the game are also documented in Egyptian and Greek society, proving that the sport has a long tradition throughout history.	2020-03-10 21:05:00	0	https://images.pexels.com/photos/3621104/pexels-photo-3621104.jpeg?w=700&h=700
22	Defensive Metrics: Measuring the Intensity of a High Press	football	tickle122	In this article, with the use of detailed Opta data, I am going to create a metric that I believe can quantify the extent and aggression of high presses employed by teams, both over a season and in any specific match. I’m going to see if it is possible define the intensity of a press with the use of numbers, more specifically by using some of the events that Opta record. Why would anyone want to do this? Well, for pretty much the same reason that we undertake any analytics study. If we can develop an objective scale which measures the intensity of a press then coaches can quickly see at a glance the strength, or otherwise, of the high pressing that their opposition has utilised in recent games. Teams or fans can also assess how much pressure their team exerted on the opposition in deep positions, and who knows, perhaps in time we will be able to assess the effectiveness that individual players have on the ability of their team to press. In essence we can take what is otherwise a subjective description and reduce it to one number so that it allows for comparison, analysis and ranking, if so desired.	2020-04-17 13:10:00	0	https://images.pexels.com/photos/906073/pexels-photo-906073.jpeg?w=700&h=700
23	Sunday league football	football	weegembump	Sunday league football is a term used in the United Kingdom to describe those association football leagues which play on Sunday, as opposed to the more usual Saturday. These leagues tend to be lower standard amateur competitions, whose players may have less ability or less time to devote to football. The term pub league can also be used, due to the number of public houses that enter teams. Sunday leagues are sanctioned by the local County Football Association. There is no organised promotion or relegation between leagues, unlike in the National League System, which covers the top few levels of amateur football, although many leagues operate several divisions with promotion and relegation between them. However, ambitious Sunday teams may apply to join a Saturday league for a higher standard of football, and from there graduate to the FA-sanctioned leagues.	2020-03-22 14:25:00	0	https://images.pexels.com/photos/774321/pexels-photo-774321.jpeg?w=700&h=700
24	Game of talents: management lessons from top football coaches	football	jessjelly	At lunchtime on the day of the Champions League final in 2012, Chelsea’s manager Roberto Di Matteo had selected 10 of his 11 players. He just didn’t know who to play in left midfield. The player would have to combat Bayern Munich’s brilliant Arjen Robben and Philipp Lahm. Going into the last team meeting, Di Matteo had a private chat with his left-back, Ashley Cole. He outlined the situation, then asked Cole who he would play at left-midfield. Instead of naming a seasoned star, Cole said: “Ryan Bertrand.” The 22-year-old reserve Bertrand had never played in the Champions League, let alone in club football’s biggest game. “Why?” asked Di Matteo, surprised. “I trust him,” replied Cole. Bertrand played well, and Chelsea beat Bayern on penalties. In part, this was a victory for talent management. Di Matteo had put aside his ego, and let trust between two players drive the decision. Talent management has been a business obsession at least since 1997, when the consultancy McKinsey identified a “war for talent”. The most visible battleground of this “war” is team sport. Football, in particular, is “the quintessential model for modern-day talent-dependent business”, writes Chris Brady, professor at Salford Business School. Big football clubs pay more than half their revenues to between 3 and 7 per cent of their workforce: the players. These young men are rich, multinational, mobile, often equipped with large egos and therefore hard to manage. Football managers are, above all, talent managers.	2020-07-09 23:14:00	0	https://images.pexels.com/photos/168872/pexels-photo-168872.jpeg?w=700&h=700
25	Sweet potato & butternut squash soup with lemon & garlic toast	cooking	weegembump	Roast your vegetables in honey before blitzing into this velvety smooth, spiced soup - served with garlicky, zesty ciabatta slices for dipping	2020-03-11 21:16:00	0	https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?w=700&h=700
26	HOW COOKING HAS CHANGED US	cooking	weegembump	In a cave in South Africa, archaeologists have unearthed the remains of a million-year-old campfire, and discovered tiny bits of animal bones and ash from plants. It’s the oldest evidence of our ancient human ancestors—probably Homo erectus, a species that preceded ours—cooking a meal.	2020-04-06 01:00:00	0	https://images.pexels.com/photos/2284166/pexels-photo-2284166.jpeg?w=700&h=700
27	Thanksgiving Drinks for Everyone	cooking	grumpy19	Thanksgiving is a foodie’s favorite holiday. Mashed potatoes, cranberry sauce, stuffing, and last but not least, a juicy turkey. Don’t let your meticulous menu fall short of perfection; flavorful cocktails are just as important as the meal. Here are a few ideas that will fit right into your festivities.	2020-01-24 23:22:00	0	https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?w=700&h=700
28	High Altitude Cooking	cooking	happyamy2016	Most backpacking trails vary only a few thousand feet elevation. However, many trails can be found above 10,000 feet. But what many people don’t take into consideration at these high altitudes is how these elevations affect their cooking.	2020-01-04 00:24:00	0	https://images.pexels.com/photos/691114/pexels-photo-691114.jpeg?w=700&h=700
29	A BRIEF HISTORY OF FOOD—NO BIG DEAL	cooking	tickle122	n 1686, the croissant was invented in Austria. That's a fun fact I'd probably never had known or maybe don't even really need to know, but now I do, thanks to Julia Rothman's Food Anatomy: The Curious Parts & Pieces of Our Edible World. Rothman has an entire series of illustrated Anatomy books, including Nature and Farm, packed with infographics, quirky facts, and maps that you can get lost in for hours—in a fun way, not in a boring textbook way. It makes you wonder why textbooks aren't this fun to read. Can someone look into this? Thanks.	2020-01-06 20:12:00	0	https://images.pexels.com/photos/357743/pexels-photo-357743.jpeg?w=700&h=700
30	Twice-Baked Butternut Squash Is the Thanksgiving Side Dish of Your Dreams	cooking	jessjelly	What if, for once, your Thanksgiving sides were just as dazzling as the centerpiece turkey? Imagine a world where presenting a platter of seasonal vegetables inspires the same amount of cooing that the turkey does. Welcome to the world of twice-baked butternut squash. Sure, you could just roast some squash wedges and call it a day. But where's the fun in that? To make this year's most impressive vegetable side, Epi's food director Rhoda Boone gave super-seasonal butternut squash the twice-baked potatoes treatment: Mash the inside of the vegetable with butter, cream, and anything else that might make it more delicious, then pile it back into the vegetable, bake it until golden and velvety. The result is a jaw-dropping, brightly colored sweet-meet-savory butternut squash side dish. Here are just a few more reasons this creation belongs on this year's Thanksgiving table:	2020-01-11 20:20:00	0	https://images.pexels.com/photos/175753/pexels-photo-175753.jpeg?w=700&h=700
31	What to Cook This Week	cooking	tickle122	Good morning. Here’s the plan for the week, not including breakfast because I’m on a farina kick and that’s not to everyone’s taste, and not including lunch because really when it comes to the midday hours you should get out of the office or the house and walk around. If you get something to eat, great, but the most important thing is to be outside where the stories are. There’s nothing happening at your desk but a screen. Anyway! I’m thinking chicken paprikash for dinner tonight, a nod toward the coming fall, served over buttery egg noodles, with green beans on the side. If you have the time, make an apple cake for dessert.	2020-06-09 03:19:00	0	https://images.pexels.com/photos/349609/pexels-photo-349609.jpeg?w=700&h=700
32	Halal food: Keeping pure and true	cooking	grumpy19	CHINA’S cities abound with restaurants and food stalls catering to Muslims as well as to the many other Chinese who relish the distinctive cuisines for which the country’s Muslims are renowned. So popular are kebabs cooked by Muslim Uighurs on the streets of Beijing that the city banned outdoor grills in 2014 in order to reduce smoke, which officials said was exacerbating the capital’s notorious smog (the air today is hardly less noxious). Often such food is claimed to be qing zhen, meaning 'pure and true', or halal, prepared according to traditional Islamic regulations. But who can tell? Last year angry Muslims besieged a halal bakery in Xining, the capital of Qinghai province, after pork sausages were found in the shop’s delivery van. There have been several scandals in recent years involving rat meat or pork being sold as lamb. These have spread Muslim mistrust of domestically produced halal products.	2020-06-18 21:08:00	0	https://images.pexels.com/photos/954677/pexels-photo-954677.jpeg?w=700&h=700
35	Stone Soup	cooking	cooljmessy	The first day I put my family on a Paleolithic diet, I made my kids fried eggs and sausage for breakfast. If they were still hungry, I told them, they could help themselves to more sausage, but they were not allowed to grab a slice of bread, or toast an English muffin, or pour themselves a bowl of cereal. This represented a reversal of the usual strictures, and they were happy to oblige. It was like some weird, unexpected holiday—Passover in July.	2020-05-26 07:25:00	0	https://images.pexels.com/photos/33242/cooking-ingredient-cuisine-kitchen.jpg?w=700&h=700
36	The vegan carnivore?	cooking	tickle122	The chef Richard McGeown has faced bigger culinary challenges in his distinguished career than frying a meat patty in a little sunflower oil and butter. But this time the eyes and cameras of hundreds of journalists in the room were fixed on the 5oz (140g) pink disc sizzling in his pan, one that had been five years and €250,000 in the making. This was the world’s first proper portion of cultured meat, a beef burger created by Mark Post, professor of physiology, and his team at Maastricht University in the Netherlands. Post (which rhymes with ‘lost’, not ‘ghost’) has been working on in vitro meat (IVM) since 2009. On 5 August this year he presented his cultured beef burger to the world as a ‘proof of concept’. Having shown that the technology works, Post believes that in a decade or so we could see commercial production of meat that has been grown in a lab rather than reared and slaughtered. The comforting illusion that supermarket trays of plastic-wrapped steaks are not pieces of dead animal might become a discomforting reality.	2020-03-09 21:21:00	0	https://images.pexels.com/photos/1414651/pexels-photo-1414651.jpeg?w=700&h=700
33	Seafood substitutions are increasing	cooking	weegembump	'SEAFOOD fraud is a serious global problem', begins a recent report from Oceana, an NGO. Reviewing over 200 studies in 55 countries, the report finds that one in five fish sold has been mislabelled. Although fish fraud is common early in the supply chain, most of it comes at the retail level. In 65% of cases, the motivation is economic—slippery restaurateurs frequently serve up cheaper fish than they advertise to cut costs. In America, Oceana has reported instances of tilapia being sold as the more expensive red snapper. Especially brazen fish criminals have invented new types of fish entirely. In Brazil, researchers were puzzled to find markets selling 'douradinha', ' non-existent species. Close inspection found that 60% of such fish were actually 'vulture' catfish, a relatively undesirable dish. Reports in America of catfish being substituted for more expensive fish date back to at least 2002; Oceana’s study suggests that the phenomenon is spreading.	2020-09-16 17:26:00	1	https://images.pexels.com/photos/1267320/pexels-photo-1267320.jpeg?w=700&h=700
37	TenHag the man!	football	weegembump	In the realm of football's grand design,\n    There stands a man both wise and kind,\n    With vision bold and strategies bright,\n    Eric ten Hag, a beacon of light.\n    \n    From Haaksbergen he did arise,\n    A coach with fire in his eyes,\n    His playing days were but a prelude,\n    To a managerial path pursued.\n    \n    With Twente's youth, he honed his craft,\n    Unveiling talents, making them laugh,\n    He saw the spark in every soul,\n    And nurtured them to reach their goal.\n    \n    Then came the call from Ajax's door,\n    A chance to reshape and to restore,\n    A sleeping giant poised to rise,\n    Under ten Hag's enlightened guise.\n    \n    His philosophy, a work of art,\n    Possession, movement, playing smart,\n    A symphony of passes danced,\n    As Ajax's prowess was enhanced.\n    \n    The pitch became his chessboard vast,\n    Each player moving, shadows cast,\n    With precision and calculated might,\n    Ten Hag orchestrated their footballing flight.\n    \n    From the back they built their dream,\n    With pressing high, they'd make teams scream,\n    Fluid movement, a joyful ballet,\n    As Ajax's brilliance came to play.\n    \n    Champions they rose in Dutch terrain,\n    Their dominance, a joyous reign,\n    The Eredivisie their rightful throne,\n    Eric ten Hag, a leader known.\n    \n    But it was Europe where he'd truly shine,\n    Challenging giants, weaving a line,\n    With courage and belief, they'd soar,\n    In the Champions League, they'd explore.\n    \n    A fearless march against the odds,\n    The footballing world in awe applauds,\n    With ten Hag's guidance, they'd dare to roam,\n    The young and talented, finding home.\n    \n    In battles fierce, they etched their name,\n    Defying history, fortune's game,\n    A testament to ten Hag's command,\n    That Ajax's spirit forever will stand.\n    \n    So let us sing a song of praise,\n    For Eric ten Hag's guiding ways,\n    A mastermind, a football sage,\n    Whose brilliance sets the pitch ablaze.	2020-03-22 14:25:00	0	https://images.pexels.com/photos/774321/pexels-photo-774321.jpeg?w=700&h=700
12	The battle for Node.js security has only begun	coding	tickle122	The founder of the Node Security Project says Node.js still has common vulnerabilities, but progress has been made to make it more secure. Appearing at the recent Node Community Convention in San Francisco, project founder Adam Baldwin, chief security officer at Web consulting company &yet, emphasized risks, protections, and progress. Baldwin sees four risks within the Node ecosystem pertinent to the enterprise: the code dependency tree, bugs, malicious actors, and people. I think of [the dependency tree] more as the dependency iceberg, to be honest, Baldwin said, where your code is the ship and your dependencies that you have with your packaged JSON is that little tiny iceberg at the top. But developers need to be aware of the massive iceberg underneath, he stressed.	2020-11-15 13:25:00	2	https://images.pexels.com/photos/10845119/pexels-photo-10845119.jpeg?w=700&h=700
34	The Notorious MSG’s Unlikely Formula For Success	cooking	grumpy19	The 'umami' craze has turned a much-maligned and misunderstood food additive into an object of obsession for the world’s most innovative chefs. But secret ingredient monosodium glutamate’s biggest secret may be that there was never anything wrong with it at all.	2020-11-22 11:13:00	43	https://images.pexels.com/photos/2403392/pexels-photo-2403392.jpeg?w=700&h=700
21	Agility Training Drills For Football Players	football	tickle122	There are so many areas of focus when it comes to football training, from strength training to ensure you can muscle past the opposition to endurance training to help you perform at your best for the 90 minutes of play. However, agility training should never be lost in the mix when planning sessions, as these drills will help you to change direction without losing balance, speed or strength. As a result, your body’s alignment will improve, your reaction speeds lowered and the chance of injury on the pitch reduced. When planning agility training drills for football players, MaxiNutrition believes coaches should look towards cones and ladders. The following guide explains how to use both pieces of equipment effectively:	2020-10-26 10:05:00	6	https://images.pexels.com/photos/3448250/pexels-photo-3448250.jpeg?w=700&h=700
10	An Introduction to JavaScript Object Notation (JSON) in JavaScript and .NET	coding	cooljmessy	When designing an application that will communicate with a remote computer, a data format and exchange protocol must be selected. There are a variety of open, standardized options, and the ideal choice depends on the applications requirements and pre-existing functionality. For example, SOAP-based web services format the data in an XML payload wrapped within a SOAP envelope. While XML works well for many application scenarios, it has some drawbacks that make it less than ideal for others. One such space where XML is often less than ideal is with Ajax-style web applications. Ajax is a technique used for building interactive web applications that provide a snappier user experience through the use of out-of-band, lightweight calls to the web server in lieu of full-page postbacks. These asynchronous calls are initiated on the client using JavaScript and involve formatting data, sending it to a web server, and parsing and working with the returned data. While most browsers can construct, send, and parse XML, JavaScript Object Notation (or JSON) provides a standardized data exchange format that is better-suited for Ajax-style web applications. JSON is an open, text-based data exchange format (see RFC 4627). Like XML, it is human-readable, platform independent, and enjoys a wide availability of implementations. Data formatted according to the JSON standard is lightweight and can be parsed by JavaScript implementations with incredible ease, making it an ideal data exchange format for Ajax web applications. Since it is primarily a data format, JSON is not limited to just Ajax web applications, and can be used in virtually any scenario where applications need to exchange or store structured information as text. This article examines the JSON standard, its relationship to JavaScript, and how it compares to XML. Jayrock, an open-source JSON implementation for .NET, is discussed and examples of creating and parsing JSON messages are provided in JavaScript and C#.	2020-07-02 12:23:00	1	https://images.pexels.com/photos/11035481/pexels-photo-11035481.jpeg?w=700&h=700
3	22 Amazing open source React projects	coding	happyamy2016	This is a collection of open source apps built with React.JS library. In this observation, we compared nearly 800 projects to pick the top 22. (React Native: 11, React: 11). To evaluate the quality, Mybridge AI considered a variety of factors to determine how useful the projects are for programmers. To give you an idea on the quality, the average number of Github stars from the 22 projects was 1,681.	2020-02-29 11:12:00	0	https://images.pexels.com/photos/11035471/pexels-photo-11035471.jpeg?w=700&h=700
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: ikvoruaa
--

COPY public.comments (comment_id, body, article_id, author, votes, created_at) FROM stdin;
1	Itaque quisquam est similique et est perspiciatis reprehenderit voluptatem autem. Voluptatem accusantium eius error adipisci quibusdam doloribus.	18	tickle122	-1	2020-05-21 23:19:00
2	Nobis consequatur animi. Ullam nobis quaerat voluptates veniam.	4	grumpy19	7	2020-01-01 15:02:00
3	Qui sunt sit voluptas repellendus sed. Voluptatem et repellat fugiat. Rerum doloribus eveniet quidem vero aut sint officiis. Dolor facere et et architecto vero qui et perferendis dolorem. Magni quis ratione adipisci error assumenda ut. Id rerum eos facere sit nihil ipsam officia aspernatur odio.	3	grumpy19	3	2020-09-23 00:18:00
4	Rerum voluptatem quam odio facilis quis illo unde. Ex blanditiis optio tenetur sunt. Cumque dolor ducimus et qui officia quasi non illum reiciendis.	18	happyamy2016	4	2020-10-10 23:03:00
5	Quod qui quia dignissimos sit tempore vel reprehenderit. Ipsa ipsa veritatis architecto corporis et et non. Sed alias occaecati eum dignissimos sint eius. Ad ea iste quas quia velit libero voluptatem voluptatem. Animi illo nisi nulla quia sapiente omnis dolorem nulla. Sunt dolor similique.	17	weegembump	-5	2020-04-03 21:17:00
6	Veritatis animi et voluptates nesciunt officia facere eaque. Eligendi earum explicabo necessitatibus aut dolorem nisi esse nesciunt. Non iusto rem ut consequuntur quam ut rem sed. Velit laboriosam consectetur enim delectus eos sit veritatis eveniet perspiciatis.	35	grumpy19	-5	2020-07-16 09:16:00
7	Facilis corporis animi et non non minus nisi. Magnam et sequi dolorum fugiat ab assumenda.	17	tickle122	12	2020-04-08 23:10:00
8	Est debitis iusto sed consectetur. Eum eum rerum qui est nihil maxime quae. Ut autem velit sint iste consequatur culpa voluptatibus. Quo qui nobis cupiditate adipisci nostrum et. Est et qui at sit atque et fuga voluptatibus impedit.	26	tickle122	6	2020-11-21 19:16:00
9	Ea iure voluptas. Esse vero et dignissimos blanditiis commodi rerum dicta omnis modi.	19	cooljmessy	-1	2020-01-04 05:14:00
10	Incidunt quidem ut. Voluptatem blanditiis ipsa commodi suscipit quae et. Magni assumenda veritatis voluptatem dolor qui.	27	weegembump	7	2020-11-24 08:26:00
11	Iure cum non veritatis dolore corrupti deserunt perferendis molestiae. Voluptatem ullam qui aut voluptatem. Magnam quo ut rem nobis quibusdam. Assumenda ex laboriosam ut ea explicabo.	23	happyamy2016	2	2020-11-11 18:16:00
12	Maiores sed dolor. Consequatur quasi itaque culpa. Tempora ut autem est ad est voluptatem officiis. Ut sequi quaerat qui nam sunt.	11	happyamy2016	15	2020-06-19 06:00:00
13	Dolorem ex dolorem blanditiis id. Error dolorem aut est. Facere nostrum et dolor repellendus neque amet deleniti. Aut debitis ut nam dolores.	16	happyamy2016	4	2020-09-10 02:18:00
14	Iure quas est omnis porro. Est in est distinctio sequi consectetur rerum deserunt. Et et reiciendis. Consequatur distinctio sint porro neque molestiae.	4	weegembump	-4	2020-08-14 14:09:00
15	Voluptas enim dolores minima repellendus corporis mollitia omnis. Consectetur vitae quaerat possimus repellendus. Cumque maxime nisi itaque aliquid vel non non.	13	jessjelly	12	2020-01-03 13:22:00
16	Saepe iure voluptas aut cum occaecati illo. Unde neque et qui facilis cupiditate animi distinctio.	30	happyamy2016	1	2020-04-03 23:01:00
17	Aut rerum culpa consequuntur quos ut pariatur beatae et. Est reprehenderit commodi quia molestiae laboriosam tenetur maxime voluptate et. Sapiente alias illum eaque libero.	17	weegembump	2	2020-07-10 09:00:00
18	Dicta aut quo unde cupiditate dolorum. Voluptas mollitia exercitationem vel porro dolor. Ea autem est pariatur.	5	jessjelly	6	2020-08-15 18:11:00
19	Id adipisci saepe dolorum et veritatis qui et voluptatibus. Error consequuntur architecto consequatur assumenda rerum similique quo. Quas omnis quam labore exercitationem pariatur veniam assumenda. Tempore maiores rerum. Eum voluptates non repudiandae magnam illo voluptatum. Qui praesentium asperiores rerum vel.	28	tickle122	-3	2020-06-19 16:03:00
20	Libero explicabo aperiam esse quae. Dolores in ipsum vitae incidunt. Magnam ullam nihil voluptas enim veritatis et nobis architecto.	13	happyamy2016	0	2020-04-07 05:19:00
21	Exercitationem voluptas inventore corrupti in tenetur cumque. Ut officiis aliquam et quis. Ipsum nostrum sequi voluptatem ex.	6	tickle122	3	2020-02-05 12:15:00
22	Voluptatibus tempora ab quam pariatur placeat ullam voluptatem aut. Sequi voluptatem vitae quibusdam et qui est quia. Explicabo delectus ullam quis. Officiis eum ipsam non voluptate quam dolores consequatur. Odio aliquam ut eum tempore enim nesciunt.	27	cooljmessy	2	2020-06-09 19:02:00
23	Necessitatibus ea eum error ratione sint cumque occaecati non. Dolor rem accusantium sed debitis. Dolor tempora molestias cupiditate veritatis sit sit ipsam. Aut neque et dolore laboriosam.	10	cooljmessy	2	2020-02-08 05:12:00
24	Quisquam perferendis est doloribus quidem a a. Quam quia ratione rerum facilis rerum est quo aut. Doloribus odio non aut tenetur et qui. Maiores vitae qui illo nisi illum. Accusamus consequatur ducimus vero non nobis alias ratione et aut.	31	weegembump	16	2020-01-08 11:14:00
25	Ea et molestiae error. Esse harum facilis vitae numquam. Minus id eaque. Dolores nulla ipsam animi sapiente perspiciatis qui possimus.	20	grumpy19	20	2020-08-20 07:19:00
26	Aut iste eum et modi unde. Sunt et adipisci et ut dolorem facilis voluptas. Deleniti sed nemo facilis. Ex ut et. Et pariatur sed necessitatibus et. Accusamus accusantium ipsam ea sunt facilis et.	16	grumpy19	3	2020-08-14 02:21:00
27	Dolorem aspernatur labore reiciendis. Similique consequuntur voluptatem illum voluptate illo voluptas et nihil rem. Deserunt et totam tenetur quod. Maxime atque dolorem velit ut sit assumenda. Suscipit tenetur nemo ut ea eos et molestiae quisquam. Architecto asperiores esse.	31	happyamy2016	12	2020-05-19 01:14:00
28	Dolorem excepturi quaerat. Earum dolor sapiente aut.	3	grumpy19	2	2020-03-04 13:05:00
29	Perferendis quia et nihil. Quasi ut voluptates sapiente et accusantium vel qui reprehenderit ratione. Autem alias voluptatem accusamus nesciunt beatae vero. Itaque repellat omnis et velit cum corporis aut id voluptas. Nostrum unde fuga ea. Perferendis quas maiores.	36	jessjelly	-2	2020-09-13 07:23:00
30	Et et esse magni qui minus quia adipisci dignissimos. Rerum ab sit voluptatum sequi aspernatur et.	15	jessjelly	14	2020-08-25 23:10:00
31	Sit sequi odio suscipit. Iure quisquam qui alias distinctio eos officia enim aut sit. Corrupti ut praesentium ut iste earum itaque qui. Dolores in ab rerum consequuntur. Id ab aliquid autem dolore.	1	weegembump	11	2020-09-26 17:16:00
32	Occaecati distinctio et maiores atque. Rerum aut vel iste beatae mollitia commodi. Cumque quia illum. Hic rerum sed.	26	happyamy2016	16	2020-01-02 14:18:00
33	Explicabo perspiciatis voluptatem sunt tenetur maxime aut. Optio totam modi. Perspiciatis et quia.	1	cooljmessy	4	2019-12-31 21:21:00
34	Omnis dolores sit. Suscipit dolore quia quia quia qui sunt error. Velit dolores eum cupiditate officiis minima quaerat. Fugiat occaecati magnam distinctio. Ut quia maxime adipisci dolorem qui nesciunt et voluptas.	27	jessjelly	13	2020-11-08 21:14:00
35	Accusamus error recusandae iure. Omnis ab aut id. Nihil perspiciatis aut unde recusandae voluptatum placeat.	19	happyamy2016	-2	2020-06-07 08:10:00
36	Debitis exercitationem numquam unde quo illo. Iste rerum rerum non accusantium voluptatibus adipisci expedita expedita adipisci. Minima quae velit et ea eveniet. Vero quis itaque. Aliquid facilis dolores consequatur ea amet magni aliquid.	28	jessjelly	17	2020-05-26 19:06:00
37	Ut odit ad repudiandae laudantium facilis pariatur aliquid. Pariatur quidem voluptatibus recusandae in consequatur beatae sint. Aut error ratione culpa ipsam autem saepe vel sit enim. Adipisci voluptas sit sed perferendis ipsum molestiae. Sit perferendis veritatis illo et facilis eos libero error. Repellendus ea dolores deserunt inventore.	23	tickle122	12	2020-09-18 15:13:00
38	Ipsam quod dolor harum alias porro dignissimos vero et. Quia accusantium qui ratione eius qui.	8	jessjelly	7	2020-06-16 07:07:00
39	Et veniam blanditiis fuga rem rem officiis debitis rerum. Est repudiandae tempora autem harum omnis et. Et consectetur sed assumenda asperiores amet quo eaque.	31	grumpy19	16	2020-07-21 01:04:00
40	Et optio voluptatem sed reprehenderit quibusdam. Reprehenderit doloremque laboriosam. Vel est amet quia dolor rerum consequatur. Distinctio tenetur dolores. Voluptates laboriosam repudiandae et quisquam ex. Dolorem quidem et.	7	tickle122	5	2020-02-19 05:15:00
41	Incidunt temporibus ipsam fuga voluptatem occaecati vel corporis. Consectetur laudantium tenetur ratione cumque. Molestiae esse non minima beatae id consequuntur voluptas optio. Pariatur nesciunt sed eum architecto a nemo dignissimos dignissimos. Dolores dicta eum voluptatem ea quas soluta sunt mollitia optio.	29	happyamy2016	1	2020-10-19 03:15:00
42	Harum odit sed doloremque eos voluptates vero ipsa odio eos. Velit et voluptatum accusantium. Eligendi deserunt sunt optio est hic nisi reprehenderit. Quasi et delectus facere modi.	31	jessjelly	16	2020-02-12 08:26:00
43	Ipsam quis ad consequatur iure voluptas accusantium voluptatem unde. Cumque omnis mollitia natus nemo deleniti rerum enim cumque aut. Quod quis est fuga.	8	grumpy19	-2	2020-01-18 08:17:00
44	Error est qui id corrupti et quod enim accusantium minus. Deleniti quae ea magni officiis et qui suscipit non.	1	grumpy19	4	2020-06-15 16:13:00
45	Sint doloribus expedita non sed fuga aliquid vero. Amet consectetur eos eum. Tempora error velit rerum vitae voluptatem voluptatibus consequuntur voluptatibus ea. Et vitae et pariatur est molestias. Nobis est harum debitis rem accusantium est ipsa sed. Voluptatem beatae at beatae.	9	cooljmessy	10	2020-09-09 18:11:00
46	Non sunt quos aut facere. Corporis molestiae aut soluta aut rerum animi voluptatibus.	26	weegembump	-3	2020-10-05 07:05:00
47	Ea quod sunt nihil mollitia qui laboriosam eaque quas accusantium. Eveniet exercitationem esse dolor autem repellat laborum voluptatibus alias repellendus. Magni nostrum ut ea molestiae. Et ut at quasi aut.	10	happyamy2016	0	2020-01-13 09:01:00
48	Eaque fugiat est veniam ex praesentium et saepe molestias non. Est dolore et sint consequuntur.	34	jessjelly	12	2020-03-08 20:02:00
49	Omnis dolor rerum culpa est ducimus totam voluptatibus id. Consequuntur vel cupiditate asperiores. Eos non molestiae accusamus esse excepturi animi vel animi.	31	cooljmessy	13	2020-11-05 18:26:00
50	Et sed quia repudiandae aut error ut. Sequi voluptas error ut quibusdam officia quis. Sapiente est rem. Culpa molestiae omnis vel. Explicabo ea velit ipsa quasi autem error culpa quasi. Nulla ab omnis optio non voluptatem cumque.	34	cooljmessy	0	2020-03-22 11:15:00
51	Eius dolor ipsa eaque qui sed accusantium est tenetur omnis. Eligendi necessitatibus sunt voluptate occaecati et quis consequuntur aut. Maxime nihil ut quia culpa.	3	grumpy19	-3	2020-01-14 03:12:00
52	Consectetur deleniti sed. Omnis et dolore omnis aspernatur. Et porro accusantium. Tempora ullam voluptatum et rerum.	1	jessjelly	10	2020-07-07 09:14:00
53	Tempore itaque aperiam nostrum molestiae et veniam. Dolores dignissimos beatae quia quam impedit modi recusandae. Modi quaerat rerum itaque sint modi. Aperiam blanditiis officia qui odio veniam et. Sit accusantium ut.	29	happyamy2016	10	2020-02-05 15:13:00
55	Ut et libero reiciendis. Tenetur quibusdam veniam in atque corrupti excepturi tenetur qui et. Qui ut autem minus aut explicabo in cumque dolorum. Voluptatem est perferendis velit. Eaque doloremque asperiores error.	6	jessjelly	-3	2020-01-16 23:20:00
56	Ullam ad aliquam labore sint quia quo autem. Earum accusamus mollitia eum consectetur est doloremque corrupti aliquam. Soluta maxime rerum ipsum molestiae id temporibus tempore.	10	weegembump	4	2020-08-07 15:20:00
57	Et aliquam consequatur ea sunt et. Maxime aut nobis voluptatem eos facilis vero incidunt delectus. Atque quaerat id aut tempore non hic hic sed. Nemo natus culpa nesciunt. Beatae quod est omnis hic aliquam accusantium dolorum natus. Totam voluptatem incidunt a repudiandae ut.	34	happyamy2016	5	2020-04-22 18:05:00
58	Dicta et doloremque rerum quod dolorem mollitia exercitationem quia. Quas quis quam recusandae occaecati sit voluptas. Et ut voluptatibus est eos. Placeat consectetur non nisi dolores ea non unde sit aperiam.	16	jessjelly	12	2020-04-01 11:07:00
59	Incidunt maiores exercitationem. Non illo non recusandae omnis praesentium architecto. Molestiae vero quia occaecati. Et sed magni blanditiis quis quia consequatur dolores nulla nisi. A omnis velit voluptatem.	32	cooljmessy	6	2020-11-14 01:07:00
60	Aut optio perferendis praesentium fugiat. Vel similique non eveniet. Repellat molestiae ipsum voluptates.	7	tickle122	19	2020-10-07 04:19:00
61	Quos deserunt ut doloremque animi. Error ipsum assumenda aliquam tempore est et suscipit eveniet necessitatibus. Sequi illo dolor quia incidunt voluptates sint dolore. Aut impedit dolores.	31	cooljmessy	13	2020-03-07 16:04:00
62	Nesciunt pariatur autem dolor. Quas et nostrum occaecati qui dolores. Et cumque nostrum aut. Aut doloribus aut modi repellendus maiores quia laudantium doloremque. Qui vitae laudantium sunt ut iusto. Et aut ipsam iste.	19	grumpy19	1	2020-01-06 02:15:00
63	Est pariatur quis ipsa culpa unde temporibus et accusantium rerum. Consequatur in occaecati aut non similique aut quibusdam. Qui sunt magnam iure blanditiis. Et est non enim. Est ab vero dolor.	2	jessjelly	-1	2020-08-12 23:10:00
64	Ad qui ut enim qui numquam quis. Reprehenderit rem non nulla dolor aut totam corporis illo. Et ea maxime consequuntur nihil delectus dolores qui in aliquam. Ut et eius id nesciunt necessitatibus beatae quo. Est qui provident officia in dolor. Assumenda voluptas dolor.	6	grumpy19	-5	2020-09-23 09:15:00
65	Officia nihil harum saepe occaecati dolores inventore. Eos cum illo aut blanditiis eum.	6	weegembump	4	2020-10-19 00:05:00
66	Aperiam similique recusandae et rerum aut unde sed. Fuga voluptatem illum aut impedit excepturi. Et quaerat minima in veniam in maxime nam quia. Fugit nostrum ipsa ipsa est sunt quidem nostrum sit pariatur. Voluptas aspernatur ex.	27	weegembump	15	2020-01-06 17:03:00
67	Sapiente ut debitis qui sit autem dolores. Quis et consequatur eligendi dolorum quia quam odit qui. Quaerat ut sit fugit ut sint et sequi est.	27	jessjelly	9	2020-06-30 09:24:00
68	Voluptatibus harum illo occaecati itaque inventore. Alias dolores consequatur fugit id rerum repellat. Qui molestiae dolore quia.	20	cooljmessy	8	2020-09-21 12:03:00
69	Totam et dolor magnam et voluptatum. A in adipisci.	23	tickle122	-1	2020-08-14 13:08:00
70	Et ullam nihil repudiandae facere sunt cupiditate cum. Doloremque voluptatem rerum qui error omnis. Dolorum numquam dolorum voluptas ad.	4	grumpy19	2	2020-03-05 06:04:00
71	Recusandae dolorem consequatur non a accusantium ea. Ut repudiandae doloremque expedita perspiciatis voluptas. Optio adipisci consequuntur. Reprehenderit veritatis eos voluptatem sed alias voluptatem atque. Eos repudiandae enim quos tenetur eos deserunt perspiciatis aut velit.	30	cooljmessy	7	2020-06-10 10:04:00
72	Cumque qui eius consequatur pariatur reprehenderit at rem nobis. Consequatur id qui iste voluptatem iste esse eligendi. Et sint porro alias architecto dolores.	31	jessjelly	5	2020-04-15 01:21:00
73	Fugiat molestiae iure et qui consequatur expedita quia. Est sed repellat nesciunt nulla sit in dolor laudantium. Totam vero et quam. In numquam magnam voluptas itaque. Quisquam vel vitae doloribus vel id laboriosam quibusdam.	4	grumpy19	16	2020-01-24 07:01:00
74	Eius dolor qui ut eligendi. Vero et animi consequatur placeat repudiandae ex dolores qui magni. Omnis magnam rerum molestiae. Nihil rerum ipsa error quibusdam. Qui temporibus quia quia. Natus necessitatibus numquam deserunt quisquam distinctio soluta consequatur.	6	cooljmessy	3	2020-11-04 21:21:00
75	Quis iure rerum adipisci a porro ratione. Consequatur sequi ipsam esse ut ratione laudantium odio blanditiis fuga. Reprehenderit excepturi nihil beatae aut voluptate aliquid culpa animi.	35	jessjelly	2	2020-06-06 21:16:00
76	Expedita praesentium porro doloremque doloribus consequuntur dolorum. Consequatur asperiores veritatis et debitis autem et vel fugit. Earum placeat nemo sit.	10	grumpy19	0	2020-05-10 21:11:00
77	Hic qui omnis qui sit deserunt velit labore commodi repellat. Minus voluptatum dolore libero voluptatem praesentium aut iusto harum. Consequatur sit quasi. Est ad minus inventore ut reiciendis. Quos incidunt rerum. Ut omnis in voluptatum nesciunt.	8	tickle122	-2	2020-11-06 19:20:00
78	Ab distinctio rerum enim ut illum. Vel deleniti placeat error eligendi. Sapiente provident hic rerum. Nihil nostrum corporis.	35	happyamy2016	7	2020-09-11 17:02:00
79	Possimus adipisci et cupiditate rerum dolores provident. Vero est autem. Voluptatum nemo officia dolorem et a ipsa. Laboriosam doloremque aperiam.	20	grumpy19	7	2020-11-19 10:05:00
80	Voluptatem voluptas unde. Quam tempore recusandae voluptatem similique iusto repudiandae et. Tenetur dolores possimus labore. Incidunt quae ipsa qui quas. Sunt suscipit aliquid vitae.	31	cooljmessy	-5	2020-07-14 03:02:00
81	Incidunt perferendis et eum. Odit aut eaque. Repudiandae et quia impedit quisquam dolore fugit. Magnam non magni qui molestias dolore sed facere blanditiis. Qui doloribus autem dolorum dolor aliquam. Tempora cum officia tempore.	7	weegembump	12	2020-07-26 00:10:00
82	Facilis ipsam illum aut voluptatibus. Repudiandae cupiditate quo fugiat earum est ut autem repudiandae excepturi. Fuga voluptatem iusto ut. Nulla sequi culpa qui eaque. Architecto non veniam distinctio.	11	happyamy2016	-4	2020-08-19 08:08:00
83	Velit in assumenda quo repudiandae qui eaque. Qui dolor ad iusto optio magnam suscipit.	24	weegembump	-2	2020-04-08 22:01:00
84	Modi cum quo maxime sunt quia doloribus consequatur recusandae. Quam temporibus est non dolorem. Rerum dolorem nulla sed nam repellendus doloribus non accusantium. Id beatae est et a.	13	grumpy19	0	2020-10-11 06:19:00
85	Assumenda sit est blanditiis asperiores est minima. Placeat sequi tenetur autem consequatur soluta molestiae. Incidunt neque labore et dolorem et vel possimus nemo quidem.	1	happyamy2016	0	2020-08-23 02:14:00
86	Et explicabo dignissimos officia dolore rerum aliquam corrupti. Culpa corporis earum et earum officia a est atque at. Quidem quo recusandae delectus autem possimus blanditiis optio. Sed culpa culpa. Exercitationem nemo aspernatur alias ut qui.	1	tickle122	14	2020-10-04 02:03:00
87	Explicabo cumque sequi aut. Sed minus et aut consequatur. Iste qui temporibus non corporis non. Laudantium tenetur quaerat repellendus. Neque ut qui sunt. Eaque sit fugit est ad molestiae.	26	grumpy19	6	2020-03-09 18:19:00
88	Minus minus sit non fugiat sunt et nostrum aut et. Dignissimos qui nemo quos fuga qui temporibus occaecati aut. Explicabo dolor commodi officia nulla totam inventore.	5	weegembump	-3	2020-05-26 16:11:00
89	Esse et expedita harum non. Voluptatibus commodi voluptatem. Minima velit suscipit numquam ea. Id vitae debitis aut incidunt odio quo quam possimus ipsum.	1	cooljmessy	2	2020-10-24 07:08:00
90	Maxime error necessitatibus voluptatibus labore aliquid. Animi a maiores quo aut quia libero repellendus aut delectus. Illo dolorem sit eos at molestias sed. Sint quibusdam harum eos quidem praesentium corporis. Ut dolor aut consectetur nisi deserunt.	36	jessjelly	2	2020-01-16 00:00:00
91	Quo aut ut quaerat quia laudantium nemo. Et est non sed dolor cupiditate voluptatem quia et officia.	26	happyamy2016	5	2020-05-17 05:18:00
92	Aut doloremque explicabo id. Deleniti libero in dolore sit ea voluptatem ipsa.	9	cooljmessy	0	2020-06-03 01:02:00
93	Impedit impedit similique quaerat sit. Fugit et aliquid quae doloremque dolores amet velit. Quia cupiditate ipsa ad aliquid minus voluptatem eaque.	36	cooljmessy	0	2020-04-25 12:25:00
94	Voluptatum aut facilis odit sint. Iste ab ut mollitia aut odio. Similique aut a ut est impedit. Similique dolorum possimus ipsum voluptatem iste non commodi placeat quia. Vero aperiam eum voluptatem aut sed totam dicta suscipit.	29	weegembump	-4	2020-04-15 07:17:00
95	Praesentium pariatur a nisi. Minima eius est saepe aut.	21	grumpy19	11	2020-01-22 17:04:00
96	Eos exercitationem dolorem autem autem nesciunt voluptas molestiae quas. Ut id qui. Quis quia consequatur veritatis magnam autem. Corrupti corporis illo in in est aperiam.	23	weegembump	11	2020-09-07 09:22:00
97	Enim sunt nam rerum quidem. Quod quia aliquam numquam et laboriosam doloribus iusto et. Numquam quae quis hic maiores. Sed quos et dolore esse cumque consequatur blanditiis placeat omnis. Omnis qui magni explicabo.	35	weegembump	19	2020-02-20 07:13:00
98	Delectus nostrum autem. Dolore est id veniam maxime aliquid omnis nam cupiditate consequatur. Eveniet similique et voluptatem voluptatem illo. Quam officiis aut molestias hic est omnis. Dolor enim dolores. Quo explicabo reprehenderit reprehenderit nostrum magni in.	17	grumpy19	-3	2020-02-07 02:23:00
99	Reiciendis enim soluta a sed cumque dolor quia quod sint. Laborum tempore est et quisquam dolore. Qui voluptas consequatur cumque neque et laborum unde sed. Impedit et consequatur tempore dignissimos earum distinctio cupiditate.	19	happyamy2016	17	2020-09-18 19:05:00
100	Corporis magnam placeat quia nulla illum nisi. Provident magni aut et earum illo labore aperiam. Dolorem ipsum dignissimos est ex. Minima voluptatibus nihil commodi veritatis. Magnam aut suscipit dignissimos nostrum ea.	29	weegembump	3	2020-06-18 13:10:00
101	Accusantium aliquid voluptatem cum rerum perspiciatis rem. Quia et rem nobis.	35	grumpy19	0	2020-02-01 01:10:00
102	Quia quos adipisci sint expedita voluptatem id ut at accusantium. Et ex itaque recusandae aut quo. Quia quam similique eum quidem iusto. Aspernatur ducimus vitae vel natus doloribus qui id. Excepturi voluptatem qui quia sit qui eveniet voluptatem. Fugit itaque libero quibusdam sunt.	2	jessjelly	10	2020-09-14 12:13:00
103	Blanditiis alias consectetur nisi autem et in dicta inventore. Velit consectetur eos.	6	grumpy19	10	2020-03-12 06:09:00
104	Nihil laborum qui quidem quibusdam aut deserunt laboriosam. Enim ipsa corporis. Nobis ipsa deleniti natus nulla qui ut vero sequi. Perferendis eveniet eligendi est itaque repellat. Illum hic nesciunt omnis veniam recusandae architecto et. Cumque qui mollitia ipsam impedit nemo.	14	grumpy19	1	2020-10-02 01:12:00
105	Ut facilis laboriosam minus architecto. Ratione ea ad et cupiditate nisi ut. Est ex facilis facilis. Corrupti ut quaerat et voluptatum corporis possimus et rem. Quisquam eos et qui illo esse earum fuga. Atque omnis ullam.	19	happyamy2016	6	2020-08-13 19:17:00
106	Cumque aspernatur voluptas rerum officiis dignissimos. Quod est sunt at laborum soluta saepe consequatur. Maxime amet explicabo quam rem voluptatem sunt voluptatum quasi. Reiciendis reprehenderit animi iste saepe dicta deleniti laboriosam porro.	32	jessjelly	6	2020-05-01 03:08:00
107	Enim ea consectetur soluta. Voluptatem est inventore cumque quo quia itaque. Labore vel odit accusantium. Error molestias iusto nostrum enim mollitia eius sequi ea.	29	jessjelly	12	2020-04-01 02:11:00
108	Magni similique tempore a quia officiis ipsam ut non. Eum laborum dicta sint illo nihil quia maiores. Reiciendis sit voluptate sed quae iste temporibus.	17	grumpy19	-1	2020-08-02 09:22:00
109	Eum sapiente aut. Doloremque optio a quis qui fuga et. Dolorem animi minima corporis alias molestiae ea ab dolorum. Sed nobis iste recusandae. Eos consequatur nemo sunt deserunt qui necessitatibus.	29	happyamy2016	7	2020-01-20 16:21:00
110	Rerum error nemo unde recusandae occaecati. Consectetur alias accusamus architecto dolores quo illum illum.	8	weegembump	16	2020-02-16 13:08:00
111	Blanditiis voluptatum non deleniti. Blanditiis commodi eius. Animi provident rerum. At debitis autem officia quo id incidunt.	16	tickle122	6	2020-01-26 23:17:00
112	Voluptatem ipsam doloremque voluptate debitis voluptas nam non delectus rem. Et dicta assumenda dignissimos sed ea. Odit perspiciatis dicta consequatur aut facere in. Accusamus qui laudantium tenetur reprehenderit sed et velit iusto. Illo nihil voluptas rerum.	3	grumpy19	11	2020-08-06 12:04:00
113	Accusantium est officiis labore dolorem hic maiores quae quo. Et rerum sequi.	23	cooljmessy	-3	2020-01-17 17:13:00
114	Eligendi placeat aspernatur omnis delectus maxime inventore at porro. Accusantium nobis totam fugiat debitis quia repellat quo qui voluptatem. Laboriosam nesciunt distinctio et aut itaque ipsa aut. Cum accusantium et et recusandae numquam quas et. Porro minima accusantium atque quo illo.	34	tickle122	-4	2020-05-09 08:11:00
115	Neque dolor sint illum id consequuntur debitis qui nam eum. Nam adipisci similique consequatur officiis. Totam qui enim at iste dolorem ullam. Tenetur laudantium sed facilis aspernatur occaecati. Provident rerum quia consectetur et. Molestiae eligendi commodi.	33	happyamy2016	12	2020-01-16 09:21:00
116	Praesentium dolor doloribus sint. Quisquam molestiae dolorum asperiores animi omnis.	5	weegembump	3	2020-09-03 02:06:00
117	Unde vel aut sed eos excepturi doloremque molestias. Omnis consequatur accusamus veritatis cumque incidunt enim. Perferendis dicta ut animi voluptatem porro.	35	weegembump	0	2020-01-11 02:18:00
118	Voluptas consequatur voluptatem minima aut velit consequatur reprehenderit dignissimos. Voluptas iusto facere libero quos ut quibusdam aliquam rerum. Et pariatur ab in iusto. Neque odio sed quisquam.	29	happyamy2016	2	2020-09-26 02:20:00
119	Rerum asperiores et aut illum iste. Sunt pariatur voluptate at quas nostrum.	14	grumpy19	20	2020-01-24 20:11:00
120	Praesentium asperiores omnis porro facilis dignissimos sint exercitationem fugit. Error voluptas soluta veniam dicta amet iste. Deleniti assumenda id exercitationem accusantium. Ut sed eum est.	18	cooljmessy	18	2020-02-22 14:12:00
121	Fugit unde aut repellat qui ea quos adipisci ea. Voluptatibus dignissimos rem earum rerum facilis nihil illo veritatis dolores. Amet ipsam quia odio quo et non. Sunt asperiores tempore illum.	35	cooljmessy	1	2020-06-20 09:22:00
122	Rerum iusto nisi impedit sit odio. Aperiam est et eum sit qui sunt expedita quaerat distinctio. Nulla neque sint reprehenderit delectus. Omnis est reprehenderit. Ab non magnam. Reiciendis quo eveniet voluptates possimus ipsum repellendus dolores.	10	cooljmessy	19	2020-10-05 00:06:00
123	Nisi itaque ipsum qui minus occaecati quia impedit consequatur. Et unde assumenda eos eum ducimus perferendis.	21	cooljmessy	19	2020-07-25 20:24:00
125	Quo voluptate quia commodi illum aliquam quibusdam et quia consequatur. Omnis eligendi consequatur est fugit est. Adipisci incidunt occaecati.	15	jessjelly	2	2020-11-05 12:06:00
126	Nam modi quia repellat et quia quasi quo fuga. Tempora et aut tempore dolores et officiis ipsum corrupti. Qui libero provident necessitatibus illo quaerat nobis rerum. Ea alias ex.	27	grumpy19	3	2020-07-23 01:14:00
127	Fuga sit accusantium sunt aliquam voluptates omnis facilis adipisci ad. Quaerat nostrum omnis officiis cumque placeat dolorem soluta. Quas pariatur ipsa ea quae totam sit porro veniam. Assumenda et id velit inventore dolores asperiores voluptas quo qui.	30	jessjelly	19	2020-09-05 20:21:00
128	Rerum veniam sequi quia. Qui aperiam eveniet. Modi occaecati quidem impedit sed distinctio ratione. Quos et dolores neque fugit omnis veritatis. Sed rerum maxime eum quia enim quis nam.	17	cooljmessy	4	2020-07-14 08:16:00
129	Maiores est adipisci cum quam deserunt voluptas natus est soluta. Sed alias est. Et perspiciatis animi quo in dolores quidem quia quae voluptatum. Et ea sint rerum inventore asperiores ut est.	6	cooljmessy	3	2020-06-21 06:07:00
130	Ad odio a assumenda ad ut. Quidem modi in enim tempora labore. Culpa reiciendis nulla est maxime. Magni rem voluptatem sunt. Distinctio reiciendis consequatur aut eaque natus cum. Dicta rerum eum nisi.	34	jessjelly	18	2020-01-26 18:23:00
131	Atque consequuntur eligendi culpa cumque dolor et qui sapiente et. Quia placeat sed blanditiis consequatur velit possimus. Quidem fuga odio enim error voluptates vitae. Laboriosam qui consequatur sit illo minima ducimus reprehenderit necessitatibus impedit. Explicabo ducimus maxime.	36	cooljmessy	18	2020-08-11 07:21:00
132	Nihil neque maiores voluptatem sit. Culpa incidunt ut quo id qui provident reprehenderit necessitatibus.	7	cooljmessy	19	2020-06-11 10:05:00
133	Aut sed sunt odio quas quas sequi odit excepturi. Eius nisi modi quo aliquid est vero. Iure quis nihil est dolore repellendus ratione dolores eum nulla. Molestiae similique veritatis voluptas quia illum et repudiandae a corrupti. Quod optio quos. Tempore sequi quam.	27	weegembump	15	2020-09-14 10:01:00
134	Nam qui vel neque aut. Quas quos nisi. Eum praesentium quasi commodi saepe assumenda sed vel. Nostrum qui magnam aut occaecati exercitationem aut voluptatibus.	2	jessjelly	7	2020-05-04 18:21:00
135	Quam officiis reprehenderit architecto omnis est facere inventore. Expedita est enim dolore debitis velit. Quo facilis accusantium error.	27	happyamy2016	-1	2020-09-07 07:02:00
136	Eveniet ratione rerum. Corrupti vitae excepturi sit repudiandae iste dolor consectetur sit eum.	22	weegembump	18	2020-06-22 21:23:00
137	Nesciunt aliquid ex et architecto beatae fugit. Et delectus quam culpa rerum hic repellendus laudantium est. Non quasi omnis. Deserunt nisi voluptatem asperiores aspernatur mollitia qui. Molestiae sit voluptates et voluptas voluptas consequatur. Corrupti laboriosam consequatur est tenetur consequuntur id.	26	happyamy2016	-5	2020-03-20 02:01:00
138	Sint consequatur qui inventore impedit nesciunt. Ad aut numquam vel blanditiis. Deleniti aliquid sunt quis necessitatibus esse. Sapiente enim minus aut illo sequi voluptatibus fugit et illum. Dolor voluptatem voluptatem rerum dicta accusamus illo. Dolorum et est suscipit veritatis sequi earum delectus atque suscipit.	31	tickle122	5	2020-01-02 07:24:00
139	Blanditiis reiciendis eos est voluptas veniam. Vero voluptatem ut. Et ipsum laudantium modi consectetur ipsa. Itaque ut asperiores provident rem earum necessitatibus quaerat. Harum ipsam ex et accusantium aut. Tempora quia voluptatem omnis odio.	32	cooljmessy	19	2020-08-20 11:03:00
140	Rerum id exercitationem dolores. Et et id iure qui. Alias tempora voluptate sit rerum. Repellendus corrupti ea et maxime sit dolores et ut voluptas.	23	tickle122	5	2020-04-14 11:01:00
141	Quia magni est eum. Excepturi dolore nobis adipisci temporibus laudantium officiis minus. Blanditiis eligendi dolorem.	7	cooljmessy	3	2020-11-06 15:04:00
142	Dolor et eos. Earum suscipit est quia aut et qui voluptate. Et dolore necessitatibus asperiores qui perferendis. Adipisci rerum quod commodi ut omnis qui. Officiis maxime cum maxime expedita officia quisquam.	3	tickle122	2	2020-07-03 07:06:00
143	Unde harum amet. Architecto ad deserunt necessitatibus dignissimos minus quis. Eaque qui nihil eius nisi non corrupti. Molestias dolore quas.	29	tickle122	8	2020-09-18 06:07:00
144	Placeat voluptatum consequatur ducimus et eum molestiae impedit eveniet. Recusandae rerum voluptas quia mollitia quam velit iusto. Eum eos similique minima necessitatibus nemo. Iure deleniti omnis enim animi iste delectus et consequuntur.	5	grumpy19	19	2020-11-23 17:00:00
145	Odit aut error. Occaecati et qui. Quam nam aut dolorem.	3	jessjelly	10	2020-10-03 14:18:00
146	Soluta autem fuga non alias. Odit eligendi voluptas reiciendis repudiandae reiciendis doloribus adipisci qui consequuntur. Et dignissimos unde optio. Recusandae aspernatur eius error. Eos autem et iusto sunt fuga ipsam omnis voluptatem rerum.	4	jessjelly	6	2020-10-12 12:23:00
147	Qui qui sit earum et laboriosam non. Nobis distinctio qui et sint perspiciatis qui eum. Doloremque animi quia tenetur harum distinctio et.	27	weegembump	-2	2020-08-24 00:26:00
148	Nostrum quia sunt ad ea. Facilis aut alias adipisci voluptatibus explicabo aut incidunt repellendus qui.	21	cooljmessy	8	2020-02-24 12:08:00
149	Accusamus vel vero aut quaerat quo nihil saepe. Eius quam consequatur explicabo sed est dolor soluta. Corporis enim possimus quo tempore voluptatem id. Sit et modi id ad eum deserunt. Aut voluptatem eum dolor eius. Aperiam ut quo rerum maxime omnis molestiae ipsum quibusdam laboriosam.	5	grumpy19	10	2020-05-04 06:15:00
150	Doloremque ut reiciendis autem perferendis vel in tempore. Delectus quia illum deleniti fuga dolores dicta velit aut architecto.	9	tickle122	-3	2020-01-17 16:06:00
151	Fuga hic sed. Minus expedita eos aut. Enim dolores iure consequatur et consequatur dolor autem. Itaque consequatur quia. Ullam officia cumque nihil officiis. Earum error iure sed non earum.	34	jessjelly	14	2020-08-31 10:09:00
152	Animi id fuga culpa voluptates sint qui. Nostrum deleniti optio quo quas eveniet excepturi voluptates voluptatem totam. Provident dolores nesciunt dignissimos quisquam laboriosam iusto aut recusandae est.	2	grumpy19	18	2020-09-10 03:16:00
153	Et deserunt unde quia atque aperiam provident. Ullam provident est ut perferendis aliquam ut blanditiis tenetur. Tenetur laudantium ea et mollitia sit dolores expedita ullam. Ut ad velit magni.	7	cooljmessy	4	2020-03-19 16:24:00
154	Dolores qui illo et minima et facilis sunt. Enim velit sunt ut quae est ut.	33	cooljmessy	4	2020-03-08 15:06:00
155	Qui recusandae nulla quod ut nulla eius ipsum est omnis. Totam laborum culpa suscipit magni adipisci optio est ea. In laudantium dolores eligendi doloribus. At recusandae quia et sapiente odit dolorem consequatur. Velit ut commodi in occaecati animi sint debitis sapiente eligendi.	19	cooljmessy	0	2020-05-22 15:09:00
156	Error nesciunt et aut ipsam. Dolorum doloribus pariatur.	27	happyamy2016	18	2020-07-02 15:01:00
157	Ea similique at itaque. Nostrum et temporibus est distinctio nobis pariatur qui. Molestias temporibus est cupiditate unde nulla distinctio. Ut nihil ad molestias consequatur autem culpa neque assumenda illum. Natus doloremque nostrum labore iusto sit.	26	happyamy2016	0	2020-02-02 01:10:00
158	Voluptatibus laudantium vel consequuntur explicabo voluptatem adipisci eligendi nihil magni. Dolore in molestias ullam sapiente et aperiam. Et aut est placeat porro dolor et modi reiciendis. Enim fuga exercitationem in. Dolore sint laudantium quos sint et aut possimus.	22	happyamy2016	-5	2020-06-09 13:10:00
159	Veniam natus sed nostrum et aut repellendus. Dignissimos quia cum id odio repudiandae impedit aperiam sapiente. Harum sequi non nihil velit modi. Corporis consequatur enim suscipit eos dignissimos voluptas nobis eum.	35	cooljmessy	-1	2020-09-24 00:05:00
160	Beatae non libero nostrum dolores. Minima est facere qui quia omnis enim autem sint.	35	jessjelly	7	2020-11-22 13:07:00
161	Repellendus eos consequatur atque autem voluptatem et neque facere quas. Illum quaerat numquam labore dolorem harum dolores veritatis. Animi ex dolorum amet. Atque quia quasi labore sed molestiae.	11	weegembump	18	2020-04-01 23:01:00
162	Et suscipit maxime sit sunt consequuntur consequatur fugiat molestias. Et quis enim vero.	2	grumpy19	14	2020-10-03 19:22:00
163	Beatae labore et voluptatem aut iure. Labore cum tempore eaque cum. Doloribus omnis neque nihil odio ipsum dolore voluptates.	13	grumpy19	11	2020-04-23 02:10:00
164	Qui aut nihil temporibus enim. Consequatur officiis quia. Sit vero eum.	24	cooljmessy	12	2020-06-15 01:01:00
165	Eaque vel unde ab voluptates sint. Doloribus in aut eaque sed laboriosam consequuntur voluptatem molestiae. Sed quibusdam similique aut consequatur reprehenderit omnis. Quasi et commodi nihil aut odio harum.	27	happyamy2016	19	2020-11-18 07:03:00
166	Dolores facere consequatur. Voluptatem sed debitis esse voluptatem error debitis laborum. Provident provident et et laboriosam qui sunt et temporibus ut. Totam ipsa dicta officia sit et itaque. Enim sit debitis inventore reprehenderit at et ducimus. Culpa qui et odio exercitationem.	23	cooljmessy	12	2020-08-05 08:03:00
167	Deleniti itaque et est unde autem. Labore illo commodi quaerat natus fugiat adipisci. Adipisci unde recusandae aliquam suscipit ipsum.	3	grumpy19	19	2020-02-05 09:16:00
168	Sit nihil natus ea nostrum laboriosam necessitatibus. Ab praesentium velit est aut incidunt. Accusamus ipsa et at aspernatur suscipit nihil. Alias dolorum odio deserunt modi. Aspernatur ipsam culpa sit suscipit quia laudantium tempore quaerat.	35	grumpy19	7	2020-07-23 21:23:00
170	Atque voluptas quaerat odio quis. Maxime eligendi autem a consectetur dolores ea necessitatibus consequatur molestias. Autem voluptatem soluta ipsa et qui iure neque est. Qui architecto reiciendis id repudiandae omnis aspernatur veniam est nobis. Ducimus eveniet voluptatum enim et fuga officia omnis consectetur. Recusandae et sint quia dolor voluptatem sit autem id.	17	weegembump	13	2020-07-14 19:04:00
171	Est voluptas reprehenderit enim necessitatibus blanditiis quia consequatur. Soluta quae quia non veniam corrupti et. Asperiores culpa est ut quam ipsum molestias reiciendis sed molestiae. Ut odit in non odio molestias ab. Voluptates est inventore nihil sunt voluptatem dignissimos et debitis. Nihil et numquam.	30	weegembump	-5	2020-03-03 05:25:00
172	Repudiandae eos eligendi beatae aliquid incidunt temporibus sunt iste dolorem. Dolor iusto ratione quo quia. Deserunt architecto accusamus. Tempore commodi similique rerum vero quia. Ab sit asperiores assumenda est.	16	weegembump	16	2020-08-15 05:26:00
173	Laudantium non corrupti maxime aut ea ullam incidunt autem aperiam. Dicta adipisci delectus officia ea earum accusamus et et. Molestiae sed quidem nulla soluta dolor ipsum. Debitis nam laudantium provident occaecati deserunt cumque.	15	tickle122	16	2020-06-12 12:18:00
174	Sit dolores similique temporibus omnis. Reiciendis animi similique. Tempore inventore aperiam. Labore dolorem sint molestiae assumenda ipsum.	34	cooljmessy	-2	2020-09-06 00:02:00
175	Consequatur quia adipisci. Provident tenetur est non harum commodi et itaque aut voluptate. Assumenda labore sed est dolores cum in et et. Velit repudiandae aut et est facere laborum et qui et. Magnam est aliquam.	12	cooljmessy	5	2020-06-24 04:03:00
176	Est quia optio voluptate in omnis ut quasi. Ea ut sequi sit consectetur eligendi non error quae. Optio accusantium nesciunt. Consequuntur qui alias sed. Aliquam facilis placeat temporibus eaque est et beatae et.	23	grumpy19	6	2020-06-06 14:26:00
177	Rerum qui consequatur vel sunt debitis. Ea consequuntur eos ducimus quo vitae dolorum illum tempora eum. Recusandae consequatur dolorum quis.	26	tickle122	1	2020-04-15 02:16:00
178	Harum est in ut et odio sit quis dolore earum. Ad ratione velit consequatur.	22	weegembump	1	2020-02-05 04:00:00
179	Provident quo sed et ea. Autem cumque incidunt aut aut nostrum aut qui qui repudiandae.	29	grumpy19	0	2020-05-22 08:18:00
180	Sit harum est sunt non hic atque quis. Amet non est eum tempora id earum nam omnis. Minus pariatur pariatur doloribus deserunt vel. Est assumenda quo et quam perferendis possimus aliquid. Occaecati porro perferendis accusantium sed quo facere voluptates aliquid rerum. Ut eligendi id.	16	tickle122	9	2020-10-02 09:09:00
181	Aut sint ut. Voluptatem enim saepe quasi aut ut qui quasi neque quidem. At nihil quia minus eos harum est accusantium et.	16	tickle122	-2	2020-03-01 15:09:00
182	Voluptatem voluptas tempore soluta et rerum quia sed quas ut. Non cumque perferendis voluptate vitae est quis sit enim dolor. Et esse qui est et.	6	jessjelly	-5	2020-08-19 19:15:00
183	Eaque et officia maxime. Iusto provident a vitae. In dolorem numquam. Pariatur est laudantium laborum nostrum architecto assumenda ea maxime. Quia perferendis qui ducimus saepe et sunt cum dolore amet. Quibusdam aliquam nam illum consectetur aut porro.	12	cooljmessy	15	2020-11-15 09:14:00
184	Aut unde dolor debitis exercitationem atque necessitatibus. Rerum alias commodi sunt. Quasi ipsa iure omnis et rerum corrupti. Rerum voluptatem aliquid tempore doloremque et facere sapiente nam. Qui totam ipsum. Ipsa sed eum laborum nulla dolore consequatur aspernatur ea.	34	jessjelly	6	2020-02-29 00:23:00
185	Impedit iure ut est qui et qui sed. Nobis sint voluptatem asperiores. Ad sequi repellendus.	18	jessjelly	14	2020-02-02 15:13:00
186	Nisi culpa molestiae est molestias animi minus. Labore aut doloribus placeat et qui explicabo odio.	21	tickle122	19	2020-09-19 17:23:00
187	Vitae quo nobis illum aut vel iure. Ut non distinctio quia soluta odit quasi ut mollitia accusamus. Eum perferendis neque quos dignissimos expedita totam fugit autem. Quis exercitationem dolor molestiae ullam asperiores impedit architecto dolor.	4	grumpy19	14	2020-06-23 02:00:00
188	Qui at et qui pariatur saepe ea libero. Voluptate voluptatem qui est qui quasi et. Consequatur illo voluptatem ea autem vel vel. Perferendis iure ab voluptate asperiores odio odit dolores. Rem et nulla dolorem et dignissimos culpa. Voluptatibus nihil consequatur aspernatur debitis velit quaerat sequi praesentium.	28	cooljmessy	19	2020-08-03 14:07:00
189	Architecto nesciunt enim totam deleniti nobis enim eum consequatur. Ut nostrum voluptates excepturi minus ipsam dolorem nostrum.	16	happyamy2016	19	2020-04-05 07:00:00
190	Dolorum fugiat temporibus quia quisquam. Et id minima.	20	cooljmessy	12	2020-08-05 22:04:00
191	Ex beatae harum qui. Et minima qui. Molestiae quod commodi tenetur corporis id necessitatibus eum nobis. Ut dolorem eveniet. Ex dolor qui. Officia reprehenderit ducimus iure placeat.	2	weegembump	12	2020-08-05 13:17:00
192	Blanditiis aut a. Ipsum iusto quam quos veritatis repellendus nostrum. Sequi quis culpa.	3	jessjelly	3	2020-02-21 12:08:00
193	Asperiores dicta qui. Itaque id quibusdam ut est rem odit magni ratione.	19	jessjelly	4	2020-01-03 11:00:00
194	Sit dolore et et voluptatem consequatur. Nostrum quae accusamus repellendus quae esse eligendi quaerat incidunt omnis.	15	cooljmessy	11	2020-03-20 06:06:00
195	Voluptas in neque quasi. Rem esse odio deserunt minima voluptatem laboriosam consequatur aut aliquam. Rerum ipsa et voluptas velit eveniet doloribus.	20	weegembump	14	2020-08-03 01:17:00
196	Qui consequuntur id beatae ut vel a error. Vitae et et. Mollitia soluta neque quibusdam tempore quis quia eos autem magni. Voluptatibus numquam nostrum et enim officiis rerum. Optio quo harum dolore voluptatem sit temporibus rem voluptas rem.	33	cooljmessy	0	2020-10-01 09:20:00
197	Autem similique commodi et vel autem minima quos quam. Animi et dignissimos recusandae repellat officia excepturi sunt. Occaecati vel excepturi qui voluptatem et illo hic. Voluptas itaque et. Hic fugiat tempore soluta sequi nisi perspiciatis rerum perspiciatis. Corrupti accusantium ullam corporis facilis ea omnis enim.	18	tickle122	11	2020-08-21 08:13:00
198	Odio accusamus eius voluptatem voluptatem esse magni est in aperiam. Voluptatem quam sapiente omnis debitis ut molestiae. Eligendi qui ratione. Maiores occaecati voluptas voluptatem at repellat sint voluptatem. Ut voluptatem optio porro perspiciatis aut dicta quae qui. Minus odio suscipit tempora aspernatur sequi ut est.	30	grumpy19	-3	2020-04-20 11:25:00
199	Autem magnam sequi quidem inventore dolorem sed dicta qui quis. Voluptatem sit pariatur esse similique nam corporis provident. Quo quam ducimus repudiandae voluptas. Officia ducimus quo praesentium ducimus est nesciunt molestias sequi.	10	jessjelly	12	2020-06-03 01:26:00
200	Fugiat aut ipsam ea commodi natus commodi officiis amet. Rerum quae error. Vel eum voluptates corrupti aperiam.	3	jessjelly	-1	2020-05-20 07:15:00
201	Necessitatibus libero et et qui exercitationem nihil labore. Aut autem sed.	23	happyamy2016	5	2020-06-16 23:25:00
202	Quia numquam ut fuga. Laudantium perspiciatis distinctio rerum sunt itaque non ipsum. Nihil necessitatibus voluptatem. Reiciendis nobis quae quo et mollitia soluta. Voluptates deleniti soluta ducimus natus eos enim sunt. Totam et perferendis qui reiciendis.	16	happyamy2016	-3	2020-07-06 13:10:00
203	Fugiat voluptatibus numquam aut aut sit quae magni qui. Ipsam sed reprehenderit aliquid quibusdam. Id ducimus quisquam modi sed repellendus quia omnis aliquam et. Qui blanditiis voluptate doloremque esse qui sint deserunt voluptas. Et rerum et rerum quia repudiandae vero omnis voluptas sit. Ipsam eos fugiat omnis rem quia sequi omnis reprehenderit minus.	11	tickle122	-1	2020-01-09 19:17:00
204	Doloribus omnis numquam soluta. Eius officia molestias. Velit ex distinctio et sunt. Et non incidunt velit quam ullam accusantium natus sunt. Aut similique ullam eum impedit autem necessitatibus aut. Est accusamus quo beatae illo quaerat culpa perspiciatis.	12	grumpy19	8	2020-08-09 07:00:00
205	Voluptatum expedita et nobis non quisquam corrupti voluptas sed delectus. Sed dolorem itaque eius velit soluta quia deleniti. Dolorem rerum consequatur vitae. Ea cupiditate voluptate.	25	weegembump	5	2020-09-07 03:07:00
206	Ea cum vitae sunt. Rerum inventore voluptates dolores consequuntur recusandae esse quia velit at. Voluptatem sit voluptates temporibus. Et sunt harum ad sit ut aperiam. Omnis enim eos aspernatur. Maxime nam quasi error dolor et qui quaerat accusamus temporibus.	31	cooljmessy	-3	2020-03-25 17:08:00
207	Aliquam delectus eligendi. Minima quam est ducimus non soluta nihil. Veritatis provident omnis dolor ipsa dolorem doloribus.	23	cooljmessy	4	2020-07-26 13:07:00
208	Sunt quos sit suscipit est veritatis molestias accusamus. Animi voluptatum et aliquam dolorum et molestiae culpa sed qui. Sapiente rerum tempore amet quia nesciunt.	16	jessjelly	11	2020-01-11 08:00:00
209	Voluptatem esse dolores alias harum. Voluptatem dolore dicta.	18	tickle122	3	2020-03-21 20:17:00
210	Et laboriosam aut. Ut natus possimus quia rerum autem culpa et officiis. Accusantium ut et et laudantium aspernatur inventore. Praesentium molestias odio.	17	grumpy19	15	2020-08-16 20:03:00
211	Molestiae ut esse a error necessitatibus doloribus eligendi nesciunt. Ea minus voluptatem quae maxime distinctio.	34	cooljmessy	-3	2020-08-26 18:24:00
212	Consectetur ut tempore perferendis ex qui et. Ad sunt ipsa quisquam iusto consequuntur. Dolore et reiciendis maxime et laborum similique ullam velit. Hic unde quod sunt. Ut ut at repellendus.	25	grumpy19	0	2020-10-04 14:00:00
213	Voluptas accusantium eius earum aliquid. Earum et rerum. Expedita dolores ut autem fuga id accusamus et.	7	weegembump	14	2020-11-21 01:09:00
214	Veniam ad et dignissimos sunt consequuntur adipisci et explicabo voluptatem. Cupiditate repellat quae laboriosam expedita.	9	grumpy19	9	2020-08-05 20:23:00
215	Maxime beatae esse veniam cum nihil. Mollitia at ducimus aliquam. Doloribus sed est. Modi ut neque et velit expedita. Aliquid in assumenda.	19	grumpy19	-3	2020-08-21 09:16:00
216	Similique ea aperiam incidunt numquam ratione dignissimos vero reiciendis voluptatem. Saepe quas soluta ut odit. Laboriosam et aspernatur et rerum mollitia optio. Est nisi consequatur veritatis aut occaecati soluta quae beatae. Eligendi debitis ratione temporibus aperiam.	35	weegembump	-2	2020-11-20 10:12:00
217	Ratione ea amet ut minus repellendus. Sunt ut qui sit commodi et nihil. Minima incidunt quibusdam rem id voluptas. Voluptatem rem omnis voluptatem facilis ipsum libero sunt. Aperiam aut quia.	19	happyamy2016	19	2020-11-12 18:20:00
218	Iste laudantium explicabo nihil officia. Tempora voluptates amet exercitationem sed aut quo. Nostrum totam esse minus distinctio ipsum. Nisi debitis voluptatem rerum nisi qui.	12	weegembump	-3	2020-05-14 09:24:00
219	Cumque facere nemo veritatis at odio iste rerum. Ad non dolorum aspernatur similique aut. Sed eum et distinctio voluptates mollitia cumque odit itaque. Maxime quibusdam omnis labore fugiat ad saepe. Vitae voluptatibus odio. Nemo voluptatem omnis minima nulla aut dolorem.	16	cooljmessy	5	2020-11-12 16:17:00
220	Facilis molestias consequatur aperiam debitis ut. Qui pariatur sit saepe. Perferendis officiis sunt qui.	14	cooljmessy	10	2020-06-11 05:05:00
221	In quos et. Voluptatem ut at voluptatem earum consequuntur. Aliquid et accusantium. Facere non asperiores magnam quia exercitationem atque dignissimos voluptate enim.	9	tickle122	0	2020-09-18 11:08:00
222	Quos nobis distinctio veniam voluptas et ut id quos. Et atque facilis accusamus sapiente tempora vel. Itaque dolor recusandae dignissimos cupiditate labore quibusdam. Dolores eos vero molestiae cupiditate quis. Et fugit ea eos. Odit voluptates dolore sit fugit.	24	jessjelly	5	2020-07-21 15:21:00
223	Qui vero officia et delectus quibusdam. Eos qui inventore voluptas. Sed delectus assumenda velit. Nihil nostrum facilis beatae ut architecto sed.	32	jessjelly	-3	2020-03-08 06:12:00
224	Adipisci ut dignissimos doloribus iure quis vel aut. Neque voluptatem occaecati qui autem officiis. Aperiam incidunt qui assumenda reprehenderit maxime repudiandae voluptas deleniti.	6	jessjelly	18	2020-11-01 04:25:00
225	Laborum ipsa molestiae dolore et ut suscipit. Quia odio quod harum consequatur. Ut illum natus saepe. Odit impedit non ipsa ex. Eveniet sapiente dolores et dolorem est.	17	cooljmessy	12	2020-05-18 00:24:00
226	Sed voluptas ut perspiciatis dolorem ipsam omnis laudantium nemo expedita. Ducimus sequi consequuntur ea vitae necessitatibus quis in. Cum autem aliquid autem non officia nihil molestiae. Quis est voluptatem rerum aliquam libero.	19	tickle122	7	2020-01-04 16:19:00
227	Et hic sint magnam error necessitatibus numquam molestias sequi. Ad id enim qui sit cum dolorem.	17	weegembump	-5	2020-02-17 10:11:00
228	Omnis in magni temporibus dolor necessitatibus est reiciendis. Voluptate suscipit cumque earum. Quaerat fuga voluptates qui ut sed asperiores expedita quasi. Et corporis officia dignissimos maiores fugit deserunt quos qui qui. Explicabo eum sint dolorem quas dolorem doloremque quasi in vel.	23	jessjelly	13	2020-03-08 22:12:00
229	Quod asperiores aut. Rerum ipsa sed quas nobis qui recusandae neque. Est dolorem ipsam.	4	jessjelly	-4	2020-01-21 02:22:00
230	Perferendis perspiciatis voluptates quia adipisci sequi voluptatem doloremque. Dignissimos quo quos. Placeat ipsum iste minima laudantium possimus voluptas in.	27	cooljmessy	14	2020-06-15 22:14:00
231	Consequatur inventore voluptatum hic qui magnam nulla rerum. Beatae sint sed qui iure in est. Quo quibusdam molestias autem animi repellendus at et. Voluptates maxime recusandae. Repudiandae qui nesciunt.	3	happyamy2016	11	2020-08-07 07:05:00
232	Ullam distinctio voluptatem nostrum neque eos quam sunt dolore sed. Quibusdam velit fugit molestiae harum quia. Est deserunt quod est earum ipsum quibusdam dolorem et. Exercitationem culpa consequuntur ut labore possimus quia magni iure.	30	tickle122	1	2020-08-14 07:16:00
233	Optio earum praesentium expedita tempore atque ipsam qui. Optio aliquam consequuntur minus quasi repudiandae omnis tempore tenetur. Ratione non earum est voluptatem sint laboriosam est sint. Assumenda rerum rerum consectetur blanditiis aliquid magnam amet. Alias quod qui et. Voluptatem esse delectus dolor eligendi officia autem.	31	jessjelly	19	2020-02-08 23:12:00
234	Nostrum perspiciatis ratione illum et officia nobis sint et. Dignissimos est sed officia exercitationem. Voluptas voluptate ipsam eius rem sunt est. Accusamus nulla nam est velit. Sapiente rerum est minima eligendi accusamus voluptatem sint optio.	16	weegembump	-3	2020-05-10 18:11:00
235	Beatae aut et est optio ut magni hic. Unde reprehenderit quam reiciendis laborum possimus distinctio veritatis. Nostrum corrupti minus voluptatem veritatis quis aspernatur totam. Atque nisi et labore repellat officia quia pariatur cumque.	24	jessjelly	4	2020-10-17 03:12:00
236	Velit ut aut quia saepe dicta. Omnis hic voluptates doloremque earum voluptatibus pariatur. Natus error commodi impedit ad enim aspernatur. Illo maxime laboriosam ipsam temporibus iusto quae laboriosam dolorem debitis.	30	happyamy2016	16	2020-04-24 18:16:00
237	Deleniti mollitia est assumenda. Totam veniam velit similique nesciunt minima. Autem quibusdam harum voluptate. Et distinctio nemo quia. Beatae libero quaerat amet libero. Corrupti ducimus qui recusandae nobis sunt perspiciatis minima debitis et.	18	grumpy19	2	2020-02-18 05:04:00
238	Aut esse incidunt laborum enim nam voluptas enim deleniti dolores. Neque voluptas voluptatem. Est quia itaque aut est laudantium dolor. Esse vitae eum iste ut mollitia officiis architecto quo autem. Accusamus quod maiores quia incidunt veniam. Rerum adipisci sed quasi labore neque sit rem quam.	5	happyamy2016	4	2020-02-12 22:07:00
239	Alias quos temporibus. Non non facere hic eligendi totam placeat. Distinctio aliquid voluptates aut aperiam aut est inventore error tenetur. Totam et eos vel in quos asperiores vero cumque tempora. Eligendi nihil deleniti iusto laborum velit neque dolore.	6	cooljmessy	20	2020-09-18 01:11:00
240	Temporibus asperiores optio facilis vel. Dolorem itaque esse aut eaque maxime dignissimos quas dolor.	10	jessjelly	8	2020-10-25 20:08:00
241	A aliquam aut voluptas eius. Ducimus omnis molestias eum veniam nostrum laborum. Sunt error praesentium eos.	26	happyamy2016	14	2020-10-08 23:19:00
242	Cumque officia dolorum numquam debitis non. Doloremque fugiat maxime et a et impedit sunt.	9	cooljmessy	2	2020-05-07 03:07:00
243	Natus quaerat non harum quae ut et quia. Id aut reiciendis.	36	grumpy19	-3	2020-03-13 00:13:00
244	Quaerat impedit totam unde sint recusandae aut ratione repudiandae libero. Ut corporis neque.	12	jessjelly	7	2020-02-16 18:21:00
245	Distinctio est distinctio voluptatibus sit. Eos consequatur et tempore eaque cum non libero.	35	grumpy19	1	2020-11-10 14:09:00
246	Nesciunt iusto sed illo explicabo. Molestias dolorem ut dignissimos est sint quia optio praesentium. Dignissimos non itaque. Hic necessitatibus minus modi laudantium iure voluptatibus. Et recusandae harum voluptates expedita deserunt deleniti et. Ratione minima ullam dignissimos aliquam.	25	happyamy2016	20	2020-03-03 18:00:00
247	Dolor rem saepe voluptas impedit et. Corrupti qui quod commodi. Quos blanditiis placeat.	13	grumpy19	-1	2020-05-18 23:05:00
248	Quasi optio delectus eum aliquam numquam provident voluptatem eos numquam. Est iste quibusdam in. Qui architecto culpa tenetur modi.	16	tickle122	15	2020-02-11 19:11:00
249	Corporis adipisci eum dignissimos inventore qui excepturi dolorum. Illum dicta eos ex. Dolor et ex vel et amet alias non eos sunt. Itaque dolor et est consectetur magni. Dignissimos quis ut quia architecto facere enim qui ducimus.	19	happyamy2016	2	2020-07-06 04:13:00
250	Et inventore voluptas sit aliquid nihil et qui maxime sed. Consectetur sit voluptatem corrupti modi harum quia quia. Eius rerum tempora et.	8	tickle122	2	2020-06-26 23:13:00
251	Velit excepturi placeat qui. Sed et sint molestias ut temporibus. Odit nulla rerum vitae ut omnis asperiores molestias odio. Dolorem pariatur molestiae rerum sunt enim assumenda mollitia dicta est.	9	cooljmessy	11	2020-03-14 14:26:00
252	Distinctio laudantium consequatur exercitationem enim magni quod est commodi. Harum consequatur est maiores ipsum accusamus impedit perferendis nobis ipsam. Adipisci excepturi itaque maiores deserunt deserunt occaecati iste. Consectetur non nostrum ex voluptatem in laborum sed ut.	16	grumpy19	-3	2020-08-02 14:16:00
253	Expedita non veritatis dicta blanditiis ratione qui et. Corrupti sapiente accusantium molestiae vel nemo quia ullam. Ut distinctio aut autem fuga ullam et quod vero architecto. Sapiente voluptatem neque.	33	tickle122	3	2020-08-31 02:09:00
254	Cupiditate commodi delectus molestiae exercitationem iure eum error et. Et pariatur dolores assumenda explicabo ut ut rem. Magni molestiae veritatis illum.	33	weegembump	16	2020-03-21 11:05:00
255	Voluptatem in distinctio delectus. Inventore fuga quia nemo sint quisquam reiciendis provident. Porro animi nemo qui.	21	tickle122	-1	2020-02-20 17:18:00
256	Aut fugiat eos distinctio culpa est est maxime. Maiores nihil quos velit minus beatae. Dolore eos tenetur voluptates nemo.	4	cooljmessy	-5	2020-08-10 13:15:00
257	Non consequuntur est et fugit delectus id occaecati aut consequatur. Et totam qui. Vel tempore qui quam iusto adipisci voluptate repudiandae cum. Temporibus et illum.	22	jessjelly	16	2020-10-09 07:17:00
258	Rerum occaecati provident et reprehenderit. Possimus dignissimos quo. Alias ut aut at qui. Ut quasi incidunt porro. Accusantium omnis facilis.	8	jessjelly	-1	2020-11-10 20:16:00
259	Est et repellendus iusto eveniet ut quaerat quos labore. Adipisci ducimus officia.	6	happyamy2016	8	2020-01-31 05:21:00
260	Est nihil saepe voluptatem nobis. Qui eaque sit quis labore ipsa harum aliquid aliquam. Odit consequatur provident omnis dolores quisquam sequi doloremque qui. Eveniet dolores necessitatibus qui consectetur tempora veritatis eligendi. Sequi deserunt atque nesciunt.	16	tickle122	0	2020-08-24 05:17:00
261	Delectus id consequatur voluptatem ad sapiente quia optio dolor. Dolorum est ullam vitae.	22	grumpy19	-5	2020-10-22 19:00:00
262	Quia adipisci veritatis quia voluptate aperiam dolor. Consequatur ipsam doloremque. Et reiciendis et in ut necessitatibus et voluptatem. Et voluptatem ut. Officiis eos exercitationem sequi temporibus debitis nemo sit.	25	grumpy19	14	2020-10-01 11:10:00
263	Occaecati ut officiis temporibus et atque exercitationem quae velit est. Ut maiores illum quo eos et veritatis quisquam sunt voluptatibus. Aut eos vel. Explicabo repellendus culpa occaecati beatae odio magnam ex. Dolor tempore consequatur.	26	jessjelly	12	2020-01-18 08:06:00
264	Modi praesentium consequuntur nobis. Velit tempore consequuntur necessitatibus. Ab cumque nihil quae. Voluptas quis qui. Qui et ut.	19	cooljmessy	17	2020-06-12 05:20:00
265	Velit molestiae reiciendis non accusamus voluptatem eligendi. Non aspernatur accusantium molestias natus reiciendis voluptas. Quibusdam quas id vel ratione.	31	tickle122	1	2020-02-08 00:04:00
266	Vero est explicabo quidem dolorem accusamus similique ea id. Expedita harum sunt a laboriosam et eveniet quis. Deleniti est corporis nulla est est consectetur omnis. Provident dolores doloribus aut quo magni quaerat recusandae voluptatem. Aut dolores in et id alias veniam autem dolores.	9	happyamy2016	0	2020-01-17 16:09:00
267	Rerum culpa facere minus exercitationem unde sit facilis. Ex sint neque et animi quia error sequi quibusdam tempora. Tempora temporibus et illo dolore praesentium. Non perspiciatis sit enim magnam nisi.	21	weegembump	18	2020-07-31 21:17:00
268	Dicta sequi harum est deserunt labore. Architecto dignissimos voluptatibus voluptas ratione. Rerum ut provident non et fugiat. Ea consequuntur placeat reiciendis pariatur illo pariatur laudantium. Rem aut blanditiis provident deserunt numquam quis sit itaque.	16	grumpy19	0	2020-08-23 00:22:00
269	Dolorem facilis excepturi fugiat sint ut fugiat accusamus ex. Voluptatem possimus molestiae corrupti mollitia incidunt aut. Et corrupti sequi et omnis tempore nam sequi sed consectetur. Tenetur sed nulla nam similique numquam illo eius dolorum. Vel maiores et quos architecto sed.	36	jessjelly	5	2020-06-10 15:07:00
270	Repellat id vel. Ut illo ut voluptas expedita enim aperiam et cumque temporibus. Facilis non iste eos quia ut occaecati est. Soluta molestiae qui quo vel qui. Dolor labore fuga ex voluptatem ut sed similique voluptatem aspernatur. Magnam aperiam iure fuga aut nemo eius aut minima.	29	tickle122	-5	2020-03-17 17:26:00
271	Atque odio soluta ducimus placeat laborum voluptatem vel. Non possimus et. Explicabo voluptatem nam quibusdam et corrupti at quia.	17	happyamy2016	0	2020-03-18 11:00:00
272	Distinctio excepturi laboriosam eos aperiam quis amet eum animi minima. Officiis in quia. Est consequatur optio atque nostrum iusto impedit harum quod asperiores.	33	tickle122	17	2020-10-21 06:05:00
273	Ullam ut consequatur. Vel et harum sed quo. Aliquid rem consequatur est. Esse deleniti voluptatem temporibus. Deleniti maiores officiis mollitia omnis exercitationem dicta cum quia. Earum voluptates qui iusto ipsa magni id.	21	weegembump	-5	2020-07-26 16:04:00
274	Quod inventore aut consequuntur rerum aperiam. Laborum nihil ut optio fugit.	35	happyamy2016	-3	2020-08-25 13:26:00
275	Nulla similique ullam excepturi tempore. Voluptatem eum vel voluptatem dolores suscipit similique labore aliquam dolores. Est ex eum at voluptate repellat assumenda. Eos asperiores dolor aperiam.	23	jessjelly	-4	2020-07-22 00:23:00
276	Voluptatem unde dolor id et. Voluptas vitae soluta. Rerum aperiam illum dolores ducimus optio et possimus dolorum quo.	12	weegembump	20	2020-10-20 01:11:00
277	Sed saepe voluptas aliquam similique. Debitis beatae reprehenderit dolore animi voluptatibus enim labore.	4	grumpy19	1	2020-01-15 17:15:00
278	Reiciendis quo animi qui qui. Modi ipsam quas. Illo nihil quidem dolorem sapiente libero eum. Ea et molestiae aut magnam quo et rerum fugit eius. Porro dolorem id quasi. Illo asperiores qui sint.	23	happyamy2016	19	2020-10-03 04:01:00
279	Dolor architecto quaerat rerum dolore qui et sunt assumenda quas. Inventore vero eius odio ipsa repudiandae atque dignissimos. Consequuntur et praesentium qui ut soluta suscipit ut tempora. Ratione blanditiis aut molestiae molestiae ut. Corporis nam consequatur sapiente dicta quae repudiandae id ut sint. Reprehenderit omnis magnam.	24	grumpy19	12	2020-09-01 23:05:00
280	Qui magnam error sint ut laborum dicta labore deserunt non. Sit magnam voluptates. Ipsa enim voluptatem. Reprehenderit quod assumenda. Quidem fugiat consequatur in debitis ea sed quos corrupti. Dignissimos necessitatibus distinctio at doloremque enim molestias qui.	28	tickle122	8	2020-04-20 00:23:00
281	Facilis magni odit doloribus et illo ea dignissimos voluptate. Sit officia repudiandae eius suscipit velit fuga qui esse. Necessitatibus minus omnis minus ab.	7	happyamy2016	12	2020-03-12 07:05:00
282	Libero mollitia adipisci ut. Et ratione totam laboriosam nemo dolorem. Sed debitis aut rerum. Quia laborum voluptas ut voluptas ea dolores eum quidem. Nostrum est laborum praesentium ut.	35	happyamy2016	2	2020-07-31 22:23:00
283	Ratione tempore et natus incidunt quibusdam minima. Voluptatem quae quae eos reiciendis et quia saepe enim et. Esse sapiente totam ullam nam. Provident repellat velit enim excepturi asperiores qui nostrum similique dicta. Labore repellendus quae ut voluptas voluptatibus. Voluptatibus voluptatum sed nemo harum ad harum repellendus ad.	32	happyamy2016	-4	2020-01-06 15:17:00
284	Ipsa voluptate eveniet dolore. Beatae nesciunt cupiditate. Consequatur ex corrupti facere est facilis eaque. Aliquam voluptas sed qui id. Voluptate accusamus veniam cumque nam sed.	17	weegembump	5	2020-07-21 14:17:00
285	Tenetur impedit pariatur dolorum enim voluptate mollitia sunt eum exercitationem. Aut perspiciatis quas impedit. Quam et error.	10	jessjelly	3	2020-01-24 15:02:00
286	Ut accusamus enim vel voluptate quae temporibus labore neque a. Reprehenderit iste est eos velit fugit vel quod velit.	1	cooljmessy	19	2020-04-26 02:14:00
287	Voluptas sed qui nesciunt a non. Amet provident assumenda aut. Sunt et in. Eum velit nemo exercitationem veniam qui corporis qui blanditiis ut. Ullam architecto dolor iusto ratione. Officia quibusdam vero ut.	18	tickle122	8	2020-05-31 11:13:00
288	Maiores labore error debitis earum aliquid. Vel omnis a qui sint voluptatem aut. Sint ullam error velit.	26	cooljmessy	17	2020-05-23 19:06:00
289	Et quis in ut rerum minus. Quo cumque aut inventore ipsum amet velit tenetur illo. Unde et quis rem aut asperiores qui quaerat esse. Corporis aut velit sit doloribus est quia dolores.	19	weegembump	2	2020-11-13 13:12:00
290	Sunt omnis pariatur dignissimos quibusdam dolore ut non velit autem. Omnis voluptatibus qui aut sunt ut unde. Ut eaque excepturi numquam quis occaecati. Repellat esse voluptas velit eveniet ut pariatur natus. Velit voluptas nostrum quia dignissimos quisquam incidunt.	28	jessjelly	-3	2020-09-01 19:00:00
291	Reiciendis molestias ut possimus enim voluptatem cumque nam possimus rem. Quod sequi porro et velit dolor ut cupiditate perferendis. Cum omnis omnis sit quia maiores quos qui. Consequuntur error distinctio dolores.	22	jessjelly	0	2020-06-22 01:12:00
292	Nihil est deleniti voluptas et soluta. Ea iure error aperiam facere reprehenderit autem corrupti. Reprehenderit labore accusamus esse magni voluptatibus esse minus. Repellat veritatis illum natus. Aut aut dolor omnis est magni sint. Ipsum architecto exercitationem numquam consequatur sit.	13	cooljmessy	0	2020-09-03 17:09:00
293	Quidem impedit molestiae culpa ut omnis id aliquid. Blanditiis eius commodi tempora. Est facere veniam voluptate voluptas et. Saepe porro similique. In autem unde sint sed voluptas tempore.	21	cooljmessy	9	2020-10-25 00:00:00
294	Fugit tenetur et. Consequatur aliquam molestiae voluptas iure perspiciatis et possimus in maiores. Sint et laudantium blanditiis. Illo et sapiente consequatur ducimus est.	22	weegembump	1	2020-04-21 04:23:00
295	Ratione enim est maiores modi eveniet vero provident culpa. Labore facere fugit voluptatem suscipit culpa alias fuga ut. Sapiente porro et. Sunt incidunt aut et enim quia accusamus delectus porro temporibus.	23	cooljmessy	7	2020-05-30 23:11:00
296	Ab impedit reprehenderit. Eligendi a asperiores. Vel ut modi inventore molestiae cum delectus et. Reiciendis excepturi eveniet.	30	happyamy2016	19	2020-02-20 02:16:00
297	Harum veritatis neque nisi. Quos minima quasi enim praesentium ea voluptatum quae. Voluptatum quos repudiandae sed ipsum dolor hic quo nemo.	8	cooljmessy	10	2020-06-01 20:03:00
298	Et non quia sunt dolorem vero sint optio perspiciatis. Assumenda dolor est aut cum amet assumenda autem. Iusto earum vero animi nihil error non placeat.	11	tickle122	13	2020-03-14 14:02:00
299	Sit vitae ut labore doloribus consequatur quam. Perferendis odit provident officia debitis laboriosam aut odio quo. Iusto aperiam dolorum ex commodi animi dignissimos. Qui sint cupiditate ut labore temporibus excepturi.	27	grumpy19	14	2020-05-25 03:03:00
300	Quia nemo est. Maiores animi architecto ad nihil sapiente. Odio in maxime nam assumenda tempora et nisi. Impedit quidem cum neque libero sequi et et impedit. Dignissimos ut molestiae laborum rerum error distinctio quasi hic consectetur. Odio vel qui necessitatibus perspiciatis ipsum quod excepturi saepe.	22	jessjelly	-1	2020-02-01 03:22:00
301	wow this is really interesting	34	cooljmessy	0	2023-12-12 13:46:13.03672
302	wow this is really interesting	34	cooljmessy	0	2023-12-12 13:46:16.784229
303	wow this is really interesting	34	cooljmessy	0	2023-12-12 13:47:27.54322
304	wow this is really interesting	34	cooljmessy	0	2023-12-12 13:47:49.675516
305	wow this is really interesting	34	cooljmessy	0	2023-12-12 13:48:13.390006
306	Not sure if I agree but I appreciate the writer's thoughts, thanks	12	happyamy2016	0	2023-12-12 16:29:41.321652
307	Tickle back at it again! this article was not for me!	12	tickle122	0	2023-12-12 16:38:39.322812
308	I love umami!	34	weegembump	0	2023-12-12 16:40:05.332051
309	But cant cook it that well!	34	weegembump	0	2023-12-12 16:41:01.232141
312	Thanks for reading everyone!	34	grumpy19	0	2023-12-12 19:01:04.803315
321	jelly here!	34	jessjelly	0	2023-12-12 19:17:42.51535
323	umami? whomami!	34	jessjelly	0	2023-12-12 20:10:18.633794
353	hello!	34	jessjelly	0	2023-12-13 16:49:10.266133
365	hello	34	grumpy19	0	2023-12-13 19:07:38.929956
367	Thanks for looking guys!	34	jessjelly	0	2023-12-14 21:22:20.042775
368	Yanited!!	21	jessjelly	0	2023-12-14 21:22:38.732299
369	As a Grimsby man I find it mad but exciting!!	33	cooljmessy	0	2023-12-14 21:23:46.274878
370	I like prawns but this is pawn 	33	grumpy19	0	2023-12-15 10:11:05.874309
381	Ohhhh interesting 	12	happyamy2016	0	2023-12-16 16:34:03.446004
382	Hello 	34	happyamy2016	0	2023-12-16 17:46:07.961557
384	Great news	21	tickle122	0	2023-12-24 11:31:08.258871
385	Hello	1	grumpy19	0	2023-12-25 17:44:24.633877
386	Wow so cool	1	happyamy2016	0	2023-12-28 14:19:07.803603
388	Fjdjsj	21	grumpy19	0	2023-12-29 11:39:04.571535
391	new comment	34	cooljmessy	0	2024-01-22 16:04:47.269929
393	great article	34	grumpy19	0	2024-02-12 17:35:28.332653
401	This is 100	34	tickle122	0	2024-03-08 10:22:52.501525
402	Really enjoying the articles!	34	grumpy19	0	2024-03-08 10:26:24.790328
403	Hey this is a really cool article	34	tickle122	0	2024-03-08 14:38:47.148044
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: ikvoruaa
--

COPY public.topics (slug, description) FROM stdin;
coding	Code is love, code is life
football	FOOTIE!
cooking	Hey good looking, what you got cooking?
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ikvoruaa
--

COPY public.users (username, name, avatar_url) FROM stdin;
tickle122	Tom Tickle	https://vignette.wikia.nocookie.net/mrmen/images/d/d6/Mr-Tickle-9a.png/revision/latest?cb=20180127221953
grumpy19	Paul Grump	https://vignette.wikia.nocookie.net/mrmen/images/7/78/Mr-Grumpy-3A.PNG/revision/latest?cb=20170707233013
happyamy2016	Amy Happy	https://vignette1.wikia.nocookie.net/mrmen/images/7/7f/Mr_Happy.jpg/revision/latest?cb=20140102171729
cooljmessy	Peter Messy	https://vignette.wikia.nocookie.net/mrmen/images/1/1a/MR_MESSY_4A.jpg/revision/latest/scale-to-width-down/250?cb=20170730171002
weegembump	Gemma Bump	https://vignette.wikia.nocookie.net/mrmen/images/7/7e/MrMen-Bump.png/revision/latest?cb=20180123225553
jessjelly	Jess Jelly	https://vignette.wikia.nocookie.net/mrmen/images/4/4f/MR_JELLY_4A.jpg/revision/latest?cb=20180104121141
\.


--
-- Name: articles_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ikvoruaa
--

SELECT pg_catalog.setval('public.articles_article_id_seq', 37, true);


--
-- Name: comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ikvoruaa
--

SELECT pg_catalog.setval('public.comments_comment_id_seq', 403, true);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (article_id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (comment_id);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (slug);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: articles articles_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_author_fkey FOREIGN KEY (author) REFERENCES public.users(username);


--
-- Name: articles articles_topic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_topic_fkey FOREIGN KEY (topic) REFERENCES public.topics(slug);


--
-- Name: comments comments_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.articles(article_id);


--
-- Name: comments comments_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ikvoruaa
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_author_fkey FOREIGN KEY (author) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--


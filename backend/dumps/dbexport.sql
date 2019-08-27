--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-1.pgdg90+1)

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: movie; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    title character varying NOT NULL,
    year integer NOT NULL,
    description character varying NOT NULL,
    director character varying NOT NULL,
    imdb_rating double precision NOT NULL,
    run_time integer NOT NULL,
    thumbnail character varying NOT NULL
);


ALTER TABLE public.movie OWNER TO admin;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_id_seq OWNER TO admin;

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movie (id, title, year, description, director, imdb_rating, run_time, thumbnail) FROM stdin;
1	The Godfather	1972	\n    The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.	Francis Ford Coppola	9.19999999999999929	175	https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR3,0,140,209_AL_.jpg
2	Vertigo	1958	\n    A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.	Alfred Hitchcock	8.30000000000000071	128	https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
3	Psycho	1960	\n    A Phoenix secretary embezzles forty thousand dollars from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.	Alfred Hitchcock	8.5	109	https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR0,0,140,209_AL_.jpg
4	The Godfather: Part II	1974	\n    The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.	Francis Ford Coppola	9	202	https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR3,0,140,209_AL_.jpg
7	On the Waterfront	1954	\n    An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.	Elia Kazan	8.09999999999999964	108	https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
6	The Wizard of Oz	1939	\n    Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.	Victor Fleming	8	102	https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_UY209_CR0,0,140,209_AL_.jpg
5	Schindler's List	1993	\n    In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.	Steven Spielberg	8.90000000000000036	195	https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg
8	Casablanca	1942	\n    A cynical American expatriate struggles to decide whether or not he should help his former lover and her fugitive husband escape French Morocco.	Michael Curtiz	8.5	102	https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX140_CR0,0,140,209_AL_.jpg
9	The Shawshank Redemption	1994	\n    Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.	Frank Darabont	9.30000000000000071	142	https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY209_CR0,0,140,209_AL_.jpg
10	Sunset Blvd.	1950	\n    A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.	Billy Wilder	8.40000000000000036	110	https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_UX140_CR0,0,140,209_AL_.jpg
12	Forrest Gump	1994	\n    The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.	Robert Zemeckis	8.80000000000000071	142	https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR2,0,140,209_AL_.jpg
11	Raging Bull	1980	\n    The life of boxer Jake LaMotta, whose violence and temper that lead him to the top in the ring destroyed his life outside of it.	Martin Scorsese	8.19999999999999929	129	https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UY209_CR1,0,140,209_AL_.jpg
13	Gone with the Wind	1939	\n    A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.	Victor Fleming	8.09999999999999964	238	https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
14	12 Angry Men	1957	\n    A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.	Sidney Lumet	8.90000000000000036	96	https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
15	The Sound of Music	1965	\n    A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.	Robert Wise	8	172	https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR3,0,140,209_AL_.jpg
16	West Side Story	1961	\n    Two youngsters from rival New York City gangs fall in love, but tensions between their respective friends build toward tragedy.	Jerome Robbins	7.5	153	https://m.media-amazon.com/images/M/MV5BMTM0NDAxOTI5MF5BMl5BanBnXkFtZTcwNjI4Mjg3NA@@._V1_UX140_CR0,0,140,209_AL_.jpg
17	2001: A Space Odyssey	1968	\n    After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.	Stanley Kubrick	8.30000000000000071	149	https://m.media-amazon.com/images/M/MV5BMmNlYzRiNDctZWNhMi00MzI4LThkZTctMTUzMmZkMmFmNThmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR0,0,140,209_AL_.jpg
18	Star Wars: Episode IV - A New Hope	1977	\n    Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.	George Lucas	8.59999999999999964	121	https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
20	E.T. the Extra-Terrestrial	1982	\n    A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.	Steven Spielberg	7.79999999999999982	115	https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg
21	The Silence of the Lambs	1991	\n    A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.	Jonathan Demme	8.59999999999999964	118	https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR1,0,140,209_AL_.jpg
23	Singin' in the Rain	1952	\n    A silent film production company and cast make a difficult transition to sound.	Stanley Donen	8.30000000000000071	103	https://m.media-amazon.com/images/M/MV5BMWUyNjQ5MTAtNDJhYS00MWQ0LTk2ZTAtZmE4MWNlMjMwMzg3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg
22	The Bridge on the River Kwai	1957	\n    After settling his differences with a Japanese P.O.W. camp commander, a British colonel co-operates to oversee his men's construction of a railway bridge for their captors, while oblivious to a plan by the Allies to destroy it.	David Lean	8.09999999999999964	161	https://m.media-amazon.com/images/M/MV5BMGVhNjhjODktODgxYS00MDdhLTlkZjktYTkyNzQxMTU0ZDYxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
33	Gladiator	2000	\n    A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.	Ridley Scott	8.5	155	https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR0,0,140,209_AL_.jpg
37	Saving Private Ryan	1998	\n    Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.	Steven Spielberg	8.59999999999999964	169	https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY209_CR1,0,140,209_AL_.jpg
44	The Best Years of Our Lives	1946	\n    Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.	William Wyler	8	170	https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg
54	The Good, the Bad and the Ugly	1966	\n    A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.	Sergio Leone	8.80000000000000071	148	https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_UX140_CR0,0,140,209_AL_.jpg
62	The Pianist	2002	\n    A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.	Roman Polanski	8.5	150	https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR5,0,140,209_AL_.jpg
69	It Happened One Night	1934	\n    A spoiled heiress running away from her family is helped by a man who is actually a reporter in need of a story.	Frank Capra	8.09999999999999964	105	https://m.media-amazon.com/images/M/MV5BZmViYmM5OTYtNGQ4Ny00YjQyLThiNjEtYTE4MGZhZTNmZjcyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg
78	The Grapes of Wrath	1940	\n    A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.	John Ford	8	129	https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY209_CR0,0,140,209_AL_.jpg
86	Good Will Hunting	1997	\n    Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.	Gus Van Sant	8.30000000000000071	126	https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg
95	Taxi Driver	1976	\n    A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.	Martin Scorsese	8.30000000000000071	114	https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
24	Chinatown	1974	\n    A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.	Roman Polanski	8.19999999999999929	130	https://m.media-amazon.com/images/M/MV5BOGMwYmY5ZmEtMzY1Yi00OWJiLTk1Y2MtMzI2MjBhYmZkNTQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
25	It's a Wonderful Life	1946	\n    An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.	Frank Capra	8.59999999999999964	130	https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_UY209_CR2,0,140,209_AL_.jpg
29	The Lord of the Rings: The Return of the King	2003	\n    Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.	Peter Jackson	8.90000000000000036	201	https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR0,0,140,209_AL_.jpg
32	Amadeus	1984	\n    The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart's talent and claimed to have murdered him.	Milos Forman	8.30000000000000071	160	https://m.media-amazon.com/images/M/MV5BNWJlNzUzNGMtYTAwMS00ZjI2LWFmNWQtODcxNWUxODA5YmU1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX140_CR0,0,140,209_AL_.jpg
36	From Here to Eternity	1953	\n    In Hawaii in 1941, a private is cruelly punished for not boxing on his unit's team, while his captain's wife and second-in-command are falling in love.	Fred Zinnemann	7.70000000000000018	118	https://m.media-amazon.com/images/M/MV5BM2U3YzkxNGMtYWE0YS00ODk0LTk1ZGEtNjk3ZTE0MTk4MzJjXkEyXkFqcGdeQXVyNDk0MDg4NDk@._V1_UY209_CR0,0,140,209_AL_.jpg
39	Rocky	1976	\n    A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.	John G. Avildsen	8.09999999999999964	120	https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_UX140_CR0,0,140,209_AL_.jpg
43	To Kill a Mockingbird	1962	\n    Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.	Robert Mulligan	8.30000000000000071	129	https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
48	Patton	1970	\n    The World War II phase of the career of the controversial American general, George S. Patton.	Franklin J. Schaffner	8	172	https://m.media-amazon.com/images/M/MV5BMmNhZmJhMmYtNjlkMC00MjhjLTk1NzMtMTNlMzYzNjZlMjNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg
53	The Treasure of the Sierra Madre	1948	\n    Fred Dobbs and Bob Curtin, two Americans searching for work in Mexico, convince an old prospector to help them mine for gold in the Sierra Madre Mountains.	John Huston	8.19999999999999929	126	https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX140_CR0,0,140,209_AL_.jpg
59	The Exorcist	1973	\n    When a teenage girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.	William Friedkin	8	122	https://m.media-amazon.com/images/M/MV5BYjhmMGMxZDYtMTkyNy00YWVmLTgyYmUtYTU3ZjcwNTBjN2I1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
60	Dances with Wolves	1990	\n    Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.	Kevin Costner	8	181	https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_UX140_CR0,0,140,209_AL_.jpg
67	City Lights	1931	\n    With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.	Charles Chaplin	8.5	87	https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
76	Rain Man	1988	\n    Selfish yuppie Charlie Babbitt's father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.	Barry Levinson	8	133	https://m.media-amazon.com/images/M/MV5BMzVjNzI4NzYtMjE4NS00M2IzLWFkOWMtOTYwMWUzN2ZlNGVjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg
77	Shane	1953	\n    A weary gunfighter attempts to settle down with a homestead family, but a smoldering settler/rancher conflict forces him to act.	George Stevens	7.59999999999999964	118	https://m.media-amazon.com/images/M/MV5BYmZjM2RkZTAtMGIyMi00MTRlLTljY2ItOTRjOWQyODFiNjE3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
84	Pulp Fiction	1994	\n    The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.	Quentin Tarantino	8.90000000000000036	154	https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR2,0,140,209_AL_.jpg
88	Stagecoach	1939	\n    A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.	John Ford	7.90000000000000036	96	https://m.media-amazon.com/images/M/MV5BOGQ4NDUyNWQtZTEyOC00OTMzLWFhYjAtNDNmYmQ2MWQyMTRmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg
94	Wuthering Heights	1939	\n    A servant in the house of Wuthering Heights tells a traveller the unfortunate tale of lovers Cathy and Heathcliff.	William Wyler	7.59999999999999964	104	https://m.media-amazon.com/images/M/MV5BMDAxZDkzNTktYzQyMi00YmRlLWFmYWQtY2Q4ZTQyMGFlMzNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
100	Rebel Without a Cause	1955	\n    A rebellious young man with a troubled past comes to a new town, finding friends and enemies.	Nicholas Ray	7.70000000000000018	111	https://m.media-amazon.com/images/M/MV5BMjMwNWIwYzAtMWVhZi00YzQ2LTlmNGYtOTg3NDdkNTRjOWI2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
26	Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb	1964	\n    An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.	Stanley Kubrick	8.40000000000000036	95	https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
35	Titanic	1997	\n    A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.	James Cameron	7.79999999999999982	194	https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR0,0,140,209_AL_.jpg
40	Raiders of the Lost Ark	1981	\n    In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler's Nazis can obtain its awesome powers.	Steven Spielberg	8.40000000000000036	115	https://m.media-amazon.com/images/M/MV5BMjA0ODEzMTc1Nl5BMl5BanBnXkFtZTcwODM2MjAxNA@@._V1_UX140_CR0,0,140,209_AL_.jpg
50	Doctor Zhivago	1965	\n    The life of a Russian physician and poet who, although married to another, falls in love with a political activist's wife and experiences hardship during World War I and then the October Revolution.	David Lean	8	193	https://m.media-amazon.com/images/M/MV5BNzdmZTk4MTktZmExNi00OWEwLTgxZDctNTE4NWMwNjc1Nzg2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
56	High Noon	1952	\n    A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.	Fred Zinnemann	8	85	https://m.media-amazon.com/images/M/MV5BOWIzZGUxZmItOThkMS00Y2QxLTg0MTYtMDdhMjRlNTNlYTI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
64	All Quiet on the Western Front	1930	\n    A young soldier faces profound disillusionment in the soul-destroying horror of World War I.	Lewis Milestone	8	136	https://m.media-amazon.com/images/M/MV5BMzg2MWQ4MDEtOGZlNi00MTg0LWIwMjQtYWY5NTQwYmUzMWNmXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_UX140_CR0,0,140,209_AL_.jpg
74	Fargo	1996	\n    Jerry Lundegaard's inept crime falls apart due to his and his henchmen's bungling and the persistent police work of the quite pregnant Marge Gunderson.	Joel Coen	8.09999999999999964	98	https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR1,0,140,209_AL_.jpg
82	Network	1976	\n    A television network cynically exploits a deranged former anchor's ravings and revelations about the news media for its own profit.	Sidney Lumet	8.09999999999999964	121	https://m.media-amazon.com/images/M/MV5BNmFiOWY3ZTktOTYwNy00ZTUzLTk0ODQtNzIxMzQ0ZDFjMTgyXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UY209_CR0,0,140,209_AL_.jpg
92	Double Indemnity	1944	\n    An insurance representative lets himself be talked into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.	Billy Wilder	8.30000000000000071	107	https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX140_CR0,0,140,209_AL_.jpg
99	Yankee Doodle Dandy	1942	\n    The life of the renowned musical composer, playwright, actor, dancer, and singer George M. Cohan.	Michael Curtiz	7.70000000000000018	126	https://m.media-amazon.com/images/M/MV5BNDQ2MWJjNjUtYmVlNS00YjUzLWFkMDEtYzE2MjkxOTljMmI1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
27	Some Like It Hot	1959	\n    When two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.	Billy Wilder	8.19999999999999929	121	https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg
38	Unforgiven	1992	\n    Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner and a young man.	Clint Eastwood	8.19999999999999929	130	https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg
52	The Searchers	1956	\n    An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.	John Ford	7.90000000000000036	119	https://m.media-amazon.com/images/M/MV5BYWQ3YWJiMDEtMDBhNS00YjY1LTkzNmEtY2U4Njg4MjQ3YWE3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
63	Goodfellas	1990	\n    The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.	Martin Scorsese	8.69999999999999929	146	https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
70	A Place in the Sun	1951	\n    A poor boy gets a job working for his rich uncle and ends up falling in love with two women.	George Stevens	7.79999999999999982	122	https://m.media-amazon.com/images/M/MV5BMmNjMjE2ZDMtODQzYS00ZDc2LTk0ODgtNjI1NTNhZWI5MmE0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX140_CR0,0,140,209_AL_.jpg
79	The Green Mile	1999	\n    The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.	Frank Darabont	8.59999999999999964	189	https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UY209_CR0,0,140,209_AL_.jpg
87	The African Queen	1951	\n    In Africa during World War I, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.	John Huston	7.79999999999999982	105	https://m.media-amazon.com/images/M/MV5BOTg0NjY1NTEyMF5BMl5BanBnXkFtZTgwNjUwMTY3MjE@._V1_UX140_CR0,0,140,209_AL_.jpg
96	Rear Window	1954	\n    A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.	Alfred Hitchcock	8.5	112	https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR1,0,140,209_AL_.jpg
28	Ben-Hur	1959	\n    When a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.	William Wyler	8.09999999999999964	212	https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
42	The Philadelphia Story	1940	\n    When a rich woman's ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.	George Cukor	7.90000000000000036	112	https://m.media-amazon.com/images/M/MV5BYjQ4ZDA4NGMtMTkwYi00NThiLThhZDUtZTEzNTAxOWYyY2E4XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_UY209_CR1,0,140,209_AL_.jpg
46	A Clockwork Orange	1971	\n    In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn't go as planned.	Stanley Kubrick	8.30000000000000071	136	https://m.media-amazon.com/images/M/MV5BMTY3MjM1Mzc4N15BMl5BanBnXkFtZTgwODM0NzAxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg
57	Platoon	1986	\n    A young soldier in Vietnam faces a moral crisis when confronted with the horrors of war and the duality of man.	Oliver Stone	8.09999999999999964	120	https://m.media-amazon.com/images/M/MV5BM2Y1NTQyNWYtNDViNy00ZWRhLTk3MTMtOTI3ZGQ5MDFiNWM4XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
66	The Deer Hunter	1978	\n    An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.	Michael Cimino	8.09999999999999964	183	https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR1,0,140,209_AL_.jpg
73	Annie Hall	1977	\n    Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.	Woody Allen	8	93	https://m.media-amazon.com/images/M/MV5BZDg1OGQ4YzgtM2Y2NS00NjA3LWFjYTctMDRlMDI3NWE1OTUyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX140_CR0,0,140,209_AL_.jpg
81	Nashville	1975	\n    Over the course of a few hectic days, numerous interrelated people prepare for a political convention as secrets and lies are surfaced and revealed.	Robert Altman	7.70000000000000018	160	https://m.media-amazon.com/images/M/MV5BMDY0MzE3YWQtZTAzMS00ZmRlLWE3NzYtMjk0NDlkMmE4N2U2XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX140_CR0,0,140,209_AL_.jpg
91	The Great Dictator	1940	\n    Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel's regime.	Charles Chaplin	8.5	125	https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR0,0,140,209_AL_.jpg
98	North by Northwest	1959	\n    A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.	Alfred Hitchcock	8.30000000000000071	136	https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
31	Apocalypse Now	1979	\n    A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.	Francis Ford Coppola	8.40000000000000036	147	https://m.media-amazon.com/images/M/MV5BZTNkZmU0ZWQtZjQzMy00YTNmLWFmN2MtZGNkMmU1OThmMGYwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
41	A Streetcar Named Desire	1951	\n    Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.	Elia Kazan	8	122	https://m.media-amazon.com/images/M/MV5BNzk2M2Y3MzYtNGMzMi00Y2FjLTkwODQtNmExYWU3ZWY3NzExXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg
47	Jaws	1975	\n    When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.	Steven Spielberg	8	124	https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX140_CR0,0,140,209_AL_.jpg
58	Braveheart	1995	\n    When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt against King Edward I of England.	Mel Gibson	8.30000000000000071	178	https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR1,0,140,209_AL_.jpg
65	Bonnie and Clyde	1967	\n    Bonnie Parker, a bored waitress falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.	Arthur Penn	7.79999999999999982	111	https://m.media-amazon.com/images/M/MV5BOTViZmMwOGEtYzc4Yy00ZGQ1LWFkZDQtMDljNGZlMjAxMjhiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX140_CR0,0,140,209_AL_.jpg
75	Giant	1956	\n    Sprawling epic covering the life of a Texas cattle rancher and his family and associates.	George Stevens	7.70000000000000018	201	https://m.media-amazon.com/images/M/MV5BYWQ3ZmZhMmQtODQyMS00Y2Q0LThlOTAtM2NiMDMyNDdlYmQ0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
83	The Graduate	1967	\n    A disillusioned college graduate finds himself torn between his older lover and her daughter.	Mike Nichols	8	106	https://m.media-amazon.com/images/M/MV5BNjQ4MzUzYjYtYzk1My00M2Y2LWExMDEtY2E1NTlhMmQ0NGQ3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR4,0,140,209_AL_.jpg
93	The Maltese Falcon	1941	\n    A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.	John Huston	8	100	https://m.media-amazon.com/images/M/MV5BZjIwNGM1ZTUtOThjYS00NDdiLTk2ZDYtNGY5YjJkNzliM2JjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX140_CR0,0,140,209_AL_.jpg
30	Lawrence of Arabia	1962	\n    The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.	David Lean	8.30000000000000071	216	https://m.media-amazon.com/images/M/MV5BYWY5ZjhjNGYtZmI2Ny00ODM0LWFkNzgtZmI1YzA2N2MxMzA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY209_CR2,0,140,209_AL_.jpg
45	An American in Paris	1951	\n    Three friends struggle to find work in Paris. Things become more complicated when two of them fall in love with the same woman.	Vincente Minnelli	7.20000000000000018	114	https://m.media-amazon.com/images/M/MV5BMzFkNGM0YTUtZjY5Ny00NzBkLWE1NTAtYzUxNjUyZmJlODMwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
55	The Apartment	1960	\n    A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.	Billy Wilder	8.30000000000000071	125	https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX140_CR0,0,140,209_AL_.jpg
72	Midnight Cowboy	1969	\n    A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.	John Schlesinger	7.79999999999999982	113	https://m.media-amazon.com/images/M/MV5BNTgwZmIzMmYtZjE3Yy00NzgzLTgxNmUtNjlmZDlkMzlhOTJkXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX140_CR0,0,140,209_AL_.jpg
89	Terms of Endearment	1983	\n    Follows hard-to-please Aurora looking for love, and her daughter's family problems.	James L. Brooks	7.40000000000000036	132	https://m.media-amazon.com/images/M/MV5BMTk0ODM4NDk0MF5BMl5BanBnXkFtZTgwMTEzMDUxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg
97	The Third Man	1949	\n    Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.	Carol Reed	8.09999999999999964	104	https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
34	Citizen Kane	1941	\n    Following the death of publishing tycoon, Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; 'Rosebud'.	Orson Welles	8.30000000000000071	119	https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg
49	My Fair Lady	1964	\n    A snobbish phonetics professor agrees to a wager that he can make a flower girl presentable in high society.	George Cukor	7.79999999999999982	170	https://m.media-amazon.com/images/M/MV5BNGM0ZTU3NmItZmRmMy00YWNjLWEzMWItYzg3MzcwZmM5NjdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY209_CR6,0,140,209_AL_.jpg
61	Jurassic Park	1993	\n    During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.	Steven Spielberg	8.09999999999999964	127	https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_UX140_CR0,0,140,209_AL_.jpg
71	Mr. Smith Goes to Washington	1939	\n    A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn't back down.	Frank Capra	8.09999999999999964	129	https://m.media-amazon.com/images/M/MV5BZTYwYjYxYzgtMDE1Ni00NzU4LWJlMTEtODQ5YmJmMGJhZjI5L2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX140_CR0,0,140,209_AL_.jpg
80	Close Encounters of the Third Kind	1977	\n    Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.	Steven Spielberg	7.59999999999999964	138	https://m.media-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg
90	Mutiny on the Bounty	1935	\n    A tyrannical ship captain decides to exact revenge on his abused crew after they form a mutiny against him, but the sailor he targets had no hand in it.	Frank Lloyd	7.70000000000000018	132	https://m.media-amazon.com/images/M/MV5BNzJkM2ZiZjktYjA0MS00OGQxLWI5NWEtNzQ5M2U4MjZhMzc0XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX140_CR0,0,140,209_AL_.jpg
19	One Flew Over the Cuckoo's Nest	1975	\n    A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.	Milos Forman	8.69999999999999929	133	https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR0,0,140,209_AL_.jpg
51	Butch Cassidy and the Sundance Kid	1969	\n    Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.	George Roy Hill	8	110	https://m.media-amazon.com/images/M/MV5BMTkyMTM2NDk5Nl5BMl5BanBnXkFtZTgwNzY1NzEyMDE@._V1_UY209_CR0,0,140,209_AL_.jpg
68	The French Connection	1971	\n    A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.	William Friedkin	7.70000000000000018	104	https://m.media-amazon.com/images/M/MV5BOTZhY2E3NmItMGIwNi00OTA2LThkYmEtODFiZTM0NGI0ZWU5XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UY209_CR4,0,140,209_AL_.jpg
85	American Graffiti	1973	\n    A couple of high school grads spend one final night cruising the strip with their buddies before they go off to college.	George Lucas	7.40000000000000036	110	https://m.media-amazon.com/images/M/MV5BMjI5NjM5MjIyNF5BMl5BanBnXkFtZTgwNjg2MTUxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg
\.


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movie_id_seq', 100, true);


--
-- Name: movie PK_cb3bb4d61cf764dc035cbedd422; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT "PK_cb3bb4d61cf764dc035cbedd422" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


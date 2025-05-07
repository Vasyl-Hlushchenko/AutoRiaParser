--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: car_phones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car_phones (
    id integer NOT NULL,
    car_id integer NOT NULL,
    phone_number character varying NOT NULL
);


ALTER TABLE public.car_phones OWNER TO postgres;

--
-- Name: car_phones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.car_phones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.car_phones_id_seq OWNER TO postgres;

--
-- Name: car_phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.car_phones_id_seq OWNED BY public.car_phones.id;


--
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    url character varying NOT NULL,
    title character varying NOT NULL,
    price_usd integer,
    odometer double precision,
    username character varying,
    image_url character varying,
    image_count integer,
    car_number character varying,
    car_vin character varying,
    datetime_found timestamp without time zone NOT NULL
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cars_id_seq OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: car_phones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_phones ALTER COLUMN id SET DEFAULT nextval('public.car_phones_id_seq'::regclass);


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Data for Name: car_phones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car_phones (id, car_id, phone_number) FROM stdin;
1	1	+30936076921
2	2	+30679119939
3	3	+30966966660
4	4	+30684020000
5	4	+30509240000
6	5	+30978394997
7	6	+30632156773
8	7	+30984858519
9	8	+30975730955
10	9	+30508544290
11	10	+30676781012
12	11	+30987002628
13	12	+30937770222
14	12	+30980800100
15	13	+30977935515
16	14	+30966465236
17	15	+30993854275
18	16	+30976329952
19	17	+30970102233
20	17	+30956561955
21	18	+30977770723
22	19	+30662430663
23	20	+30979443954
24	21	+30684791827
25	22	+30660120498
26	23	+30963633712
27	24	+30961562297
28	25	+30506877136
29	26	+30997262013
30	27	+30951307843
31	28	+30685906248
32	29	+30504003900
33	30	+30673503458
34	31	+30987081919
35	31	+30678160505
36	32	+30955050006
37	32	+30955833367
38	32	+30735050006
39	33	+30979332275
40	34	+30679509607
41	35	+30966235286
42	36	+30669089842
43	37	+30967777277
44	38	+30682245835
45	39	+30506026605
46	39	+30991122777
47	40	+30682245835
48	41	+30676115119
49	42	+30504465456
50	43	+30682020919
51	44	+30682245835
52	45	+30960071045
53	46	+30636680703
54	46	+30636680710
55	46	+30682989317
56	46	+30636680702
57	46	+30636680698
58	47	+30933777333
59	47	+30968027980
60	48	+30933777333
61	48	+30968027980
62	49	+30688415253
63	50	+30999057844
64	50	+30676125194
65	51	+30503335430
66	52	+30638192928
67	53	+30689513855
68	53	+30635232270
69	53	+30635232843
70	53	+30634100797
71	54	+30673530959
72	55	+30673530959
73	56	+30673530959
74	57	+30987081919
75	57	+30678160505
76	58	+30982002040
77	59	+30672106570
78	59	+30672038479
79	59	+30672125903
80	60	+30672106570
81	60	+30672038479
82	60	+30672125903
83	61	+30967874048
84	62	+30978370453
85	63	+30664457787
86	64	+30664457787
87	65	+30664457787
88	66	+30987081919
89	66	+30678160505
90	67	+30672106570
91	67	+30672038479
92	67	+30672125903
93	68	+30933031866
94	69	+30933031866
95	70	+30679509607
96	71	+30970771111
97	71	+30671016666
98	71	+30986901487
99	71	+30731016666
100	71	+30951041111
101	72	+30970771111
102	72	+30671016666
103	72	+30986901487
104	72	+30731016666
105	72	+30951041111
106	73	+30987081919
107	73	+30678160505
108	74	+30632156773
109	75	+30987081919
110	75	+30678160505
111	76	+30999488440
112	77	+30990070755
113	78	+30679503003
114	79	+30970102233
115	79	+30956561955
116	80	+30938650512
117	81	+30635060314
118	81	+30989101097
119	82	+30994730316
120	83	+30967107100
121	84	+30664278202
122	85	+30957652109
123	86	+30731911119
124	86	+30502667706
125	87	+30636683323
126	88	+30932232414
127	89	+30685531551
128	90	+30635548553
129	91	+30972304708
130	92	+30960620733
131	93	+30985440464
132	94	+30635844073
133	95	+30677720121
134	96	+30957721403
135	97	+30977249991
136	98	+30675369377
137	98	+30675369386
138	99	+30987542929
139	100	+30685151818
140	101	+30678491030
141	102	+30661718762
142	103	+30987494620
143	104	+30997618981
144	105	+30673530959
145	106	+30504777341
146	107	+30938137818
147	108	+30738549647
148	109	+30931893727
149	109	+30506488709
150	110	+30964509157
151	111	+30505650817
152	112	+30989568191
153	113	+30962722073
154	114	+30963755055
155	115	+30936442225
156	116	+30636237260
157	117	+30959483349
158	118	+30930035618
159	119	+30737216167
160	120	+30972494394
161	121	+30989992547
162	122	+30509519740
163	122	+30979003066
164	123	+30678905575
165	124	+30974069779
166	125	+30958397894
167	126	+30955050006
168	126	+30955833367
169	126	+30735050006
170	127	+30501038334
171	128	+30935099101
172	129	+30933962125
173	130	+30989923464
174	131	+30960002411
175	132	+30676781012
176	133	+30676781012
177	134	+30931880707
178	134	+30996699779
179	134	+30661880707
180	135	+30971272354
181	136	+30500191755
182	137	+30635241182
183	138	+30958238277
184	139	+30981717043
185	140	+30664347125
186	141	+30672645337
187	142	+30970102233
188	142	+30956561955
189	143	+30501802060
190	144	+30509519740
191	144	+30979003066
192	145	+30934995777
193	146	+30509519740
194	146	+30979003066
195	147	+30981717043
196	148	+30963157466
197	149	+30686660966
198	150	+30505387812
199	151	+30671929290
200	152	+30678188480
201	153	+30970102233
202	153	+30956561955
203	154	+30735555222
204	155	+30630635460
205	156	+30988587887
206	157	+30981717043
207	158	+30674864385
208	159	+30668338675
209	159	+30957774270
210	160	+30995035216
211	161	+30981717043
212	162	+30952422207
213	163	+30505801630
214	164	+30678905575
215	165	+30731002003
216	166	+30954792704
217	167	+30668452033
218	168	+30687605482
219	169	+30672474888
220	170	+30750100001
221	171	+30679343433
222	172	+30509995939
223	173	+30663401616
224	174	+30679652706
225	175	+30675648821
226	176	+30986808238
227	177	+30935462101
228	178	+30689513855
229	178	+30635232270
230	178	+30635232843
231	178	+30634100797
232	179	+30984809363
233	180	+30631334316
234	180	+30631334355
235	181	+30633082171
236	182	+30954891819
237	183	+30730946478
238	184	+30680099097
239	185	+30977935515
240	186	+30934221640
241	187	+30680512512
242	188	+30935099101
243	189	+30673438217
244	189	+30800309993
245	190	+30952123421
246	191	+30509995939
247	192	+30661984105
248	193	+30966485946
249	194	+30991167777
250	195	+30666988446
251	196	+30666988446
252	197	+30965276703
253	198	+30678491030
254	199	+30935099101
255	200	+30967777277
256	201	+30931249855
257	202	+30682245835
258	203	+30986806619
259	204	+30967545008
260	205	+30500615121
261	206	+30963771420
262	207	+30935099101
263	208	+30665973375
264	209	+30932232414
265	210	+30631325765
266	211	+30666909999
267	212	+30939430119
268	213	+30930738174
269	214	+30689513855
270	214	+30635232270
271	214	+30635232843
272	214	+30634100797
273	215	+30509519740
274	215	+30979003066
275	216	+30959126362
276	217	+30954245766
277	218	+30935099101
278	219	+30967881888
279	220	+30935099101
280	221	+30979258822
281	222	+30666988446
282	223	+30509519740
283	223	+30979003066
284	224	+30509519740
285	224	+30979003066
286	225	+30966485946
287	226	+30672106570
288	226	+30672038479
289	226	+30672125903
290	227	+30635196172
291	228	+30966485946
292	229	+30506026605
293	229	+30991122777
294	230	+30968047768
295	231	+30965888333
296	232	+30673530959
297	233	+30969775319
298	234	+30934144578
299	235	+30932077717
300	236	+30503634005
301	237	+30730777170
302	238	+30951361517
303	239	+30988855559
304	239	+30674118050
305	240	+30672092266
306	240	+30965971957
307	241	+30509519740
308	241	+30979003066
309	242	+30988855559
310	242	+30674118050
311	243	+30983309797
312	244	+30673438217
313	244	+30800309993
314	245	+30959030010
315	246	+30731003000
316	247	+30678117711
317	248	+30952046405
318	249	+30993370854
319	249	+30973370854
320	250	+30937770222
321	250	+30980800100
322	251	+30630233710
323	251	+30735654015
324	252	+30994870741
325	253	+30665679804
326	254	+30508582828
327	254	+30934312888
328	255	+30966665316
329	256	+30667938881
330	257	+30509519740
331	257	+30979003066
332	258	+30988855559
333	258	+30674118050
334	259	+30672106570
335	259	+30672038479
336	259	+30672125903
337	260	+30509519740
338	260	+30979003066
339	261	+30509519740
340	261	+30979003066
341	262	+30673438217
342	262	+30800309993
343	263	+30669306667
344	264	+30687327801
345	265	+30960620733
346	266	+30683456660
347	267	+30978699779
348	268	+30955910921
349	269	+30678001000
350	270	+30982002040
351	271	+30951313000
352	272	+30680469560
353	273	+30961111146
354	274	+30934861393
355	274	+30737010501
356	274	+30934861392
357	274	+30934861394
358	275	+30771021001
359	276	+30664277902
360	277	+30994598236
361	278	+30956677666
362	279	+30672720945
363	280	+30637425620
364	281	+30665849539
365	282	+30770060007
366	283	+30982752678
367	283	+30956343797
368	284	+30969775389
369	285	+30933869958
370	286	+30981524869
371	287	+30968015311
372	288	+30635245988
373	288	+30635245993
374	289	+30500222202
375	290	+30509519740
376	290	+30979003066
377	291	+30972543242
378	292	+30673982185
379	293	+30509519740
380	293	+30979003066
381	294	+30667938881
382	295	+30999154588
383	296	+30509519740
384	296	+30979003066
385	297	+30680120101
386	298	+30500524349
387	299	+30674674028
388	299	+30631241116
389	300	+30631145821
390	301	+30687327801
391	302	+30930514402
392	303	+30934729000
393	304	+30930924934
394	305	+30985440464
395	306	+30938477302
396	307	+30966185055
397	307	+30777000333
398	308	+30981524869
399	309	+30677866032
400	310	+30987081919
401	310	+30678160505
402	311	+30980822654
403	312	+30988697603
404	313	+30988855559
405	313	+30674118050
406	314	+30982022002
407	315	+30676339449
408	316	+30975009105
409	317	+30977774298
410	318	+30961207904
411	319	+30981058200
412	320	+30960071045
413	321	+30664277902
414	322	+30958440590
415	323	+30966185055
416	323	+30777000333
417	324	+30668415559
418	325	+30930288462
419	326	+30673754526
420	327	+30953282717
421	328	+30979002378
422	329	+30955050006
423	329	+30955833367
424	329	+30735050006
425	330	+30673393672
426	331	+30930288462
427	332	+30676330807
428	333	+30635245988
429	333	+30635245993
430	334	+30631858575
431	335	+30985034488
432	336	+30676330807
433	337	+30504043321
434	338	+30970940055
435	339	+30930288462
\.


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (id, url, title, price_usd, odometer, username, image_url, image_count, car_number, car_vin, datetime_found) FROM stdin;
1	https://auto.ria.com/uk/auto_toyota_rav4_38261008.html	Toyota RAV4 2016	24800	79000	AVTO EXCLUSIVE	https://cdn4.riastatic.com/photosnew/auto/photo/toyota_rav4__597851524f.jpg	115	\N	JTMWRREV00D013784	2025-05-07 22:02:57.599253
2	https://auto.ria.com/uk/auto_tesla_model_x_38247058.html	Tesla Model X 2017	19999	132000	Максим	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-x__597489684f.jpg	37	AA0688ZA	5YJXCDE28HF044753	2025-05-07 22:02:57.599253
3	https://auto.ria.com/uk/auto_porsche_cayenne_38250109.html	Porsche Cayenne 2018	56000	44000	ART	https://cdn2.riastatic.com/photosnew/auto/photo/porsche_cayenne__597638602f.jpg	23	AA1212XI	WP1ZZZ9YZKDA01986	2025-05-07 22:02:57.599253
4	https://auto.ria.com/uk/auto_audi_a8_38107964.html	Audi A8 2017	35500	89000	V8-MOTORS	https://cdn2.riastatic.com/photosnew/auto/photo/audi_a8__593677452f.jpg	40	\N	WAUZZZ4HxHNxxxx85	2025-05-07 22:02:57.599253
5	https://auto.ria.com/uk/auto_volvo_s90_38259543.html	Volvo S90 2017	23900	97000	Александр	https://cdn2.riastatic.com/photosnew/auto/photo/volvo_s90__597810227f.jpg	36	BK6715IP	LVY982MK1JP037731	2025-05-07 22:02:57.599253
6	https://auto.ria.com/uk/auto_audi_q7_38261506.html	Audi Q7 2018	24500	171000	Slavik	https://cdn4.riastatic.com/photosnew/auto/photo/audi_q7__597863904f.jpg	31	\N	\N	2025-05-07 22:02:57.599253
7	https://auto.ria.com/uk/auto_bmw_x5_38136612.html	BMW X5 2014	17400	194000	Олег	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__597709147f.jpg	17	\N	WBAKR010x00xxxx10	2025-05-07 22:02:57.599253
8	https://auto.ria.com/uk/auto_skoda_octavia_38254873.html	Skoda Octavia 2017	16300	207000	Георгий	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_octavia__597693895f.jpg	6	AI1146MM	TMBJJ7NE7J0040141	2025-05-07 22:02:57.599253
9	https://auto.ria.com/uk/auto_skoda_octavia_38236026.html	Skoda Octavia 2015	11900	267000	женя	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_octavia__597172930f.jpg	27	KA9047MI	TMBLD7NE3F0178802	2025-05-07 22:02:57.599253
10	https://auto.ria.com/uk/auto_audi_q7_38255443.html	Audi Q7 2016	21900	181000	Володимир	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q7__597700252f.jpg	21	\N	\N	2025-05-07 22:02:57.599253
11	https://auto.ria.com/uk/auto_bmw_x5_37973712.html	BMW X5 2016	32800	136000	Кирилл	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__594759154f.jpg	59	HH4001AE		2025-05-07 22:02:57.599253
12	https://auto.ria.com/uk/auto_audi_a6_38125390.html	Audi A6 2012	11999	284000	GARANT AUTO	https://cdn3.riastatic.com/photosnew/auto/photo/audi_a6__594073108f.jpg	92	BH6459TH	WAUBGAFC9CN006881	2025-05-07 22:02:57.599253
13	https://auto.ria.com/uk/auto_volkswagen_passat_38258399.html	Volkswagen Passat 2016	14999	194000	Саша	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_passat__597781631f.jpg	48	AI5595EK	WVWZZZ3CZHE091248	2025-05-07 22:02:57.599253
14	https://auto.ria.com/uk/auto_bmw_x5_38250075.html	BMW X5 2014	29000	285000	Альоша	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x5__597567960f.jpg	17	AB3324KI	5UXKS4C5xE0xxxx19	2025-05-07 22:02:57.599253
15	https://auto.ria.com/uk/auto_toyota_rav4_38257454.html	Toyota RAV4 2006	8200	250000	Артем	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_rav4__597759092f.jpg	32	AA1183CA	\N	2025-05-07 22:02:57.599253
16	https://auto.ria.com/uk/auto_nissan_rogue_38142495.html	Nissan Rogue 2023	26900	34000	Євген	https://cdn3.riastatic.com/photosnew/auto/photo/nissan_rogue__596548548f.jpg	47	KA5862PA		2025-05-07 22:02:57.599253
17	https://auto.ria.com/uk/auto_kia_niro_38251801.html	Kia Niro 2020	17999	75000	IZI AUTO LUTSK	https://cdn1.riastatic.com/photosnew/auto/photo/kia_niro__597613976f.jpg	82	\N	\N	2025-05-07 22:02:57.599253
18	https://auto.ria.com/uk/auto_skoda_octavia_38252514.html	Skoda Octavia 2011	7700	314000	Володимир	https://cdn3.riastatic.com/photosnew/auto/photo/skoda_octavia__597633898f.jpg	26	AA9635EO	TMBBT61Z1B2102351	2025-05-07 22:02:57.599253
19	https://auto.ria.com/uk/auto_audi_a6_38250861.html	Audi A6 2015	18000	220000	Богдан	https://cdn2.riastatic.com/photosnew/auto/photo/audi_a6__597589082f.jpg	27	\N	WAUGFAFC7GN025492	2025-05-07 22:02:57.599253
20	https://auto.ria.com/uk/auto_audi_q7_38250184.html	Audi Q7 2022	47900	51000	Богдан	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q7__597571937f.jpg	58	\N	\N	2025-05-07 22:02:57.599253
21	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_38173368.html	Mercedes-Benz Sprinter 2022	35950	239000	Роман	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__595438181f.jpg	135	\N	\N	2025-05-07 22:02:57.599253
22	https://auto.ria.com/uk/auto_bmw_3_series_38263034.html	BMW 3 Series 2019	55900	120000		https://cdn4.riastatic.com/photosnew/auto/photo/bmw_3-series__597904219f.jpg	16	\N	WBA5U9C0XLA380700	2025-05-07 22:02:57.599253
23	https://auto.ria.com/uk/auto_volkswagen_touareg_38218667.html	Volkswagen Touareg 2019	49999	195000	Юлія	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596688283f.jpg	24	KE4778AT	WVGZZZCRZKD030621	2025-05-07 22:02:57.599253
24	https://auto.ria.com/uk/auto_skoda_kodiaq_38028979.html	Skoda Kodiaq 2023	44500	37000	Вячеслав	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_kodiaq__591343640f.jpg	24	BH0001TM	TMBLN7NS3RB400640	2025-05-07 22:02:57.599253
25	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_38044575.html	Mercedes-Benz Sprinter 2002	7500	411000	Гена	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__591818179f.jpg	15	\N	\N	2025-05-07 22:02:57.599253
26	https://auto.ria.com/uk/auto_volkswagen_passat_38214601.html	Volkswagen Passat 2014	12300	218000		https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_passat__596577880f.jpg	9	BO6056EK	1VWCN7A39EC091210	2025-05-07 22:02:57.599253
27	https://auto.ria.com/uk/auto_toyota_rav4_37495204.html	Toyota RAV4 2020	28000	64000	Василь	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_rav4__576492982f.jpg	14	KA1170CO	JTMR43FV30D013740	2025-05-07 22:02:57.599253
28	https://auto.ria.com/uk/auto_audi_a6_38041140.html	Audi A6 2013	15000	236000	Eduard	https://cdn0.riastatic.com/photosnew/auto/photo/audi_a6__595661655f.jpg	22	CA6785IB	WAUGGAFC0DN152996	2025-05-07 22:02:57.599253
29	https://auto.ria.com/uk/auto_bmw_3_series_38216823.html	BMW 3 Series 2016	18950	357000	геннадий петрович	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_3-series__596635492f.jpg	18	KA0669EI	WBA8Y710xGGxxxx99	2025-05-07 22:02:57.599253
30	https://auto.ria.com/uk/auto_mazda_cx_5_38252506.html	Mazda CX-5 2017	21990	157000	Олег	https://cdn3.riastatic.com/photosnew/auto/photo/mazda_cx-5__597623293f.jpg	79	\N	\N	2025-05-07 22:02:57.599253
31	https://auto.ria.com/uk/auto_bmw_x5_38072146.html	BMW X5 2020	58500	142000	Freshauto	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__592572406f.jpg	46	\N	\N	2025-05-07 22:02:57.599253
32	https://auto.ria.com/uk/auto_audi_q5_38257908.html	Audi Q5 2021	47500	65000	AutoPlus UA	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q5__597768303f.jpg	130	BH8855OI	WA1E2AFY1M2000953	2025-05-07 22:02:57.599253
33	https://auto.ria.com/uk/auto_bmw_x7_37218372.html	BMW X7 2020	66900	107000	Олександр	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x7__568989475f.jpg	38	\N	WBACW810x09xxxx80	2025-05-07 22:02:57.599253
34	https://auto.ria.com/uk/auto_lexus_gx_38110443.html	Lexus GX 2012	21800	235000	Slavik	https://cdn4.riastatic.com/photosnew/auto/photo/lexus_gx__593674749f.jpg	51	\N	\N	2025-05-07 22:02:57.599253
35	https://auto.ria.com/uk/auto_lexus_gx_38255428.html	Lexus GX 2008	18500	156000	Олег	https://cdn1.riastatic.com/photosnew/auto/photo/lexus_gx__597705931f.jpg	12	\N	JTJBT20Xx80xxxx08	2025-05-07 22:02:57.599253
36	https://auto.ria.com/uk/auto_citroen_jumper_38262162.html	Citroen Jumper 2014	11850	186000		https://cdn1.riastatic.com/photosnew/auto/photo/citroen_jumper__597880876f.jpg	70	AA1328MM	VF7YCTMFx12xxxx93	2025-05-07 22:02:57.599253
37	https://auto.ria.com/uk/auto_tesla_model_y_38261696.html	Tesla Model Y 2021	24500	48000	Хорошая	https://cdn3.riastatic.com/photosnew/auto/photo/tesla_model-y__597868583f.jpg	9	AE8243YA	5YJYGDEEXMF280544	2025-05-07 22:02:57.599253
38	https://auto.ria.com/uk/auto_bmw_x5_38261521.html	BMW X5 2016	30500	100000	Petro	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__597863991f.jpg	41	BC9006TH	5UXKR0C50H0U49856	2025-05-07 22:02:57.599253
39	https://auto.ria.com/uk/auto_volkswagen_touareg_38155904.html	Volkswagen Touareg 2020	58999	94000	AUTO DVIG	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_touareg__594912804f.jpg	108	\N	WVGZZZCRZMD014486	2025-05-07 22:02:57.599253
40	https://auto.ria.com/uk/auto_lexus_lx_38252421.html	Lexus LX 2016	72000	125000	Petro	https://cdn4.riastatic.com/photosnew/auto/photo/lexus_lx__597630434f.jpg	30	BC1119II	JTJCV00W404004156	2025-05-07 22:02:57.599253
41	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_37189680.html	Mercedes-Benz Sprinter 2016	23100	260000	Ref & Bus	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__568039913f.jpg	37	\N	\N	2025-05-07 22:02:57.599253
42	https://auto.ria.com/uk/auto_volkswagen_touareg_38210505.html	Volkswagen Touareg 2020	40400	139000	Віталій	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596466613f.jpg	22	AI5005IB	WVGZZZCRZMD016111	2025-05-07 22:02:57.599253
43	https://auto.ria.com/uk/auto_toyota_corolla_38184810.html	Toyota Corolla 2020	24500	85000	Denys	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_corolla__595746812f.jpg	43	KA3887OX	NMTBZ4BEx0Rxxxx09	2025-05-07 22:02:57.599253
44	https://auto.ria.com/uk/auto_bmw_x6_38184324.html	BMW X6 2019	72000	155000	Petro	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x6__595733872f.jpg	60	BC1386TM	WBACY610109B02944	2025-05-07 22:02:57.599253
45	https://auto.ria.com/uk/auto_volkswagen_touareg_38256866.html	Volkswagen Touareg 2022	62800	79000	Олексій	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_touareg__597744157f.jpg	229	\N	\N	2025-05-07 22:02:57.599253
46	https://auto.ria.com/uk/auto_zeekr_001_38236761.html	Zeekr 001 2024	41799	1000	E-SKM	https://cdn0.riastatic.com/photosnew/auto/photo/zeekr_001__597193150f.jpg	22	\N	\N	2025-05-07 22:02:57.599253
47	https://auto.ria.com/uk/auto_zeekr_001_38253903.html	Zeekr 001 2024	119900	1000	Сергей	https://cdn2.riastatic.com/photosnew/auto/photo/zeekr_001__597667932f.jpg	53	AA1000YY	L6T79ANExRPxxxx60	2025-05-07 22:02:57.599253
48	https://auto.ria.com/uk/auto_zeekr_001_38098155.html	Zeekr 001 2023	59900	13000	Сергей	https://cdn2.riastatic.com/photosnew/auto/photo/zeekr_001__593297162f.jpg	28	\N	L6T79P2NxPPxxxx52	2025-05-07 22:02:57.599253
49	https://auto.ria.com/uk/auto_volkswagen_touareg_38165668.html	Volkswagen Touareg 2017	31999	169000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__595207033f.jpg	45	BA0294HI	WVGZZZ7PZHD024036	2025-05-07 22:02:57.599253
50	https://auto.ria.com/uk/auto_mercedes_benz_gls_class_38199894.html	Mercedes-Benz GLS-Class 2016	39000	135000	Андрій	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_gls-class__596165813f.jpg	26	KA3894IB	4JGDF6EE0HA882165	2025-05-07 22:02:57.599253
51	https://auto.ria.com/uk/auto_land_rover_range_rover_37843816.html	Land Rover Range Rover 2018	83000	102000	Павел	https://cdn0.riastatic.com/photosnew/auto/photo/land-rover_range-rover__586154995f.jpg	19	BH1105TT	SALGA2BJxJAxxxx59	2025-05-07 22:02:57.599253
52	https://auto.ria.com/uk/auto_kia_sportage_38219738.html	Kia Sportage 2019	17800	196000	Таміла	https://cdn4.riastatic.com/photosnew/auto/photo/kia_sportage__596717009f.jpg	16	CA1965CP	U5YPG812AKL682451	2025-05-07 22:02:57.599253
53	https://auto.ria.com/uk/auto_byd_song_plus_38017598.html	BYD Song Plus 2024	25700	1000	4Колеса	https://cdn2.riastatic.com/photosnew/auto/photo/byd_song-plus__591021157f.jpg	38	\N	\N	2025-05-07 22:02:57.599253
54	https://auto.ria.com/uk/auto_tesla_model_y_35839689.html	Tesla Model Y 2023	29900	2000	Максим	https://cdn2.riastatic.com/photosnew/auto/photo/tesla_model-y__531222472f.jpg	24	\N	7SAYGDEE1PF644132	2025-05-07 22:02:57.599253
55	https://auto.ria.com/uk/auto_tesla_model_y_34959064.html	Tesla Model Y 2022	28999	2000	Максим	https://cdn0.riastatic.com/photosnew/auto/photo/tesla_model-y__518693700f.jpg	26	BO1004ZA	7SAYGDEF7NF507590	2025-05-07 22:02:57.599253
56	https://auto.ria.com/uk/auto_tesla_model_y_35110849.html	Tesla Model Y 2020	25999	70000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/tesla_model-y__512306233f.jpg	31	BO0767ZA	5YJYGDEE2MF061741	2025-05-07 22:02:57.599253
57	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_37998796.html	Mercedes-Benz Sprinter 2020	34900	92000	Freshauto	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__590509328f.jpg	32	\N	\N	2025-05-07 22:02:57.599253
58	https://auto.ria.com/uk/auto_land_rover_range_rover_38224023.html	Land Rover Range Rover 2018	62900	165000	Николай	https://cdn0.riastatic.com/photosnew/auto/photo/land-rover_range-rover__596837695f.jpg	41	\N	SALGA2BJxKAxxxx80	2025-05-07 22:02:57.599253
59	https://auto.ria.com/uk/auto_land_rover_range_rover_38159900.html	Land Rover Range Rover 2023	6830000	60000	JAGUAR LAND ROVER КИЇВ ЗАХІД	https://cdn2.riastatic.com/photosnew/auto/photo/land-rover_range-rover__595039662f.jpg	27	\N	SALKA9B42PA043780	2025-05-07 22:02:57.599253
60	https://auto.ria.com/uk/auto_land_rover_range_rover_38141183.html	Land Rover Range Rover 2023	6800000	42000	JAGUAR LAND ROVER КИЇВ ЗАХІД	https://cdn2.riastatic.com/photosnew/auto/photo/land-rover_range-rover__594508122f.jpg	25	\N	SALKA9B79PA043804	2025-05-07 22:02:57.599253
61	https://auto.ria.com/uk/auto_porsche_cayenne_coupe_38062858.html	Porsche Cayenne Coupe 2023	262000	7000	Кирилл	https://cdn4.riastatic.com/photosnew/auto/photo/porsche_cayenne-coupe__592305224f.jpg	26	KA9415OX	WP1ZZZ9YZRDA85145	2025-05-07 22:02:57.599253
62	https://auto.ria.com/uk/auto_bmw_7_series_38262994.html	BMW 7 Series 2016	33500	170000	Василь	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_7-series__597902214f.jpg	35	BK5577CO	WBA7C41010G641321	2025-05-07 22:02:57.599253
63	https://auto.ria.com/uk/auto_volkswagen_tiguan_38261120.html	Volkswagen Tiguan 2016	13300	203000	TOP AUTO	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__597850549f.jpg	56	\N	\N	2025-05-07 22:02:57.599253
64	https://auto.ria.com/uk/auto_land_rover_range_rover_evoque_38260878.html	Land Rover Range Rover Evoque 2016	15700	216000	TOP AUTO	https://cdn0.riastatic.com/photosnew/auto/photo/land-rover_range-rover-evoque__597846595f.jpg	76	\N	\N	2025-05-07 22:02:57.599253
65	https://auto.ria.com/uk/auto_audi_sq5_38260695.html	Audi SQ5 2022	39900	18000	TOP AUTO	https://cdn0.riastatic.com/photosnew/auto/photo/audi_sq5__597841700f.jpg	88	\N	\N	2025-05-07 22:02:57.599253
66	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_37978778.html	Mercedes-Benz Sprinter 2021	38900	191000	Freshauto	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__589966267f.jpg	32	\N	\N	2025-05-07 22:02:57.599253
67	https://auto.ria.com/uk/auto_land_rover_range_rover_38197178.html	Land Rover Range Rover 2023	7200000	54000	JAGUAR LAND ROVER КИЇВ ЗАХІД	https://cdn4.riastatic.com/photosnew/auto/photo/land-rover_range-rover__596084079f.jpg	27	\N	SALKA9BW5PA044357	2025-05-07 22:02:57.599253
68	https://auto.ria.com/uk/auto_peugeot_3008_38262715.html	Peugeot 3008 2015	11350	212000	Taras	https://cdn1.riastatic.com/photosnew/auto/photo/peugeot_3008__597890711f.jpg	179	\N	\N	2025-05-07 22:02:57.599253
69	https://auto.ria.com/uk/auto_volvo_v50_38262373.html	Volvo V50 2011	7750	213000	Taras	https://cdn0.riastatic.com/photosnew/auto/photo/volvo_v50__597882645f.jpg	152	\N	\N	2025-05-07 22:02:57.599253
70	https://auto.ria.com/uk/auto_hyundai_santa_fe_37990009.html	Hyundai Santa FE 2013	11600	236000	Slavik	https://cdn1.riastatic.com/photosnew/auto/photo/hyundai_santa-fe__590264571f.jpg	39	CA9403KI	5XYZT3LBXDG075480	2025-05-07 22:02:57.599253
71	https://auto.ria.com/uk/auto_bmw_7_series_37962180.html	BMW 7 Series 2023	123999	36000	AutoGallery official	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_7-series__589480087f.jpg	43	\N	WBA21EJ0x0Cxxxx65	2025-05-07 22:02:57.599253
72	https://auto.ria.com/uk/auto_bmw_3_series_37958730.html	BMW 3 Series 2025	65500	1000	AutoGallery official	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_3-series__590358458f.jpg	38	\N	\N	2025-05-07 22:02:57.599253
73	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_37994750.html	Mercedes-Benz Sprinter 2020	38900	136000	Freshauto	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__590396924f.jpg	31	\N	\N	2025-05-07 22:02:57.599253
74	https://auto.ria.com/uk/auto_tesla_model_y_38249559.html	Tesla Model Y 2024	29800	38000	Slavik	https://cdn3.riastatic.com/photosnew/auto/photo/tesla_model-y__597556873f.jpg	10	\N	\N	2025-05-07 22:02:57.599253
75	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_37857615.html	Mercedes-Benz Sprinter 2019	29300	280000	Freshauto	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__586527955f.jpg	29	\N	\N	2025-05-07 22:02:57.599253
76	https://auto.ria.com/uk/auto_tesla_model_s_38247118.html	Tesla Model S 2017	18400	64000	Евгений	https://cdn1.riastatic.com/photosnew/auto/photo/tesla_model-s__597490936f.jpg	15	BX2537YA	5YJSA1E2XHF164942	2025-05-07 22:02:57.599253
77	https://auto.ria.com/uk/auto_hyundai_santa_fe_38207089.html	Hyundai Santa FE 2020	21499	112000	BUY AUTO	https://cdn2.riastatic.com/photosnew/auto/photo/hyundai_santa-fe__596370152f.jpg	42	\N	\N	2025-05-07 22:02:57.599253
78	https://auto.ria.com/uk/auto_tesla_model_s_38141831.html	Tesla Model S 2020	35500	52000	Александр	https://cdn0.riastatic.com/photosnew/auto/photo/tesla_model-s__594527530f.jpg	26	\N	5YJSA7E43LF355146	2025-05-07 22:02:57.599253
79	https://auto.ria.com/uk/auto_hyundai_santa_fe_38252012.html	Hyundai Santa FE 2019	27500	169000	IZI AUTO LUTSK	https://cdn0.riastatic.com/photosnew/auto/photo/hyundai_santa-fe__597619450f.jpg	92	\N	\N	2025-05-07 22:02:57.599253
80	https://auto.ria.com/uk/auto_toyota_camry_37572588.html	Toyota Camry 2017	960000	156000	ТОЙОТА ЦЕНТР КИЇВ АВТОСАМІТ УКРАВТО	https://cdn3.riastatic.com/photosnew/auto/photo/toyota_camry__578607938f.jpg	18	\N	JTNBF3HK403000186	2025-05-07 22:02:57.599253
81	https://auto.ria.com/uk/auto_audi_q7_38235112.html	Audi Q7 2015	24900	178000	Артем	https://cdn0.riastatic.com/photosnew/auto/photo/audi_q7__597148795f.jpg	59	BH9672TT	WA1LMBFE7FD027868	2025-05-07 22:02:57.599253
82	https://auto.ria.com/uk/auto_mercedes_benz_c_class_38094733.html	Mercedes-Benz C-Class 2016	20900	141000	Александр	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_c-class__593206558f.jpg	16	BC3988PH	WDDWF4JB7GR151154	2025-05-07 22:02:57.599253
83	https://auto.ria.com/uk/auto_volvo_xc90_38208169.html	Volvo XC90 2018	41300	88000	СЕРГІЙ	https://cdn1.riastatic.com/photosnew/auto/photo/volvo_xc90__596401886f.jpg	20	BK7229IP	YV1LF25BCJ1391219	2025-05-07 22:02:57.599253
84	https://auto.ria.com/uk/auto_toyota_camry_37999168.html	Toyota Camry 2013	9400	219000	Олександр	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_camry__590520342f.jpg	17	\N	4T1BD1FK6DU076957	2025-05-07 22:02:57.599253
85	https://auto.ria.com/uk/auto_volkswagen_passat_alltrack_38076853.html	Volkswagen Passat Alltrack 2018	26400	158000	Олексій	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_passat-alltrack__592708069f.jpg	29	BK8080AI	WVWZZZ3CZJE203418	2025-05-07 22:02:57.599253
86	https://auto.ria.com/uk/auto_opel_astra_38259993.html	Opel Astra 2007	4350	290000	Олег	https://cdn1.riastatic.com/photosnew/auto/photo/opel_astra__597823701f.jpg	19	KA5173KO	W0L0AHL0885013817	2025-05-07 22:02:57.599253
87	https://auto.ria.com/uk/auto_byd_song_plus_37882559.html	BYD Song Plus 2025	23999	1000	ELECTRO-MOTORS KYIV	https://cdn0.riastatic.com/photosnew/auto/photo/byd_song-plus__587212615f.jpg	38	\N	LGXCE4CB6S0134553	2025-05-07 22:02:57.599253
88	https://auto.ria.com/uk/auto_renault_master_38113287.html	Renault Master 2021	24900	254000	Олег	https://cdn4.riastatic.com/photosnew/auto/photo/renault_master__593757489f.jpg	37	\N	\N	2025-05-07 22:02:57.599253
89	https://auto.ria.com/uk/auto_toyota_land_cruiser_prado_38123554.html	Toyota Land Cruiser Prado 2008	17999	147000	Константин	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_land-cruiser-prado__594026132f.jpg	10	\N	\N	2025-05-07 22:02:57.599253
90	https://auto.ria.com/uk/auto_kia_sportage_38203819.html	Kia Sportage 2008	7990	207000	Misha	https://cdn1.riastatic.com/photosnew/auto/photo/kia_sportage__596276126f.jpg	102	\N	\N	2025-05-07 22:02:57.599253
91	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_coupe_38243318.html	Mercedes-Benz GLE-Class Coupe 2018	57777	67000	Олександр	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class-coupe__597385597f.jpg	93	\N	WDC29232x1Axxxx37	2025-05-07 22:02:57.599253
92	https://auto.ria.com/uk/auto_skoda_superb_38243256.html	Skoda Superb 2020	30900	146000	Стас	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_superb__597381950f.jpg	74	15285E	\N	2025-05-07 22:02:57.599253
93	https://auto.ria.com/uk/auto_bmw_x5_37625741.html	BMW X5 2015	25954	198000	Сергій	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x5__580099635f.jpg	53	HC8000CH	5UXKR0C58F0P07571	2025-05-07 22:02:57.599253
94	https://auto.ria.com/uk/auto_tesla_model_3_38236391.html	Tesla Model 3 2019	18900	106000	Oleg	https://cdn3.riastatic.com/photosnew/auto/photo/tesla_model-3__597182333f.jpg	9	AA5907YB	5YJ3E1EB6KF433423	2025-05-07 22:02:57.599253
95	https://auto.ria.com/uk/auto_bmw_x5_38259981.html	BMW X5 2014	24000	152000	Nazariy	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__597822969f.jpg	23	KA9060MO	\N	2025-05-07 22:02:57.599253
96	https://auto.ria.com/uk/auto_kia_sportage_38237991.html	Kia Sportage 2006	7500	327000	Денис	https://cdn4.riastatic.com/photosnew/auto/photo/kia_sportage__597225859f.jpg	10	AP7617KE	KNEJE55556K239056	2025-05-07 22:02:57.599253
97	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_38261314.html	Mercedes-Benz GLE-Class 2016	39950	99000	Дмитрий	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__597856161f.jpg	97	\N	\N	2025-05-07 22:02:57.599253
98	https://auto.ria.com/uk/auto_volkswagen_touareg_38022887.html	Volkswagen Touareg 2018	46500	195000	ПОРШЕ ЗАХІД / Das WeltAuto	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_touareg__591168016f.jpg	14	\N		2025-05-07 22:02:57.599253
99	https://auto.ria.com/uk/auto_mercedes_benz_e_class_38260724.html	Mercedes-Benz E-Class 2015	23000	115000	Антон	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__597842948f.jpg	41	AE6956TB	WDD2120971B146756	2025-05-07 22:02:57.599253
100	https://auto.ria.com/uk/auto_peugeot_3008_38260010.html	Peugeot 3008 2019	22500	159000	Даниїл	https://cdn3.riastatic.com/photosnew/auto/photo/peugeot_3008__597823748f.jpg	31	\N	\N	2025-05-07 22:02:57.599253
101	https://auto.ria.com/uk/auto_renault_trafic_38068794.html	Renault Trafic 2021	19999	160000	Сергій	https://cdn1.riastatic.com/photosnew/auto/photo/renault_trafic__592479031f.jpg	100	\N	\N	2025-05-07 22:02:57.599253
102	https://auto.ria.com/uk/auto_audi_q7_38258929.html	Audi Q7 2018	40900	102000	Ганна	https://cdn1.riastatic.com/photosnew/auto/photo/audi_q7__597793946f.jpg	11	OO3007OO	WA1LAAF79KD000976	2025-05-07 22:02:57.599253
103	https://auto.ria.com/uk/auto_bmw_x5_38116625.html	BMW X5 2003	8700	320000	Ірина	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__593842569f.jpg	17	BX9160HI	WBAFA51020LT41625	2025-05-07 22:02:57.599253
104	https://auto.ria.com/uk/auto_skoda_octavia_38257811.html	Skoda Octavia 2006	7200	365000	Володимир	https://cdn4.riastatic.com/photosnew/auto/photo/skoda_octavia__597762424f.jpg	41	AO7837IE	TMBEH61Z878017588	2025-05-07 22:02:57.599253
105	https://auto.ria.com/uk/auto_ford_mustang_mach_e_35599187.html	Ford Mustang Mach-E 2021	32999	23000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/ford_mustang-mach-e__524767733f.jpg	41	\N	3FMTK3SUXMMA45812	2025-05-07 22:02:57.599253
106	https://auto.ria.com/uk/auto_audi_q5_38257409.html	Audi Q5 2022	37700	37000	Станислав	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q5__597757623f.jpg	14	AI1920PX		2025-05-07 22:02:57.599253
107	https://auto.ria.com/uk/auto_volkswagen_passat_38256666.html	Volkswagen Passat 2017	14900	140000	Дмитро	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_passat__597738173f.jpg	21	KA0807CH	1VWCT7A35HC079162	2025-05-07 22:02:57.599253
108	https://auto.ria.com/uk/auto_bmw_x5_38256014.html	BMW X5 2005	10700	224000	Вова	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__597838057f.jpg	68	BH8529OX	WBAFB71000LX57777	2025-05-07 22:02:57.599253
109	https://auto.ria.com/uk/auto_tesla_model_3_38107539.html	Tesla Model 3 2019	18850	60000	Віктор	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-3__593585649f.jpg	73	\N	\N	2025-05-07 22:02:57.599253
110	https://auto.ria.com/uk/auto_bmw_x3_38243987.html	BMW X3 2022	41500	127000	Гена	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x3__597405305f.jpg	34	\N	5UX53DP0XN9L39277	2025-05-07 22:02:57.599253
111	https://auto.ria.com/uk/auto_volkswagen_transporter_38238229.html	Volkswagen Transporter 2021	23500	204000	Omelian	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_transporter__597232484f.jpg	59	\N	\N	2025-05-07 22:02:57.599253
112	https://auto.ria.com/uk/auto_toyota_camry_37744143.html	Toyota Camry 2012	11600	187000	олег	https://cdn4.riastatic.com/photosnew/auto/photo/toyota_camry__592687959f.jpg	24	\N	JTNBF4FKX03017759	2025-05-07 22:02:57.599253
113	https://auto.ria.com/uk/auto_hyundai_santa_fe_37922847.html	Hyundai Santa FE 2008	8200	245000	Альона	https://cdn0.riastatic.com/photosnew/auto/photo/hyundai_santa-fe__588359170f.jpg	11	\N	KMHSH81WP8U291612	2025-05-07 22:02:57.599253
114	https://auto.ria.com/uk/auto_audi_a4_37666990.html	Audi A4 2016	16999	150000	Николай	https://cdn2.riastatic.com/photosnew/auto/photo/audi_a4__581274047f.jpg	7	BH9339MC	WAUGNAF48HN021500	2025-05-07 22:02:57.599253
115	https://auto.ria.com/uk/auto_hyundai_kona_38203449.html	Hyundai Kona 2019	16500	96000	Ігор	https://cdn3.riastatic.com/photosnew/auto/photo/hyundai_kona__596220138f.jpg	103	\N	\N	2025-05-07 22:02:57.599253
116	https://auto.ria.com/uk/auto_bmw_x6_38188688.html	BMW X6 2023	108000	19000	Остап	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x6__595848900f.jpg	59	BC7511TM	5UX33EX03R9R43059	2025-05-07 22:02:57.599253
117	https://auto.ria.com/uk/auto_audi_a6_37894282.html	Audi A6 2015	23800	156000	Саша	https://cdn2.riastatic.com/photosnew/auto/photo/audi_a6__587536767f.jpg	51	\N	WAUZZZ4G3GN064777	2025-05-07 22:02:57.599253
118	https://auto.ria.com/uk/auto_mercedes_benz_e_class_37744467.html	Mercedes-Benz E-Class 2017	40000	130000	Тарас Васильович	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__588454679f.jpg	9	\N	WDD2130641A228039	2025-05-07 22:02:57.599253
119	https://auto.ria.com/uk/auto_bmw_5_series_38143462.html	BMW 5 Series 2017	30000	191000	Віктор	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_5-series__594578863f.jpg	63	\N	\N	2025-05-07 22:02:57.599253
120	https://auto.ria.com/uk/auto_lexus_lx_37453333.html	Lexus LX 2018	77000	130000	Руслан	https://cdn1.riastatic.com/photosnew/auto/photo/lexus_lx__575397386f.jpg	42	\N	JTJCV00W404009440	2025-05-07 22:02:57.599253
121	https://auto.ria.com/uk/auto_bmw_x5_38256790.html	BMW X5 2022	65000	45000	Александр	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__597749574f.jpg	20	KE7336AI	5UXCR6C01N9L05980	2025-05-07 22:02:57.599253
122	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_38256185.html	Mercedes-Benz GLE-Class 2023	128900	1000	БІР ПРАЙД	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__597724610f.jpg	71	\N	W1NFD3DB1RB082021	2025-05-07 22:02:57.599253
123	https://auto.ria.com/uk/auto_bmw_x5_38222961.html	BMW X5 2022	78800	36000	Nik	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__596936724f.jpg	100	\N	WBACV610x09xxxx20	2025-05-07 22:02:57.599253
124	https://auto.ria.com/uk/auto_toyota_corolla_38253965.html	Toyota Corolla 2016	14500	60000	Евгений	https://cdn1.riastatic.com/photosnew/auto/photo/toyota_corolla__597670211f.jpg	11	AX8609EX	NMTBB9JE10R181638	2025-05-07 22:02:57.599253
125	https://auto.ria.com/uk/auto_bmw_5_series_38253387.html	BMW 5 Series 2014	17400	268000	Юра	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_5-series__597654672f.jpg	25	\N	\N	2025-05-07 22:02:57.599253
126	https://auto.ria.com/uk/auto_bmw_x3_38250918.html	BMW X3 2013	13600	214000	AutoPlus UA	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x3__597590664f.jpg	102	BH3733IC	5UXWX9C53D0A11597	2025-05-07 22:02:57.599253
127	https://auto.ria.com/uk/auto_daihatsu_materia_38250509.html	Daihatsu Materia 2007	5999	125000	Андрей	https://cdn3.riastatic.com/photosnew/auto/photo/daihatsu_materia__597581258f.jpg	39	AA7588MM		2025-05-07 22:02:57.599253
128	https://auto.ria.com/uk/auto_audi_q7_38249234.html	Audi Q7 2017	53999	99000	Олексій	https://cdn1.riastatic.com/photosnew/auto/photo/audi_q7__597546896f.jpg	126	\N	WAUZZZ4M4JD015347	2025-05-07 22:02:57.599253
129	https://auto.ria.com/uk/auto_tesla_model_3_38109489.html	Tesla Model 3 2021	19997	48000	Юрій	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-3__593642129f.jpg	17	BC6968YA	5YJ3E1EB6MF035762	2025-05-07 22:02:57.599253
130	https://auto.ria.com/uk/auto_lexus_nx_38241661.html	Lexus NX 2023	45800	4000	Роман	https://cdn2.riastatic.com/photosnew/auto/photo/lexus_nx__597336587f.jpg	40	KB8088AB	JTJCFBAZ302009121	2025-05-07 22:02:57.599253
131	https://auto.ria.com/uk/auto_mercedes_benz_g_class_38238911.html	Mercedes-Benz G-Class 2014	64900	94000	Олександр	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_g-class__597254580f.jpg	45	AI1966KX	WDB4632721X218281	2025-05-07 22:02:57.599253
132	https://auto.ria.com/uk/auto_volkswagen_tiguan_38234864.html	Volkswagen Tiguan 2017	17900	166000	Володимир	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__597140165f.jpg	26	1052BT	\N	2025-05-07 22:02:57.599253
133	https://auto.ria.com/uk/auto_bmw_x3_38234777.html	BMW X3 2018	24300	250000	Володимир	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x3__597137763f.jpg	33	\N	\N	2025-05-07 22:02:57.599253
134	https://auto.ria.com/uk/auto_toyota_rav4_38232779.html	Toyota RAV4 2022	30000	99000	SEVEN AUTO	https://cdn4.riastatic.com/photosnew/auto/photo/toyota_rav4__597079554f.jpg	38	AX4041MM	2T3F1RFV3NC273100	2025-05-07 22:02:57.599253
135	https://auto.ria.com/uk/auto_ford_focus_38090814.html	Ford Focus 2015	8700	151000	Андрій	https://cdn1.riastatic.com/photosnew/auto/photo/ford_focus__593110156f.jpg	10	BC6169TI	WF06XXGCC6FS26895	2025-05-07 22:02:57.599253
136	https://auto.ria.com/uk/auto_volkswagen_touareg_37456275.html	Volkswagen Touareg 2021	54900	134000	влад	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touareg__595353170f.jpg	72	CE3852ET	WVGZZZCRZMD031339	2025-05-07 22:02:57.599253
137	https://auto.ria.com/uk/auto_porsche_cayenne_38081685.html	Porsche Cayenne 2016	28500	121000	Роберт	https://cdn1.riastatic.com/photosnew/auto/photo/porsche_cayenne__592852846f.jpg	16	KA8376MP	WP1AA2A26HKA86779	2025-05-07 22:02:57.599253
138	https://auto.ria.com/uk/auto_mercedes_benz_e_class_38228637.html	Mercedes-Benz E-Class 2006	11000	262000	Владислав	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__596967935f.jpg	17	AM6999CP	WDB2110221B019283	2025-05-07 22:02:57.599253
139	https://auto.ria.com/uk/auto_renault_master_38087666.html	Renault Master 2022	22000	222000	Андрій	https://cdn0.riastatic.com/photosnew/auto/photo/renault_master__593012355f.jpg	93	\N	\N	2025-05-07 22:02:57.599253
140	https://auto.ria.com/uk/auto_bmw_x5_37932857.html	BMW X5 2015	30000	272000	костя	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__596496827f.jpg	39	\N	\N	2025-05-07 22:02:57.599253
141	https://auto.ria.com/uk/auto_volkswagen_jetta_38102719.html	Volkswagen Jetta 2015	9000	201000	Денис	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_jetta__593437249f.jpg	19	KA2799MA	3VWD67AJXGM262273	2025-05-07 22:02:57.599253
142	https://auto.ria.com/uk/auto_peugeot_3008_38221870.html	Peugeot 3008 2021	20500	131000	IZI AUTO LUTSK	https://cdn3.riastatic.com/photosnew/auto/photo/peugeot_3008__596773303f.jpg	73	\N	\N	2025-05-07 22:02:57.599253
143	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_38225780.html	Mercedes-Benz GLE-Class 2019	61000	105000	Максим	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__596885911f.jpg	15	AA5522BH	WDC1671231A038914	2025-05-07 22:02:57.599253
144	https://auto.ria.com/uk/auto_audi_q8_38224853.html	Audi Q8 2021	67900	128000	БІР ПРАЙД	https://cdn0.riastatic.com/photosnew/auto/photo/audi_q8__596861410f.jpg	65	\N	WAUZZZF11ND009689	2025-05-07 22:02:57.599253
145	https://auto.ria.com/uk/auto_bmw_5_series_38221424.html	BMW 5 Series 2014	16200	232000	Коля	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_5-series__596760714f.jpg	11	CA3629KI	WBA5B3C59ED538749	2025-05-07 22:02:57.599253
146	https://auto.ria.com/uk/auto_bmw_x7_37921249.html	BMW X7 2024	155900	1000	БІР ПРАЙД	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x7__594930514f.jpg	72	\N	\N	2025-05-07 22:02:57.599253
147	https://auto.ria.com/uk/auto_jeep_cherokee_38087731.html	Jeep Cherokee 2019	14300	117000	Андрій	https://cdn3.riastatic.com/photosnew/auto/photo/jeep_cherokee__593013598f.jpg	56	\N	\N	2025-05-07 22:02:57.599253
148	https://auto.ria.com/uk/auto_audi_q7_38054878.html	Audi Q7 2018	35000	191000	Євген	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q7__592090167f.jpg	43	KA5883MO	WA1LHAF7XJD039585	2025-05-07 22:02:57.599253
149	https://auto.ria.com/uk/auto_mercedes_benz_g_class_38071592.html	Mercedes-Benz G-Class 2010	44900	151000	Роман	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_g-class__592555324f.jpg	17	AE6660KT	WDB4632701X183698	2025-05-07 22:02:57.599253
150	https://auto.ria.com/uk/auto_volkswagen_touran_38101261.html	Volkswagen Touran 2014	9999	312000	Зореслав	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_touran__594559092f.jpg	31	AO1117BK	WVGZZZ1TZEW045144	2025-05-07 22:02:57.599253
151	https://auto.ria.com/uk/auto_skoda_octavia_37141202.html	Skoda Octavia 2009	7300	353000	Юрий	https://cdn2.riastatic.com/photosnew/auto/photo/skoda_octavia__566688782f.jpg	10	KA0763MM	TMBHE61Zx98xxxx32	2025-05-07 22:02:57.599253
152	https://auto.ria.com/uk/auto_tesla_model_3_38187944.html	Tesla Model 3 2024	27500	20000	ELMOB	https://cdn2.riastatic.com/photosnew/auto/photo/tesla_model-3__595828547f.jpg	17	\N	\N	2025-05-07 22:02:57.599253
153	https://auto.ria.com/uk/auto_renault_megane_38185710.html	Renault Megane 2019	12700	185000	IZI AUTO LUTSK	https://cdn2.riastatic.com/photosnew/auto/photo/renault_megane__595765247f.jpg	76	\N	\N	2025-05-07 22:02:57.599253
154	https://auto.ria.com/uk/auto_toyota_land_cruiser_38184796.html	Toyota Land Cruiser 2017	47800	198000	Олексій	https://cdn1.riastatic.com/photosnew/auto/photo/toyota_land-cruiser__595747101f.jpg	10	KA4753PA	JTMCV02J904225692	2025-05-07 22:02:57.599253
155	https://auto.ria.com/uk/auto_jeep_grand_cherokee_37499901.html	Jeep Grand Cherokee 2017	23700	96000	Богдан	https://cdn1.riastatic.com/photosnew/auto/photo/jeep_grand-cherokee__576619281f.jpg	39	KA8689KX	1C4RJFBG1JC184978	2025-05-07 22:02:57.599253
156	https://auto.ria.com/uk/auto_audi_q5_38167900.html	Audi Q5 2015	13899	269000	Іван	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q5__595267322f.jpg	53	\N	\N	2025-05-07 22:02:57.599253
157	https://auto.ria.com/uk/auto_bmw_x5_37983625.html	BMW X5 2012	13800	136000	Андрій	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__590100069f.jpg	70	\N	\N	2025-05-07 22:02:57.599253
158	https://auto.ria.com/uk/auto_land_rover_range_rover_38150327.html	Land Rover Range Rover 2023	207500	12000	Jaguar Land Rover Одеса	https://cdn3.riastatic.com/photosnew/auto/photo/land-rover_range-rover__594770283f.jpg	19	0000	\N	2025-05-07 22:02:57.599253
159	https://auto.ria.com/uk/auto_volkswagen_touran_38149489.html	Volkswagen Touran 2006	5700	248000	andrij	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touran__594746178f.jpg	22	AT9779BA	WVGZZZ1TZ6W178503	2025-05-07 22:02:57.599253
160	https://auto.ria.com/uk/auto_mercedes_benz_c_class_38149040.html	Mercedes-Benz C-Class 2009	12000	230000	Діма	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_c-class__594734433f.jpg	21	CE7091EO	WDD2042921F453088	2025-05-07 22:02:57.599253
161	https://auto.ria.com/uk/auto_renault_trafic_38132343.html	Renault Trafic 2021	23000	150000	Андрій	https://cdn3.riastatic.com/photosnew/auto/photo/renault_trafic__594266068f.jpg	83	BK0500AH	VF1FL000X66948735	2025-05-07 22:02:57.599253
162	https://auto.ria.com/uk/auto_audi_q7_38131807.html	Audi Q7 2012	19300	233000		https://cdn3.riastatic.com/photosnew/auto/photo/audi_q7__594249443f.jpg	43	\N	WA1WMAFExDDxxxx16	2025-05-07 22:02:57.599253
163	https://auto.ria.com/uk/auto_lexus_nx_38259261.html	Lexus NX 2020	37770	45000		https://cdn2.riastatic.com/photosnew/auto/photo/lexus_nx__597802922f.jpg	16	KA8007AP	JTJBERBZ502059833	2025-05-07 22:02:57.599253
164	https://auto.ria.com/uk/auto_bmw_7_series_38228090.html	BMW 7 Series 2022	78800	42000	Nik	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_7-series__596952513f.jpg	100	\N	WBA7S410x0Cxxxx97	2025-05-07 22:02:57.599253
165	https://auto.ria.com/uk/auto_tesla_model_3_38130098.html	Tesla Model 3 2021	19200	69000	Елена	https://cdn1.riastatic.com/photosnew/auto/photo/tesla_model-3__596567371f.jpg	13	\N	\N	2025-05-07 22:02:57.599253
166	https://auto.ria.com/uk/auto_jeep_grand_cherokee_38241543.html	Jeep Grand Cherokee 2020	28500	60000	Антон	https://cdn0.riastatic.com/photosnew/auto/photo/jeep_grand-cherokee__597333005f.jpg	25	KA2073PE	1C4RJFBG0MC535545	2025-05-07 22:02:57.599253
167	https://auto.ria.com/uk/auto_mazda_3_38166474.html	Mazda 3 2017	6950	118000	Андрій	https://cdn2.riastatic.com/photosnew/auto/photo/mazda_3__595231022f.jpg	24	AI8400PX	3MZBN1U77JM188664	2025-05-07 22:02:57.599253
168	https://auto.ria.com/uk/auto_toyota_camry_38142258.html	Toyota Camry 2013	15999	194000	Євгеній	https://cdn0.riastatic.com/photosnew/auto/photo/toyota_camry__594540085f.jpg	33	KA7372PB	JTNBFYFK503025971	2025-05-07 22:02:57.599253
169	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_38257700.html	Mercedes-Benz GLE-Class 2021	77500	91000	Артем	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__597764602f.jpg	48	KA3860HH	W1N1673211A441975	2025-05-07 22:02:57.599253
170	https://auto.ria.com/uk/auto_bmw_5_series_38253111.html	BMW 5 Series 2021	39000	122000	Олег	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_5-series__597646733f.jpg	28	\N	WBA53BH07MCG90072	2025-05-07 22:02:57.599253
171	https://auto.ria.com/uk/auto_renault_megane_37942827.html	Renault Megane 2020	660000	77000	Ілта TRADE-IN	https://cdn2.riastatic.com/photosnew/auto/photo/renault_megane__589029132f.jpg	19	KA7634AC	VF1RFB00264991333	2025-05-07 22:02:57.599253
172	https://auto.ria.com/uk/auto_jcb_535_95_37124151.html	JCB 535-95 2015	53000	5000	Олег	https://cdn0.riastatic.com/photosnew/auto/photo/jcb_535-95__589147885f.jpg	14	\N	\N	2025-05-07 22:02:57.599253
173	https://auto.ria.com/uk/auto_audi_q8_38225115.html	Audi Q8 2019	75700	90000	EV-Cars Електроавто	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q8__596868487f.jpg	79	\N	\N	2025-05-07 22:02:57.599253
174	https://auto.ria.com/uk/auto_audi_a6_38222727.html	Audi A6 2011	16000	290000	Олександр	https://cdn3.riastatic.com/photosnew/auto/photo/audi_a6__596796468f.jpg	13	AT9795HP	WAUZZZ4G1CN045364	2025-05-07 22:02:57.599253
175	https://auto.ria.com/uk/auto_volkswagen_touareg_38199796.html	Volkswagen Touareg 2019	57000	101000	Евгений	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596157483f.jpg	57	AE0707HM	WVGZZZCRZKD048399	2025-05-07 22:02:57.599253
176	https://auto.ria.com/uk/auto_audi_q7_38184943.html	Audi Q7 2018	31700	166000	Володимир	https://cdn1.riastatic.com/photosnew/auto/photo/audi_q7__595752056f.jpg	52	HC2234AB	WA1VAAF76JD049060	2025-05-07 22:02:57.599253
177	https://auto.ria.com/uk/auto_skoda_octavia_38176417.html	Skoda Octavia 2014	9500	160000	Артем	https://cdn1.riastatic.com/photosnew/auto/photo/skoda_octavia__595526166f.jpg	29	AI4898MH	TMBAB2NE3FB006063	2025-05-07 22:02:57.599253
178	https://auto.ria.com/uk/auto_audi_q4_e_tron_37998879.html	Audi Q4 e-tron 2024	32600	1000	4Колеса	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q4-e-tron__595386752f.jpg	37	\N	\N	2025-05-07 22:02:57.599253
179	https://auto.ria.com/uk/auto_tesla_model_3_37664681.html	Tesla Model 3 2019	24000	102000	Олег	https://cdn1.riastatic.com/photosnew/auto/photo/tesla_model-3__581205886f.jpg	29	AI3333EH	5YJ3E7EB0KF474570	2025-05-07 22:02:57.599253
180	https://auto.ria.com/uk/auto_hyster_h_37800382.html	Hyster H 2003	9900	NaN	Tehnogruz ltd	https://cdn1.riastatic.com/photosnew/auto/photo/hyster_h__584943936f.jpg	6	\N	\N	2025-05-07 22:02:57.599253
181	https://auto.ria.com/uk/auto_mercedes_benz_s_class_38259933.html	Mercedes-Benz S-Class 2004	9999	257000	Даня Лебединец	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__597822092f.jpg	45	AI0005KA	WDB2201741A409464	2025-05-07 22:02:57.599253
182	https://auto.ria.com/uk/auto_hyundai_tucson_38030154.html	Hyundai Tucson 2023	39000	70000	Юрій	https://cdn3.riastatic.com/photosnew/auto/photo/hyundai_tucson__591373793f.jpg	33	KA7102MA	TMAJB811DNJ229262	2025-05-07 22:02:57.599253
183	https://auto.ria.com/uk/auto_maxus_dana_v1_37344861.html	Maxus Dana V1 2024	24900	1000	Bex Auto	https://cdn2.riastatic.com/photosnew/auto/photo/maxus_dana-v1__585784467f.jpg	40	\N	\N	2025-05-07 22:02:57.599253
184	https://auto.ria.com/uk/auto_renault_master_38254709.html	Renault Master 2021	19999	181000	Рома	https://cdn0.riastatic.com/photosnew/auto/photo/renault_master__597688880f.jpg	20	\N	\N	2025-05-07 22:02:57.599253
185	https://auto.ria.com/uk/auto_infiniti_q50_38250705.html	Infiniti Q50 2016	16200	102000	Саша	https://cdn1.riastatic.com/photosnew/auto/photo/infiniti_q50__597582821f.jpg	57	KA4665HM	JN1EV7AR9HM834434	2025-05-07 22:02:57.599253
186	https://auto.ria.com/uk/auto_volkswagen_passat_38094919.html	Volkswagen Passat 2020	15990	85000	Александр	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_passat__593212273f.jpg	20	AB6847KP		2025-05-07 22:02:57.599253
187	https://auto.ria.com/uk/auto_renault_duster_38239820.html	Renault Duster 2020	16200	160000	Микола	https://cdn0.riastatic.com/photosnew/auto/photo/renault_duster__597283285f.jpg	15	AX5383IX	VF1HJD40466160310	2025-05-07 22:02:57.599253
188	https://auto.ria.com/uk/auto_volkswagen_touareg_38204718.html	Volkswagen Touareg 2021	59999	119000	Олексій	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596304965f.jpg	106	\N	\N	2025-05-07 22:06:18.823198
189	https://auto.ria.com/uk/auto_bmw_x5_37904713.html	BMW X5 2023	99000	19000	Лідекс Машинері	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__587845502f.jpg	30	KA5033II	WBA11EV0X09S89498	2025-05-07 22:06:18.823198
190	https://auto.ria.com/uk/auto_audi_a3_38191153.html	Audi A3 2016	17300	81000	Vadim Ingerov	https://cdn3.riastatic.com/photosnew/auto/photo/audi_a3__595916178f.jpg	31	AE2577OX	WAUZZZ8V0GA153643	2025-05-07 22:06:18.823198
191	https://auto.ria.com/uk/auto_jcb_541_70_37522279.html	JCB 541-70 2008	43500	8000	Олег	https://cdn2.riastatic.com/photosnew/auto/photo/jcb_541-70__578567562f.jpg	36	\N	\N	2025-05-07 22:06:18.823198
192	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_37832325.html	Mercedes-Benz GLE-Class 2019	75000	25000	Дима	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__585824548f.jpg	14	KA8699OO	4JGFB5KE0KA031297	2025-05-07 22:06:18.823198
193	https://auto.ria.com/uk/auto_hyundai_kona_electric_38131065.html	Hyundai Kona Electric 2021	16450	43000	Сергій	https://cdn1.riastatic.com/photosnew/auto/photo/hyundai_kona-electric__594230421f.jpg	113	\N	\N	2025-05-07 22:06:18.823198
194	https://auto.ria.com/uk/auto_volkswagen_passat_38226972.html	Volkswagen Passat 2011	8000	243000	Auto	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_passat__597883241f.jpg	13	KA4410BA		2025-05-07 22:06:18.823198
195	https://auto.ria.com/uk/auto_bmw_x6_m_38199892.html	BMW X6 M 2022	129000	5000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x6-m__596165123f.jpg	84	\N	WBSCY010409K94009	2025-05-07 22:06:18.823198
196	https://auto.ria.com/uk/auto_mercedes_benz_s_class_37531018.html	Mercedes-Benz S-Class 2023	155000	22000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__593054723f.jpg	85	\N	W1K6G7GBxPAxxxx80	2025-05-07 22:06:18.823198
197	https://auto.ria.com/uk/auto_skoda_fabia_38260334.html	Skoda Fabia 2003	3950	251000	Андрій	https://cdn2.riastatic.com/photosnew/auto/photo/skoda_fabia__597830987f.jpg	77	\N	\N	2025-05-07 22:06:18.823198
198	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_38128434.html	Mercedes-Benz Sprinter 2020	27999	200000	Сергій	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__594152545f.jpg	89	\N	\N	2025-05-07 22:06:18.823198
199	https://auto.ria.com/uk/auto_volkswagen_touareg_38258950.html	Volkswagen Touareg 2022	64999	79000	Олексій	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_touareg__597793446f.jpg	111	\N	\N	2025-05-07 22:06:18.823198
200	https://auto.ria.com/uk/auto_citroen_c_elysee_38242845.html	Citroen C-Elysee 2016	5800	221000	Хорошая	https://cdn2.riastatic.com/photosnew/auto/photo/citroen_c-elysee__597734222f.jpg	65	KA0596HK	VF7DDHMZ6GJ743486	2025-05-07 22:06:18.823198
201	https://auto.ria.com/uk/auto_bmw_m3_38258484.html	BMW M3 2022	75499	26000	Дмитро	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_m3__597784105f.jpg	9	KA9596OX	WBS43AY05NFM54325	2025-05-07 22:06:18.823198
202	https://auto.ria.com/uk/auto_ford_escape_38258442.html	Ford Escape 2013	11000	280000	Petro	https://cdn2.riastatic.com/photosnew/auto/photo/ford_escape__597783122f.jpg	35	BC7282TM	1FMCU9HX9DUC87386	2025-05-07 22:06:18.823198
203	https://auto.ria.com/uk/auto_indian_challenger_38255748.html	Indian Challenger 2023	40000	3000	Денис	https://cdn4.riastatic.com/photosnew/auto/photo/indian_challenger__597713519f.jpg	10	\N	56KLCCRR0P3415801	2025-05-07 22:06:18.823198
204	https://auto.ria.com/uk/auto_volkswagen_touareg_38208385.html	Volkswagen Touareg 2018	41650	194000	AUTO	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596409111f.jpg	72	AA0786MC	WVGZZZCRxJDxxxx54	2025-05-07 22:06:18.823198
205	https://auto.ria.com/uk/auto_skoda_octavia_38102508.html	Skoda Octavia 2018	15999	146000	Олександр	https://cdn2.riastatic.com/photosnew/auto/photo/skoda_octavia__593430912f.jpg	29	\N	\N	2025-05-07 22:06:18.823198
206	https://auto.ria.com/uk/auto_cesab_drago_38128686.html	Cesab Drago 2012	13000	5000	Виктор	https://cdn4.riastatic.com/photosnew/auto/photo/cesab_drago__594178894f.jpg	13	\N	\N	2025-05-07 22:06:18.823198
207	https://auto.ria.com/uk/auto_volkswagen_touareg_38254303.html	Volkswagen Touareg 2019	57999	99000	Олексій	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__597679668f.jpg	122	\N	\N	2025-05-07 22:06:18.823198
208	https://auto.ria.com/uk/auto_bmw_x5_38110451.html	BMW X5 2013	16999	166000		https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__597455529f.jpg	16	\N		2025-05-07 22:06:18.823198
209	https://auto.ria.com/uk/auto_renault_master_38120997.html	Renault Master 2021	21000	165000	Олег	https://cdn1.riastatic.com/photosnew/auto/photo/renault_master__593960116f.jpg	31	\N	\N	2025-05-07 22:06:18.823198
210	https://auto.ria.com/uk/auto_mercedes_benz_glb_class_37949364.html	Mercedes-Benz GLB-Class 2021	28200	38000	Сергей	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_glb-class__589099363f.jpg	49	\N	W1N4M4GB8MW161048	2025-05-07 22:06:18.823198
211	https://auto.ria.com/uk/auto_bmw_x5_38240200.html	BMW X5 2015	33900	296000	Володимир	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x5__597293444f.jpg	80	BK3588IE	WBAKS810900M49917	2025-05-07 22:06:18.823198
212	https://auto.ria.com/uk/auto_infiniti_q50_38239643.html	Infiniti Q50 2018	17500	80000	Анастасія	https://cdn4.riastatic.com/photosnew/auto/photo/infiniti_q50__597278229f.jpg	21	KA9587BC	JN1EV7AP1KM515793	2025-05-07 22:06:18.823198
213	https://auto.ria.com/uk/auto_audi_a4_38233366.html	Audi A4 2017	21000	239000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/audi_a4__597098193f.jpg	39	AI2494PI	WAUZZZF4XHA148185	2025-05-07 22:06:18.823198
214	https://auto.ria.com/uk/auto_audi_q4_e_tron_38229788.html	Audi Q4 e-tron 2024	37200	1000	4Колеса	https://cdn4.riastatic.com/photosnew/auto/photo/audi_q4-e-tron__596997294f.jpg	14	\N	\N	2025-05-07 22:06:18.823198
215	https://auto.ria.com/uk/auto_bmw_x6_36745848.html	BMW X6 2023	109900	1000	БІР ПРАЙД	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x6__596687254f.jpg	62	\N	WBA11EY0X09U07111	2025-05-07 22:06:18.823198
216	https://auto.ria.com/uk/auto_renault_duster_38218480.html	Renault Duster 2021	16300	37000	Ірина	https://cdn3.riastatic.com/photosnew/auto/photo/renault_duster__596682893f.jpg	22	KA2608CC	VF1HJD20866921276	2025-05-07 22:06:18.823198
217	https://auto.ria.com/uk/auto_bmw_m8_38214393.html	BMW M8 2023	167500	34000	Иван	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_m8__596569488f.jpg	18	\N	WBSAE01010CN08599	2025-05-07 22:06:18.823198
218	https://auto.ria.com/uk/auto_volkswagen_touareg_38213621.html	Volkswagen Touareg 2022	65999	112000	Олексій	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596551273f.jpg	114	\N	\N	2025-05-07 22:06:18.823198
219	https://auto.ria.com/uk/auto_skoda_octavia_38213497.html	Skoda Octavia 2011	8700	227000	Володимир	https://cdn3.riastatic.com/photosnew/auto/photo/skoda_octavia__596546963f.jpg	67	\N	\N	2025-05-07 22:06:18.823198
220	https://auto.ria.com/uk/auto_volkswagen_touareg_38204687.html	Volkswagen Touareg 2022	63999	111000	Олексій	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596303142f.jpg	101	\N	\N	2025-05-07 22:06:18.823198
221	https://auto.ria.com/uk/auto_audi_q8_35499693.html	Audi Q8 2023	105500	12000	Мариуш	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q8__553599483f.jpg	35	\N	WAUZZZF14PD040132	2025-05-07 22:06:18.823198
222	https://auto.ria.com/uk/auto_bmw_7_series_38169842.html	BMW 7 Series 2023	179900	10000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_7-series__595320868f.jpg	83	\N	WBA31EJ0x0Cxxxx75	2025-05-07 22:06:18.823198
223	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_37187228.html	Mercedes-Benz GLE-Class 2023	110900	1000	БІР ПРАЙД	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__593288871f.jpg	63	\N	W1NFB3DBxPBxxxx45	2025-05-07 22:06:18.823198
224	https://auto.ria.com/uk/auto_audi_q8_37871473.html	Audi Q8 2025	93900	1000	БІР ПРАЙД	https://cdn4.riastatic.com/photosnew/auto/photo/audi_q8__590775639f.jpg	66	\N	\N	2025-05-07 22:06:18.823198
225	https://auto.ria.com/uk/auto_hyundai_kona_electric_38093385.html	Hyundai Kona Electric 2021	17350	55000		https://cdn2.riastatic.com/photosnew/auto/photo/hyundai_kona-electric__593167737f.jpg	101	\N	\N	2025-05-07 22:06:18.823198
226	https://auto.ria.com/uk/auto_land_rover_range_rover_evoque_38012029.html	Land Rover Range Rover Evoque 2024	56500	8000	JAGUAR LAND ROVER КИЇВ ЗАХІД	https://cdn4.riastatic.com/photosnew/auto/photo/land-rover_range-rover-evoque__590875809f.jpg	18	\N	SALZA2BN0SH267872	2025-05-07 22:06:18.823198
227	https://auto.ria.com/uk/auto_mercedes_benz_s_class_37780152.html	Mercedes-Benz S-Class 2023	173000	29000	Максим	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__584380278f.jpg	12	\N	W1K6G7GB4RA256645	2025-05-07 22:06:18.823198
228	https://auto.ria.com/uk/auto_hyundai_kona_electric_37986251.html	Hyundai Kona Electric 2021	17850	49000	Сергій	https://cdn0.riastatic.com/photosnew/auto/photo/hyundai_kona-electric__590175930f.jpg	98	\N	KMHK581GxLUxxxx13	2025-05-07 22:06:18.823198
229	https://auto.ria.com/uk/auto_volvo_xc90_38225391.html	Volvo XC90 2016	26499	254000	AUTO DVIG	https://cdn1.riastatic.com/photosnew/auto/photo/volvo_xc90__596877461f.jpg	94	AC0444BI	YV1LF68BCH1128730	2025-05-07 22:06:18.823198
230	https://auto.ria.com/uk/auto_mercedes_benz_v_class_38256261.html	Mercedes-Benz V-Class 2021	65000	122000	Евгеній	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_v-class__597724822f.jpg	13	KA2340CH	W1V44781313843211	2025-05-07 22:06:18.823198
231	https://auto.ria.com/uk/auto_bmw_7_series_37964815.html	BMW 7 Series 2023	160000	25000	Олег	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_7-series__589563610f.jpg	52	\N	WBA33EJ04PCN06744	2025-05-07 22:06:18.823198
232	https://auto.ria.com/uk/auto_hyundai_kona_electric_34220437.html	Hyundai Kona Electric 2022	23000	14000	Максим	https://cdn4.riastatic.com/photosnew/auto/photo/hyundai_kona-electric__489265614f.jpg	21	\N	KM8K33AG7NU154763	2025-05-07 22:06:18.823198
233	https://auto.ria.com/uk/auto_nissan_qashqai_38212465.html	Nissan Qashqai 2012	12900	102000	Татьяна	https://cdn4.riastatic.com/photosnew/auto/photo/nissan_qashqai__596517754f.jpg	10	\N	\N	2025-05-07 22:06:18.823198
234	https://auto.ria.com/uk/auto_yamaha_r1m_38254755.html	Yamaha R1M 2023	31000	4000	Михаил	https://cdn2.riastatic.com/photosnew/auto/photo/yamaha_r1m__597689012f.jpg	3	\N	\N	2025-05-07 22:06:18.823198
235	https://auto.ria.com/uk/auto_volkswagen_jetta_38252299.html	Volkswagen Jetta 2014	19999	99000	Євгеній	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_jetta__597626998f.jpg	20	AA5777TB	3VW4S7AJ8FM243800	2025-05-07 22:06:18.823198
236	https://auto.ria.com/uk/auto_land_rover_range_rover_evoque_38242569.html	Land Rover Range Rover Evoque 2019	34500	35000		https://cdn4.riastatic.com/photosnew/auto/photo/land-rover_range-rover-evoque__597368184f.jpg	11	AA8088XC	SALZA2BNXLH040187	2025-05-07 22:06:18.823198
237	https://auto.ria.com/uk/auto_bmw_x6_m_38239750.html	BMW X6 M 2022	126000	25000	Roman	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x6-m__597281413f.jpg	47	\N	WBSCY010X09K94404	2025-05-07 22:06:18.823198
238	https://auto.ria.com/uk/auto_audi_e_tron_38233628.html	Audi e-tron 2022	41500	20000	Сергій	https://cdn4.riastatic.com/photosnew/auto/photo/audi_e-tron__597101394f.jpg	28	AE2042ZA	WA1AAAGE4NB025515	2025-05-07 22:06:18.823198
239	https://auto.ria.com/uk/auto_jcb_533_105_38054101.html	JCB 533-105 2017	46000	NaN	Пак - Трейд	https://cdn2.riastatic.com/photosnew/auto/photo/jcb_533-105__592071412f.jpg	15	\N	\N	2025-05-07 22:06:18.823198
240	https://auto.ria.com/uk/auto_man_tga_33595362.html	MAN TGA 2003	41000	425000	Виталий	https://cdn2.riastatic.com/photosnew/auto/photo/man_tga__508334742f.jpg	16	AC5976HI	WMAH12ZZx2Mxxxx70	2025-05-07 22:06:18.823198
241	https://auto.ria.com/uk/auto_audi_q8_38057862.html	Audi Q8 2025	95900	1000	БІР ПРАЙД	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q8__592167423f.jpg	53	\N	\N	2025-05-07 22:06:18.823198
242	https://auto.ria.com/uk/auto_jcb_535_125_37220277.html	JCB 535-125 2013	44000	NaN	Пак - Трейд	https://cdn0.riastatic.com/photosnew/auto/photo/jcb_535-125__593367660f.jpg	17	\N	\N	2025-05-07 22:06:18.823198
243	https://auto.ria.com/uk/auto_volkswagen_touareg_36468763.html	Volkswagen Touareg 2019	48700	194000	Олег	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_touareg__548970079f.jpg	54	\N	WVGZZZCRxLDxxxx66	2025-05-07 22:06:18.823198
244	https://auto.ria.com/uk/auto_jcb_535_125_37887022.html	JCB 535-125 2015	51000	3000	Лідекс Машинері	https://cdn2.riastatic.com/photosnew/auto/photo/jcb_535-125__594767292f.jpg	19	\N	\N	2025-05-07 22:06:18.823198
245	https://auto.ria.com/uk/auto_bmw_m3_38180834.html	BMW M3 2022	106000	11000	Влад	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_m3__595833792f.jpg	23	AX7394OB	WBS41AY050FM63976	2025-05-07 22:06:18.823198
246	https://auto.ria.com/uk/auto_bmw_x5_m_38134622.html	BMW X5 M 2022	123500	28000	Максим	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5-m__594324431f.jpg	42	KA0031XM	WBSJU010409L28131	2025-05-07 22:06:18.823198
247	https://auto.ria.com/uk/auto_porsche_taycan_38132098.html	Porsche Taycan 2022	129900	11000	Дмитрий	https://cdn3.riastatic.com/photosnew/auto/photo/porsche_taycan__594259698f.jpg	22	BC2831YB	WP0ZZZY1ZNSA50663	2025-05-07 22:06:18.823198
248	https://auto.ria.com/uk/auto_porsche_cayenne_37982346.html	Porsche Cayenne 2023	122000	13000	Анна	https://cdn4.riastatic.com/photosnew/auto/photo/porsche_cayenne__590055274f.jpg	22	KA5021MK	WP1ZZZ9YZRDA47144	2025-05-07 22:06:18.823198
249	https://auto.ria.com/uk/auto_kia_sorento_38262624.html	Kia Sorento 2012	13500	224000	Олександр	https://cdn3.riastatic.com/photosnew/auto/photo/kia_sorento__597891113f.jpg	18	AI4809PH	Y6DKU814DC5238547	2025-05-07 22:06:18.823198
250	https://auto.ria.com/uk/auto_toyota_land_cruiser_prado_38254288.html	Toyota Land Cruiser Prado 2010	20700	102000	GARANT AUTO	https://cdn0.riastatic.com/photosnew/auto/photo/toyota_land-cruiser-prado__597676855f.jpg	99	HH0100BB	JTEBX9FJ2A5003538	2025-05-07 22:06:18.823198
251	https://auto.ria.com/uk/auto_ducati_diavel_37296130.html	Ducati Diavel 2013	12000	36000	Павло	https://cdn3.riastatic.com/photosnew/auto/photo/ducati_diavel__571028278f.jpg	23	\N	ZDMG100ABDB018162	2025-05-07 22:06:18.823198
252	https://auto.ria.com/uk/auto_skoda_superb_38220956.html	Skoda Superb 2013	11800	163000	Олег	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_superb__596747800f.jpg	52	\N	\N	2025-05-07 22:06:18.823198
253	https://auto.ria.com/uk/auto_lexus_rx_38105409.html	Lexus RX 2018	35950	85000	Володимир	https://cdn2.riastatic.com/photosnew/auto/photo/lexus_rx__593517477f.jpg	12	BC1404TP	JTJDGKCA3J2000901	2025-05-07 22:06:18.823198
254	https://auto.ria.com/uk/auto_volkswagen_touareg_38132267.html	Volkswagen Touareg 2014	24000	206000	Игорь	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_touareg__594262688f.jpg	8	BH3086HX		2025-05-07 22:06:18.823198
286	https://auto.ria.com/uk/auto_toyota_rav4_38152343.html	Toyota RAV4 2025	40900	1000	Роман	https://cdn0.riastatic.com/photosnew/auto/photo/toyota_rav4__594822945f.jpg	74	\N	\N	2025-05-07 22:06:18.823198
255	https://auto.ria.com/uk/auto_bmw_5_series_38103424.html	BMW 5 Series 2012	14000	152000	Vasil	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_5-series__593452025f.jpg	53	AO8008XC	WBAFU7C56CDU60143	2025-05-07 22:06:18.823198
256	https://auto.ria.com/uk/auto_mercedes_benz_s_class_37885157.html	Mercedes-Benz S-Class 2023	131000	23000	Дмитро	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__587292435f.jpg	42	\N	W1K6G3DB5PA212468	2025-05-07 22:06:18.823198
257	https://auto.ria.com/uk/auto_audi_q8_38069680.html	Audi Q8 2025	94900	1000	БІР ПРАЙД	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q8__592504513f.jpg	52	\N	\N	2025-05-07 22:06:18.823198
258	https://auto.ria.com/uk/auto_jcb_531_70_38194794.html	JCB 531-70 2017	56000	NaN	Пак - Трейд	https://cdn0.riastatic.com/photosnew/auto/photo/jcb_531-70__596019120f.jpg	16	\N	\N	2025-05-07 22:06:18.823198
259	https://auto.ria.com/uk/auto_land_rover_range_rover_38045022.html	Land Rover Range Rover 2023	7200000	23000	JAGUAR LAND ROVER КИЇВ ЗАХІД	https://cdn3.riastatic.com/photosnew/auto/photo/land-rover_range-rover__591833088f.jpg	44	\N	SALKABBWXPA045169	2025-05-07 22:06:18.823198
260	https://auto.ria.com/uk/auto_audi_q8_38145620.html	Audi Q8 2025	109900	1000	БІР ПРАЙД	https://cdn0.riastatic.com/photosnew/auto/photo/audi_q8__594639490f.jpg	60	BH5445KI	WAUZZZF16SD030520	2025-05-07 22:06:18.823198
261	https://auto.ria.com/uk/auto_bmw_x6_37836450.html	BMW X6 2022	92900	13000	БІР ПРАЙД	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x6__585938714f.jpg	59	\N	WBAGT210909L08650	2025-05-07 22:06:18.823198
262	https://auto.ria.com/uk/auto_jcb_535_125_38022087.html	JCB 535-125 2017	53000	4000	Лідекс Машинері	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_535-125__594954273f.jpg	17	\N	\N	2025-05-07 22:06:18.823198
263	https://auto.ria.com/uk/auto_nissan_juke_38261767.html	Nissan Juke 2015	11700	117000	Денис	https://cdn1.riastatic.com/photosnew/auto/photo/nissan_juke__597868496f.jpg	17	BH5524TB	JN8AF5MR9GT605690	2025-05-07 22:06:18.823198
264	https://auto.ria.com/uk/auto_volkswagen_touran_38261530.html	Volkswagen Touran 2006	5999	189000	Олег	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touran__597863255f.jpg	45	\N	\N	2025-05-07 22:06:18.823198
265	https://auto.ria.com/uk/auto_bmw_x5_38175308.html	BMW X5 2024	101500	30000	Стас	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x5__595493153f.jpg	81	\N	\N	2025-05-07 22:06:18.823198
266	https://auto.ria.com/uk/auto_porsche_macan_38258081.html	Porsche Macan 2021	58000	37000	Cергей	https://cdn0.riastatic.com/photosnew/auto/photo/porsche_macan__597773385f.jpg	23	AE6660EX	WP1AA2A50NLB00255	2025-05-07 22:06:18.823198
267	https://auto.ria.com/uk/auto_mercedes_benz_maybach_38114442.html	Mercedes-Benz Maybach 2019	115000	38000	Олег	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_maybach__593787996f.jpg	53	\N	\N	2025-05-07 22:06:18.823198
268	https://auto.ria.com/uk/auto_kia_sorento_38255354.html	Kia Sorento 2021	24500	86000	Кристина	https://cdn4.riastatic.com/photosnew/auto/photo/kia_sorento__597698324f.jpg	36	\N	5XYRG4LCXMG040845	2025-05-07 22:06:18.823198
269	https://auto.ria.com/uk/auto_jeep_grand_cherokee_38249436.html	Jeep Grand Cherokee 2015	25500	250000	Михаил	https://cdn2.riastatic.com/photosnew/auto/photo/jeep_grand-cherokee__597549612f.jpg	12	CA7070EP	1C4RJFJMXFC746908	2025-05-07 22:06:18.823198
270	https://auto.ria.com/uk/auto_mercedes_benz_s_class_38089084.html	Mercedes-Benz S-Class 2018	50900	118000	Николай	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__593048798f.jpg	28	\N	WDDUF2BBxJAxxxx70	2025-05-07 22:06:18.823198
271	https://auto.ria.com/uk/auto_volkswagen_t_roc_37587980.html	Volkswagen T-Roc 2019	22000	80000	Саша	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_t-roc__579021570f.jpg	61	AO0708CK	WVGZZZA1ZKV161629	2025-05-07 22:06:18.823198
272	https://auto.ria.com/uk/auto_bmw_5_series_38243748.html	BMW 5 Series 2017	33999	98000		https://cdn3.riastatic.com/photosnew/auto/photo/bmw_5-series__597396123f.jpg	18	KA7872OT	WBAJE5C55JG917712	2025-05-07 22:06:18.823198
273	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_38068234.html	Mercedes-Benz GLE-Class 2019	67000	88000	Андрей	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__592462750f.jpg	73	KA8684PA	WDC16712x1Axxxx44	2025-05-07 22:06:18.823198
274	https://auto.ria.com/uk/auto_land_rover_range_rover_35614372.html	Land Rover Range Rover 2022	158500	19000	PLATINUM AUTO	https://cdn0.riastatic.com/photosnew/auto/photo/land-rover_range-rover__525152795f.jpg	55	\N	SALKA9BWXPA029577	2025-05-07 22:06:18.823198
275	https://auto.ria.com/uk/auto_toyota_land_cruiser_prado_38226579.html	Toyota Land Cruiser Prado 2023	59999	47000	Іван	https://cdn3.riastatic.com/photosnew/auto/photo/toyota_land-cruiser-prado__596908458f.jpg	28	AB4443EX	JTEBR3FJ305024811	2025-05-07 22:06:18.823198
276	https://auto.ria.com/uk/auto_audi_q7_38212910.html	Audi Q7 2019	52800	155000	Олексій	https://cdn4.riastatic.com/photosnew/auto/photo/audi_q7__596532354f.jpg	168	\N	\N	2025-05-07 22:06:18.823198
277	https://auto.ria.com/uk/auto_renault_duster_38072538.html	Renault Duster 2022	18800	69000	avto	https://cdn3.riastatic.com/photosnew/auto/photo/renault_duster__592585278f.jpg	18	BI5777CX	VF1HJD20368660661	2025-05-07 22:06:18.823198
278	https://auto.ria.com/uk/auto_bmw_x7_38193908.html	BMW X7 2022	117999	53000	Алексей	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x7__595990252f.jpg	29	KA0900IO	WBA21EN0909P21308	2025-05-07 22:06:18.823198
279	https://auto.ria.com/uk/auto_bmw_x6_38188646.html	BMW X6 2022	80000	62000	Александр	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x6__595844259f.jpg	32	AM4171HX	WBACY610009L25022	2025-05-07 22:06:18.823198
280	https://auto.ria.com/uk/auto_ford_fusion_38259957.html	Ford Fusion 2017	12400	126000	Александр	https://cdn1.riastatic.com/photosnew/auto/photo/ford_fusion__597821141f.jpg	39	HH3474AI	3FA6P0H73HR348884	2025-05-07 22:06:18.823198
281	https://auto.ria.com/uk/auto_volkswagen_tiguan_38259530.html	Volkswagen Tiguan 2012	15350	151000	Остап	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__597811246f.jpg	14	AT3001HX	WVGZZZ5NZDW553791	2025-05-07 22:06:18.823198
282	https://auto.ria.com/uk/auto_mercedes_benz_gla_class_38259025.html	Mercedes-Benz GLA-Class 2017	26000	94000	Назар	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gla-class__597796104f.jpg	28	KA0107EH	WDC1569021J412231	2025-05-07 22:06:18.823198
283	https://auto.ria.com/uk/auto_porsche_macan_38256278.html	Porsche Macan 2019	45900	91000	Владислав	https://cdn2.riastatic.com/photosnew/auto/photo/porsche_macan__597727527f.jpg	17	KA2725HB	WP1AB2A53KLB32352	2025-05-07 22:06:18.823198
284	https://auto.ria.com/uk/auto_volkswagen_multivan_38212844.html	Volkswagen Multivan 2014	34900	119000	Константин	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_multivan__596528112f.jpg	16	\N	WV2ZZZ7HxDHxxxx94	2025-05-07 22:06:18.823198
285	https://auto.ria.com/uk/auto_nissan_juke_38255177.html	Nissan Juke 2014	10500	107000		https://cdn3.riastatic.com/photosnew/auto/photo/nissan_juke__597698758f.jpg	32	AA5011OK	SJNFBAF15U6533869	2025-05-07 22:06:18.823198
287	https://auto.ria.com/uk/auto_mercedes_benz_gl_class_38087671.html	Mercedes-Benz GL-Class 2013	31300	167000	Олександр	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_gl-class__593012770f.jpg	142	KA3243OX	4JGDF2EE0DA202199	2025-05-07 22:06:18.823198
288	https://auto.ria.com/uk/auto_tesla_model_3_38253620.html	Tesla Model 3 2021	21500	103000	TeslaPark	https://cdn3.riastatic.com/photosnew/auto/photo/tesla_model-3__597659758f.jpg	24	TPRK	5YJ3E1EB3MF997808	2025-05-07 22:06:18.823198
289	https://auto.ria.com/uk/auto_audi_e_tron_38245294.html	Audi e-tron 2021	42000	36000	Сергій	https://cdn2.riastatic.com/photosnew/auto/photo/audi_e-tron__597441752f.jpg	11	\N		2025-05-07 22:06:18.823198
290	https://auto.ria.com/uk/auto_audi_q8_38101792.html	Audi Q8 2025	110900	1000	БІР ПРАЙД	https://cdn4.riastatic.com/photosnew/auto/photo/audi_q8__593577844f.jpg	72	\N	\N	2025-05-07 22:06:18.823198
291	https://auto.ria.com/uk/auto_lexus_rx_38204234.html	Lexus RX 2019	43350	115000	Роман	https://cdn2.riastatic.com/photosnew/auto/photo/lexus_rx__596289137f.jpg	23	\N	JTJBZMCA702045111	2025-05-07 22:06:18.823198
292	https://auto.ria.com/uk/auto_land_rover_range_rover_38089782.html	Land Rover Range Rover 2023	156000	80000	Аеліта Преміум	https://cdn3.riastatic.com/photosnew/auto/photo/land-rover_range-rover__593068323f.jpg	40	\N	SALKA9BW0PA044170	2025-05-07 22:06:18.823198
293	https://auto.ria.com/uk/auto_audi_q8_38223039.html	Audi Q8 2025	110900	1000	БІР ПРАЙД	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q8__596805917f.jpg	74	\N	WAUZZZF11SD032983	2025-05-07 22:06:18.823198
294	https://auto.ria.com/uk/auto_volkswagen_touareg_38220770.html	Volkswagen Touareg 2023	59500	98000	Дмитро	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_touareg__596743609f.jpg	32	KE0373AO	WVGZZZCRXPD027426	2025-05-07 22:06:18.823198
295	https://auto.ria.com/uk/auto_hyundai_tucson_38210435.html	Hyundai Tucson 2009	8500	217000		https://cdn4.riastatic.com/photosnew/auto/photo/hyundai_tucson__596456609f.jpg	5	AX1477KT	KMHJN81BP9U056499	2025-05-07 22:06:18.823198
296	https://auto.ria.com/uk/auto_audi_q8_37886462.html	Audi Q8 2024	110900	1000	БІР ПРАЙД	https://cdn1.riastatic.com/photosnew/auto/photo/audi_q8__587328466f.jpg	46	\N	WAUZZZF16SD017458	2025-05-07 22:06:18.823198
297	https://auto.ria.com/uk/auto_skoda_kodiaq_37914543.html	Skoda Kodiaq 2024	47500	15000	Віталій	https://cdn4.riastatic.com/photosnew/auto/photo/skoda_kodiaq__588115069f.jpg	20	KA0010IE	TMBLN6NS7RB400991	2025-05-07 22:06:18.823198
298	https://auto.ria.com/uk/auto_mercedes_benz_s_class_38194302.html	Mercedes-Benz S-Class 2021	109222	47000	Васілій	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__596004777f.jpg	65	\N	W1K22313x1Axxxx46	2025-05-07 22:06:18.823198
299	https://auto.ria.com/uk/auto_renault_master_38262962.html	Renault Master 2021	20999	328000	Ігор	https://cdn2.riastatic.com/photosnew/auto/photo/renault_master__597901847f.jpg	104	\N	\N	2025-05-07 22:06:18.823198
300	https://auto.ria.com/uk/auto_renault_megane_38262679.html	Renault Megane 2012	7999	235000	Vitalii	https://cdn0.riastatic.com/photosnew/auto/photo/renault_megane__597893455f.jpg	59	\N	\N	2025-05-07 22:06:18.823198
301	https://auto.ria.com/uk/auto_skoda_octavia_38120819.html	Skoda Octavia 2009	7499	240000	Олег	https://cdn4.riastatic.com/photosnew/auto/photo/skoda_octavia__593953009f.jpg	59	\N	\N	2025-05-07 22:06:18.823198
302	https://auto.ria.com/uk/auto_mercedes_benz_gla_class_38243011.html	Mercedes-Benz GLA-Class 2017	23000	72000	mihail	https://cdn0.riastatic.com/photosnew/auto/photo/mercedes-benz_gla-class__597744710f.jpg	49	KA1474KK	WDC1569431J447662	2025-05-07 22:06:18.823198
303	https://auto.ria.com/uk/auto_mercedes_benz_gl_class_38178676.html	Mercedes-Benz GL-Class 2013	44000	84000	Игорь	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_gl-class__595586363f.jpg	34	\N		2025-05-07 22:06:18.823198
304	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_35961442.html	Mercedes-Benz Sprinter 2016	21500	377000	Александр	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__567772634f.jpg	18	AE5440OI		2025-05-07 22:06:18.823198
305	https://auto.ria.com/uk/auto_audi_q5_38089767.html	Audi Q5 2013	14500	159000	Сергій	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q5__593067357f.jpg	36	\N	\N	2025-05-07 22:06:18.823198
306	https://auto.ria.com/uk/auto_subaru_forester_38223752.html	Subaru Forester 2005	6600	195000	Вадим	https://cdn1.riastatic.com/photosnew/auto/photo/subaru_forester__596827676f.jpg	50	BH4443AM	\N	2025-05-07 22:06:18.823198
307	https://auto.ria.com/uk/auto_audi_e_tron_38112858.html	Audi e-tron 2022	27999	165000	VIP INVEST AUTO	https://cdn1.riastatic.com/photosnew/auto/photo/audi_e-tron__593745291f.jpg	124	\N	\N	2025-05-07 22:06:18.823198
308	https://auto.ria.com/uk/auto_bmw_2_series_gran_coupe_38158384.html	BMW 2 Series Gran Coupe 2024	46500	1000	Роман	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_2-series-gran-coupe__595000790f.jpg	111	\N	\N	2025-05-07 22:06:18.823198
309	https://auto.ria.com/uk/auto_ford_fusion_38258807.html	Ford Fusion 2016	10999	200000	Андрій	https://cdn3.riastatic.com/photosnew/auto/photo/ford_fusion__597792353f.jpg	90	AC6778HP	3FA6P0H9XGR376469	2025-05-07 22:06:18.823198
310	https://auto.ria.com/uk/auto_skoda_kodiaq_38256415.html	Skoda Kodiaq 2019	32900	123000		https://cdn1.riastatic.com/photosnew/auto/photo/skoda_kodiaq__597732101f.jpg	40	\N	\N	2025-05-07 22:06:18.823198
311	https://auto.ria.com/uk/auto_hyundai_tucson_38116880.html	Hyundai Tucson 2009	9850	117000		https://cdn0.riastatic.com/photosnew/auto/photo/hyundai_tucson__597712485f.jpg	17	\N	Y6LJN81Bx9Lxxxx53	2025-05-07 22:06:18.823198
312	https://auto.ria.com/uk/auto_toyota_rav4_37992989.html	Toyota RAV4 2017	26200	81000	Юрій	https://cdn3.riastatic.com/photosnew/auto/photo/toyota_rav4__590348548f.jpg	110	KA4289PA	JTMRBREV90D087562	2025-05-07 22:06:18.823198
313	https://auto.ria.com/uk/auto_jcb_540_140_38254043.html	JCB 540-140 2018	47000	NaN	Пак - Трейд	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_540-140__597672323f.jpg	17	\N	\N	2025-05-07 22:06:18.823198
314	https://auto.ria.com/uk/auto_tesla_model_3_38223107.html	Tesla Model 3 2018	9500	378000	Саша	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-3__596808639f.jpg	9	\N	\N	2025-05-07 22:06:18.823198
315	https://auto.ria.com/uk/auto_bmw_ix_38251426.html	BMW iX 2022	64999	42000	Дмитро	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_ix__597603828f.jpg	21	\N	WB533CF00PCK60576	2025-05-07 22:06:18.823198
316	https://auto.ria.com/uk/auto_audi_a4_38110410.html	Audi A4 2011	10300	255000	Віталій	https://cdn4.riastatic.com/photosnew/auto/photo/audi_a4__593673199f.jpg	18	BO8676EI	WAUFFAFL4BN052203	2025-05-07 22:06:18.823198
317	https://auto.ria.com/uk/auto_volkswagen_multivan_38249445.html	Volkswagen Multivan 2020	61500	115000	Александр	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_multivan__597553263f.jpg	39	KA9884BX	WV2ZZZ7HZMH053637	2025-05-07 22:06:18.823198
318	https://auto.ria.com/uk/auto_audi_a4_38249111.html	Audi A4 2009	11999	286000	Владислав	https://cdn0.riastatic.com/photosnew/auto/photo/audi_a4__597542885f.jpg	29	AM2219HT	WAUZZZ8K59A189384	2025-05-07 22:06:18.823198
319	https://auto.ria.com/uk/auto_audi_a6_38249045.html	Audi A6 2014	14300	274000	Олег	https://cdn0.riastatic.com/photosnew/auto/photo/audi_a6__597672085f.jpg	16	KA0792PE	WAUZZZ4G4EN147034	2025-05-07 22:06:18.823198
320	https://auto.ria.com/uk/auto_hyundai_santa_fe_38106533.html	Hyundai Santa FE 2012	14300	217000	Олексій	https://cdn0.riastatic.com/photosnew/auto/photo/hyundai_santa-fe__593552115f.jpg	136	\N	\N	2025-05-07 22:06:18.823198
321	https://auto.ria.com/uk/auto_renault_trafic_38247849.html	Renault Trafic 2021	19800	96000	Олексій	https://cdn0.riastatic.com/photosnew/auto/photo/renault_trafic__597511625f.jpg	85	\N	\N	2025-05-07 22:06:18.823198
322	https://auto.ria.com/uk/auto_volkswagen_touareg_38243364.html	Volkswagen Touareg 2014	21700	148000		https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touareg__597385525f.jpg	12	\N	WVGZZZ7PxEDxxxx79	2025-05-07 22:06:18.823198
323	https://auto.ria.com/uk/auto_bmw_ix_38239621.html	BMW iX 2022	45500	59000	VIP INVEST AUTO	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_ix__597276723f.jpg	148	\N	\N	2025-05-07 22:06:18.823198
324	https://auto.ria.com/uk/auto_porsche_macan_38239290.html	Porsche Macan 2018	32800	115000	Vladi	https://cdn2.riastatic.com/photosnew/auto/photo/porsche_macan__597268342f.jpg	60	AA1727CC	WP1ZZZ95ZJLB15473	2025-05-07 22:06:18.823198
325	https://auto.ria.com/uk/auto_toyota_rav4_38238761.html	Toyota RAV4 2022	1120000	75000	Тойота Центр Київ ВІДІ Автострада	https://cdn3.riastatic.com/photosnew/auto/photo/toyota_rav4__597251703f.jpg	10	\N	JTMZ43FVX0D113639	2025-05-07 22:06:18.823198
326	https://auto.ria.com/uk/auto_volkswagen_multivan_38093612.html	Volkswagen Multivan 2012	20999	220000	Олександр	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_multivan__595000656f.jpg	46	KA0409IO	WV2ZZZ7HZCH111440	2025-05-07 22:06:18.823198
327	https://auto.ria.com/uk/auto_bmw_5_series_37747289.html	BMW 5 Series 2010	16700	290000	Вячеслав	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_5-series__583484177f.jpg	60	BI9696EE	WBAFU7C56BC777392	2025-05-07 22:06:18.823198
328	https://auto.ria.com/uk/auto_skoda_octavia_38224786.html	Skoda Octavia 2003	4400	237000	Ігор	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_octavia__596859475f.jpg	34	\N	\N	2025-05-07 22:06:18.823198
329	https://auto.ria.com/uk/auto_renault_master_38123776.html	Renault Master 2016	17500	183000	AutoPlus UA	https://cdn0.riastatic.com/photosnew/auto/photo/renault_master__594031615f.jpg	117	HH6067AK	VF1MAF4SE53563629	2025-05-07 22:06:18.823198
330	https://auto.ria.com/uk/auto_volvo_xc90_38217019.html	Volvo XC90 2021	47000	45000	Vlad	https://cdn0.riastatic.com/photosnew/auto/photo/volvo_xc90__596639590f.jpg	9	\N	YV4A221LXN1820264	2025-05-07 22:06:18.823198
331	https://auto.ria.com/uk/auto_toyota_rav4_38216985.html	Toyota RAV4 2021	1189000	144000	Тойота Центр Київ ВІДІ Автострада	https://cdn0.riastatic.com/photosnew/auto/photo/toyota_rav4__596639930f.jpg	10	\N	JTMW23FV20D078815	2025-05-07 22:06:18.823198
332	https://auto.ria.com/uk/auto_polestar_2_37669504.html	Polestar 2 2023	28000	1000	auto	https://cdn0.riastatic.com/photosnew/auto/photo/polestar_2__592611050f.jpg	27	AA2312YC	YSMFD3KA2RL219189	2025-05-07 22:06:18.823198
333	https://auto.ria.com/uk/auto_tesla_model_y_38079635.html	Tesla Model Y 2023	29999	27000	TeslaPark	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-y__594137779f.jpg	25	\N	7SAYGDEE5PF647468	2025-05-07 22:06:18.823198
334	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_37769814.html	Mercedes-Benz GLE-Class 2019	49900	113000	Гаїбов	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__584096354f.jpg	46	BH8308TT	4JGFB4KBXLA009423	2025-05-07 22:06:18.823198
335	https://auto.ria.com/uk/auto_tesla_model_s_38182881.html	Tesla Model S 2017	16900	193000	Георгій	https://cdn1.riastatic.com/photosnew/auto/photo/tesla_model-s__596174211f.jpg	8	\N	\N	2025-05-07 22:06:18.823198
336	https://auto.ria.com/uk/auto_tesla_model_x_38023468.html	Tesla Model X 2023	55000	42000	auto	https://cdn4.riastatic.com/photosnew/auto/photo/tesla_model-x__591186879f.jpg	24	\N	7SAXCBE63PF404438	2025-05-07 22:06:18.823198
337	https://auto.ria.com/uk/auto_renault_trafic_38016885.html	Renault Trafic 2002	5200	312000	Автопарк	https://cdn4.riastatic.com/photosnew/auto/photo/renault_trafic__591002229f.jpg	31	\N	VF1FLABAx2Vxxxx35	2025-05-07 22:06:18.823198
338	https://auto.ria.com/uk/auto_mercedes_benz_m_class_35716566.html	Mercedes-Benz M-Class 2015	19900	197000	Вадим	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_m-class__538266119f.jpg	8	KA1815KP	4JGDA5JB5FA606257	2025-05-07 22:06:18.823198
339	https://auto.ria.com/uk/auto_toyota_yaris_cross_38152073.html	Toyota Yaris Cross 2022	1085000	35000	Тойота Центр Київ ВІДІ Автострада	https://cdn1.riastatic.com/photosnew/auto/photo/toyota_yaris-cross__594817566f.jpg	10	\N	JTDKBABB60A156920	2025-05-07 22:06:18.823198
\.


--
-- Name: car_phones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.car_phones_id_seq', 435, true);


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_id_seq', 339, true);


--
-- Name: car_phones car_phones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_phones
    ADD CONSTRAINT car_phones_pkey PRIMARY KEY (id);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: ix_car_phones_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_car_phones_id ON public.car_phones USING btree (id);


--
-- Name: ix_cars_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_cars_id ON public.cars USING btree (id);


--
-- Name: ix_cars_url; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_cars_url ON public.cars USING btree (url);


--
-- Name: car_phones car_phones_car_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_phones
    ADD CONSTRAINT car_phones_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.cars(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


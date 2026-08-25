--
-- PostgreSQL database dump
--

\restrict mAunONQKSNffLEsMcFvgqpJbFQCB2jXlO9USliQKntzy7S0LaEIztZA44OrY65P

-- Dumped from database version 18.4 (Debian 18.4-1.pgdg13+1)
-- Dumped by pg_dump version 18.3

-- Started on 2026-08-25 18:38:30

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
-- TOC entry 230 (class 1259 OID 32769)
-- Name: large_airports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.large_airports (
    id integer,
    city character varying(255),
    iata_code character varying(10),
    airport_name character varying(255),
    type character varying(50)
);


ALTER TABLE public.large_airports OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 32769)
-- Dependencies: 230
-- Data for Name: large_airports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.large_airports (id, city, iata_code, airport_name, type) FROM stdin;
3	Honiara	HIR	Honiara International Airport	large_airport
605715	Vlorë	VLO	(Duplicate)Vlora International Airport	large_airport
606676	Sydney	\N	(Duplicate)Western Sydney International Airport	large_airport
66	Lae	LAE	Nadzab Tomodachi International Airport	large_airport
67	Port Moresby	POM	Port Moresby Jacksons International Airport	large_airport
114	Nuuk	GOH	Nuuk International Airport	large_airport
115	Kangerlussuaq	SFJ	Kangerlussuaq International Airport	large_airport
116	Pituffik	THU	Pituffik Space Base	large_airport
117	Akureyri	AEY	Akureyri International Airport	large_airport
123	Reykjavík	KEF	Keflavik International Airport	large_airport
323997	Parakou	\N	Tourou International Airport	large_airport
4614	Prishtina	PRN	Priština Adem Jashari International Airport	large_airport
1717	Edmonton	YEG	Edmonton International Airport	large_airport
1770	Halifax	YHZ	Halifax / Stanfield International Airport	large_airport
1808	Kelowna	YLW	Kelowna International Airport	large_airport
1840	Ottawa	YOW	Ottawa Macdonald-Cartier International Airport	large_airport
1864	Quebec	YQB	Quebec Jean Lesage International Airport	large_airport
1928	Montréal	YUL	Montreal / Pierre Elliott Trudeau International Airport	large_airport
1941	Vancouver	YVR	Vancouver International Airport	large_airport
1946	Winnipeg	YWG	Winnipeg / James Armstrong Richardson International Airport	large_airport
1957	Saskatoon	YXE	Saskatoon John G. Diefenbaker International Airport	large_airport
1973	Calgary	YYC	Calgary International Airport	large_airport
1979	Victoria	YYJ	Victoria International Airport	large_airport
1986	St. John's	YYT	St. John's International Airport	large_airport
1990	Toronto	YYZ	Toronto Pearson International Airport	large_airport
2049	Béjaïa	BJA	Soummam-Abane Ramdane Airport	large_airport
2050	Algiers	ALG	Houari Boumediene Airport	large_airport
2051	Djanet	DJG	Tiska Djanet Airport	large_airport
2056	Tamanrasset	TMR	Aguenar – Hadj Bey Akhamok Airport	large_airport
2057	Tahir	GJL	Jijel Ferhat Abbas Airport	large_airport
2060	Annaba	AAE	Annaba Rabah Bitat Airport	large_airport
2061	Constantine	CZL	Mohamed Boudiaf International Airport	large_airport
2063	Batna	BLJ	Batna Mostefa Ben Boulaid Airport	large_airport
2068	Chlef	CFK	Chlef Aboubakr Belkaid International Airport	large_airport
2070	Zenata	TLM	Zenata - Messali El Hadj Airport	large_airport
2071	Es-Sénia	ORN	Oran Es-Sénia (Ahmed Ben Bella) International Airport	large_airport
2076	Biskra	BSK	Biskra - Mohamed Khider Airport	large_airport
2087	Cotonou	COO	Cotonou Cadjehoun International Airport	large_airport
2088	Ouagadougou	OUA	Ouagadougou Thomas Sankara International Airport	large_airport
2089	Bobo Dioulasso	BOY	Bobo Dioulasso Airport	large_airport
2090	Accra	ACC	Kotoka International Airport	large_airport
2091	Tamale	TML	Yakubu Tali International Airport	large_airport
2093	Kumasi	KMS	Prempeh I International Airport	large_airport
2096	Abidjan	ABJ	Félix-Houphouët-Boigny International Airport	large_airport
2102	Yamoussoukro	ASK	Yamoussoukro International Airport	large_airport
2104	Abuja	ABV	Nnamdi Azikiwe International Airport	large_airport
300781	Asaba	ABB	Asaba International Airport	large_airport
323056	Bauchi	BCU	Sir Abubakar Tafawa Balewa Bauchi State International Airport	large_airport
2108	Enegu	ENU	Akanu Ibiam International Airport	large_airport
2111	Ilorin/Ogbomosho	ILR	General Tunde Idiagbon International Airport	large_airport
2114	Kaduna	KAD	Kaduna International Airport	large_airport
2115	Kano	KAN	Mallam Aminu Kano International Airport	large_airport
2116	Maiduguri	MIU	Maiduguri International Airport	large_airport
2118	Lagos	LOS	Murtala Muhammed International Airport	large_airport
2120	Port Harcourt	PHC	Port Harcourt International Airport	large_airport
2121	Sokoto	SKO	Sadiq Abubakar III International Airport	large_airport
2125	Niamey	NIM	Diori Hamani International Airport	large_airport
2133	Tunis	TUN	Tunis Carthage International Airport	large_airport
2139	Mellita	DJE	Djerba Zarzis International Airport	large_airport
2141	Sfax	SFA	Sfax Thyna International Airport	large_airport
2143	Niamtougou	LRL	Niamtougou International Airport	large_airport
2144	Lomé	LFW	Lomé-Tokoin International Airport	large_airport
2155	Zaventem	BRU	Brussels Airport	large_airport
2157	Charleroi	CRL	Brussels South Charleroi Airport	large_airport
2163	Oostende	OST	Ostend-Bruges International Airport	large_airport
301881	Berlin	BER	Berlin Brandenburg Airport	large_airport
2210	Dresden	DRS	Dresden Airport	large_airport
2211	Erfurt	ERF	Erfurt-Weimar Airport	large_airport
2212	Frankfurt am Main	FRA	Frankfurt Main Airport	large_airport
2213	Greven	FMO	Münster Osnabrück Airport	large_airport
2214	Hamburg	HAM	Hamburg Helmut Schmidt Airport	large_airport
2216	Köln (Cologne)	CGN	Cologne Bonn Airport	large_airport
2217	Düsseldorf	DUS	Düsseldorf Airport	large_airport
2218	Munich	MUC	Munich Airport	large_airport
2219	Nuremberg	NUE	Nuremberg Airport	large_airport
2220	Schkeuditz	LEJ	Leipzig/Halle Airport	large_airport
2222	Stuttgart	STR	Stuttgart Airport	large_airport
2224	Hannover	HAJ	Hannover Airport	large_airport
2225	Bremen	BRE	Bremen Airport	large_airport
2227	Frankfurt am Main (Lautzenhausen)	HHN	Frankfurt-Hahn Airport	large_airport
2237	Memmingen	FMM	Memmingen Allgau Airport	large_airport
2244	Büren	PAD	Paderborn Lippstadt Airport	large_airport
2246	Weeze	NRN	Weeze (Niederrhein) Airport	large_airport
2247	Dortmund	DTM	Dortmund Airport	large_airport
2256	Friedrichshafen	FDH	Bodensee Airport Friedrichshafen	large_airport
2270	Rheinmünster	FKB	Karlsruhe Baden-Baden Airport	large_airport
2285	Calden	KSF	Kassel Airport	large_airport
2357	Berenice Troglodytica	EES	Berenice International Airport / Banas Cape Air Base	large_airport
2301	Tallinn	TLL	Lennart Meri Tallinn Airport	large_airport
2307	Helsinki (Vantaa)	HEL	Helsinki Vantaa Airport	large_airport
2314	Ivalo	IVL	Ivalo Airport	large_airport
2325	Kittilä	KTT	Kittilä International Airport	large_airport
2326	Kuopio / Siilinjärvi	KUO	Kuopio Airport	large_airport
2329	Lappeenranta	LPP	Lappeenranta Airport	large_airport
2330	Mariehamn	MHQ	Mariehamn Airport	large_airport
2334	Oulu / Oulunsalo	OUL	Oulu Airport	large_airport
2341	Rovaniemi	RVN	Rovaniemi Airport	large_airport
2347	Tampere / Pirkkala	TMP	Tampere-Pirkkala Airport	large_airport
2349	Turku	TKU	Turku Airport	large_airport
2351	Vaasa	VAA	Vaasa Airport	large_airport
2385	Belfast	BFS	Belfast International Airport	large_airport
2389	Birmingham, West Midlands	BHX	Birmingham Airport	large_airport
2398	Manchester, Greater Manchester	MAN	Manchester Airport	large_airport
2415	Cardiff	CWL	Cardiff International Airport	large_airport
2417	Bristol	BRS	Bristol Airport	large_airport
2418	Liverpool	LPL	Liverpool John Lennon Airport	large_airport
2419	Luton, Luton	LTN	London Luton Airport	large_airport
2429	London	LGW	London Gatwick Airport	large_airport
2434	London	LHR	London Heathrow Airport	large_airport
2444	Leeds, West Yorkshire	LBA	Leeds Bradford Airport	large_airport
2447	Castletown	IOM	Isle of Man Airport	large_airport
2448	Newcastle upon Tyne, Tyne and Wear	NCL	Newcastle International Airport	large_airport
2450	Nottingham, Leicestershire	EMA	East Midlands Airport	large_airport
2459	Aberdeen	ABZ	Aberdeen International Airport	large_airport
2461	Glasgow	GLA	Glasgow Airport	large_airport
2462	Edinburgh	EDI	Edinburgh Airport	large_airport
2464	Prestwick, South Ayrshire	PIK	Glasgow Prestwick Airport	large_airport
2476	London, Essex	STN	London Stansted Airport	large_airport
2512	Mount Pleasant	MPN	Mount Pleasant Airport / RAF Mount Pleasant	large_airport
2513	Amsterdam	AMS	Amsterdam Airport Schiphol	large_airport
2515	Maastricht	MST	Maastricht Aachen Airport	large_airport
2518	Eindhoven	EIN	Eindhoven Airport	large_airport
2519	Groningen	GRQ	Groningen Airport Eelde	large_airport
2524	Rotterdam	RTM	Rotterdam The Hague Airport	large_airport
2530	Cork	ORK	Cork International Airport	large_airport
2533	Dublin	DUB	Dublin Airport	large_airport
2534	Charlestown	NOC	Ireland West Airport Knock	large_airport
2537	Shannon	SNN	Shannon Airport	large_airport
2540	Aarhus	AAR	Aarhus Airport	large_airport
2541	Billund	BLL	Billund Airport	large_airport
2542	Copenhagen	CPH	Copenhagen Kastrup Airport	large_airport
2549	Odense	ODE	Odense Hans Christian Andersen Airport	large_airport
2559	Vágar	FAE	Vágar Airport	large_airport
2562	Aalborg	AAL	Aalborg Airport	large_airport
2563	Luxembourg	LUX	Luxembourg-Findel International Airport	large_airport
2564	Ülesund	AES	Ülesund Airport	large_airport
2569	Bodø	BOO	Bodø Airport	large_airport
2570	Bergen	BGO	Bergen Airport, Flesland	large_airport
2572	Kristiansand(Kjevik)	KRS	Kristiansand Airport	large_airport
2575	Evenes	EVE	Harstad/Narvik Airport	large_airport
2578	Oslo (Gardermoen)	OSL	Oslo-Gardermoen International Airport	large_airport
2599	Tromsø	TOS	Tromsø Airport	large_airport
2600	Sandefjord(Torp)	TRF	Sandefjord Airport, Torp	large_airport
2601	Trondheim	TRD	Trondheim Airport, Værnes	large_airport
2602	Stavanger	SVG	Stavanger Airport, Sola	large_airport
2608	Gdańsk	GDN	Gdańsk Lech Wałęsa Airport	large_airport
2609	Balice	KRK	Kraków John Paul II International Airport	large_airport
2613	Katowice	KTW	Katowice Wojciech Korfanty International Airport	large_airport
309484	Lublin	LUZ	Lublin Airport	large_airport
2616	ńódŠº	LCJ	ŁódźWńadysńaw Reymont Airport	large_airport
2622	Nowy Dwór Mazowiecki	WMI	Warsaw Modlin Airport	large_airport
2625	Poznań	POZ	Poznań-ńawica Airport	large_airport
2629	Jasionka	RZE	Rzeszów-Jasionka Airport	large_airport
2630	Szczecin(Glewice)	SZZ	Solidarity Szczecin-Goleniów Airport	large_airport
2637	Warsaw	WAW	Warsaw Chopin Airport	large_airport
2638	Wrocńaw	WRO	Copernicus Wrocńaw Airport	large_airport
2648	Göteborg	GOT	Göteborg Landvetter Airport	large_airport
2660	Nyköping	NYO	Stockholm Skavsta Airport	large_airport
316498	Malung-Sälen	SCR	Scandinavian Mountains Airport	large_airport
2669	Malmö	MMX	Malmö Sturup Airport	large_airport
2685	Kiruna	KRN	Kiruna Airport	large_airport
2689	UmeŠ	UME	UmeŠAirport	large_airport
29358	Üstersund	OSD	Üre Üstersund Airport	large_airport
2696	Stockholm / VästerŠs	VST	Stockholm VästerŠs Airport	large_airport
2697	LuleŠ	LLA	LuleŠAirport	large_airport
2701	Stockholm	ARN	Stockholm-Arlanda Airport	large_airport
2706	Linköping	LPI	Linköping City Airport	large_airport
2710	Visby	VBY	Visby Airport	large_airport
2757	Liepāja	LPX	Liepāja International Airport	large_airport
2758	Riga	RIX	Riga International Airport	large_airport
2760	Kaunas	KUN	Kaunas International Airport	large_airport
2762	Palanga	PLQ	Palanga International Airport	large_airport
2766	Vilnius	VNO	Vilnius International Airport	large_airport
2772	Bloemfontein	BFN	Bram Fischer International Airport	large_airport
2775	Cape Town	CPT	Cape Town International Airport	large_airport
2779	East London	ELS	King Phalo Airport	large_airport
2783	George	GRJ	George Airport	large_airport
2794	Kimberley	KIM	Kimberley Airport	large_airport
2795	Mbombela	MQP	Kruger Mpumalanga International Airport	large_airport
2800	Johannesburg	HLA	Lanseria International Airport	large_airport
300795	Durban	DUR	King Shaka International Airport	large_airport
31055	Johannesburg	JNB	O.R. Tambo International Airport	large_airport
2820	Gqeberha (Port Elizabeth)	PLZ	Chief Dawid Stuurman International Airport	large_airport
2827	Polokwane	PTG	Polokwane International Airport	large_airport
2860	Francistown	FRW	Phillip Gaonwe Matante International Airport	large_airport
2862	Kasane	BBK	Kasane International Airport	large_airport
2863	Maun	MUB	Maun International Airport	large_airport
2864	Gaborone	GBE	Sir Seretse Khama International Airport	large_airport
2868	Brazzaville	BZV	Maya-Maya International Airport	large_airport
2871	Pointe Noire	PNR	Antonio Agostinho-Neto International Airport	large_airport
2872	Manzini	MTS	Matsapha International Airport	large_airport
308033	Mpaka	SHO	King Mswati III International Airport	large_airport
2873	Bangui	BGF	Bangui M'Poko International Airport	large_airport
2875	Bata	BSG	Bata International Airport	large_airport
318497	Mengomeyén	GEM	President Obiang Nguema International Airport	large_airport
2876	Malabo	SSG	Malabo International Airport	large_airport
2878	Plaine Magnien	MRU	Sir Seewoosagur Ramgoolam International Airport	large_airport
2882	Douala	DLA	Douala International Airport	large_airport
2886	Garoua	GOU	Garoua International Airport	large_airport
2890	Yaoundé	NSI	Yaoundé Nsimalen International Airport	large_airport
2893	Livingstone	LVI	Harry Mwanga Nkumbula International Airport	large_airport
2894	Lusaka	LUN	Kenneth Kaunda International Airport	large_airport
2895	Mfuwe	MFU	Mfuwe International Airport	large_airport
525659	Ndola	NLA	Simon Mwansa Kapwepwe International Airport	large_airport
2901	Moroni	HAH	Prince Said Ibrahim International Airport	large_airport
2904	Dzaoudzi	DZA	Dzaoudzi Pamandzi International Airport	large_airport
2905	Sainte-Marie	RUN	Roland Garros Airport	large_airport
2906	Saint-Pierre	ZSE	Saint-Pierre Pierrefonds Airport	large_airport
2908	Antananarivo	TNR	Ivato International Airport	large_airport
2911	Toamasina	TMM	Toamasina Ambalamanasy Airport	large_airport
2919	Mahajanga	MJN	Amborovy Airport	large_airport
312665	Luanda (Ücolo e Bengo)	NBJ	Dr. Antonio Agostinho Neto International Airport	large_airport
2942	Luanda	LAD	Quatro de Fevereiro International Airport	large_airport
2963	Port Gentil	POG	Port Gentil International Airport	large_airport
2966	Libreville	LBV	Libreville Leon M'ba International Airport	large_airport
2967	Franceville	MVB	M'Vengue El Hadj Omar Bongo Ondimba International Airport	large_airport
2969	São Tomé	TMS	São Tomé International Airport	large_airport
2970	Beira	BEW	Beira International Airport	large_airport
2975	Maputo	MPM	Maputo Airport	large_airport
2980	Nampula	APL	Nampula Airport	large_airport
2984	Tete	TET	Tete Airport	large_airport
2993	Victoria	SEZ	Seychelles International Airport	large_airport
2998	N'Djamena	NDJ	N'Djamena International Airport	large_airport
3000	Bulawayo	BUQ	Joshua Mqabuko Nkomo International Airport	large_airport
3004	Victoria Falls	VFA	Victoria Falls International Airport	large_airport
3005	Harare	HRE	Robert Gabriel Mugabe International Airport	large_airport
3015	Blantyre	BLZ	Chileka International Airport	large_airport
3018	Lumbadzi	LLW	Kamuzu International Airport	large_airport
3022	Maseru(Mazenod)	MSU	Moshoeshoe I International Airport	large_airport
3037	Walvis Bay(Rooikop)	WVB	Walvis Bay International Airport	large_airport
3039	Windhoek	WDH	Hosea Kutako International Airport	large_airport
3040	Kinshasa	FIH	Ndjili International Airport	large_airport
3052	Kisangani	FKI	Bangoka International Airport	large_airport
3057	Goma	GOM	Goma International Airport	large_airport
3059	Lubumbashi	FBM	Lubumbashi International Airport	large_airport
3066	Bamako	BKO	Modibo Keita International Airport	large_airport
3071	Timbuktu	TOM	Tombouktou Airport	large_airport
3076	Yundum	BJL	Banjul International Airport	large_airport
3077	El Matorral	FUE	Fuerteventura Airport	large_airport
3081	Gran Canaria Island	LPA	Gran Canaria Airport	large_airport
3082	San Bartolomé	ACE	César Manrique-Lanzarote Airport	large_airport
3083	Tenerife	TFS	Tenerife Sur Airport	large_airport
3084	Tenerife	TFN	Tenerife Norte-Ciudad de La Laguna Airport	large_airport
3095	Freetown (Lungi-Town)	FNA	Lungi International Airport	large_airport
3097	Bissau	OXB	Osvaldo Vieira International Airport	large_airport
3099	Monrovia	ROB	Roberts International Airport	large_airport
3101	Agadir (Temsia)	AGA	Al Massira Airport	large_airport
429847	Zagora	OZG	Zagora Airport	large_airport
3103	Saïss	FEZ	Fes Saïss International Airport	large_airport
3107	Ahl Angad	OUD	Oujda Angads Airport	large_airport
3108	Smara	SMW	Smara Airport	large_airport
29694	Oulad Yaich	BEM	Beni Mellal Airport	large_airport
3109	Rabat	RBA	Rabat-Salé Airport	large_airport
3110	Dakhla	VIL	Dakhla Airport	large_airport
3112	El Aaiún	EUN	Laayoune Hassan I International Airport	large_airport
3113	Casablanca	CMN	Mohammed V International Airport	large_airport
3114	Al Aaroui	NDR	Nador Al Aaroui International Airport	large_airport
3115	Marrakesh	RAK	Marrakesh Menara Airport	large_airport
3117	Ouarzazate	OZZ	Ouarzazate International Airport	large_airport
3120	Tétouan	TTU	Sania Ramel Airport	large_airport
3121	Tangier	TNG	Tangier Ibn Battuta Airport	large_airport
325736	Dakar	DSS	Blaise Diagne International Airport	large_airport
3125	Dakar	DKR	Léopold Sédar Senghor International Airport	large_airport
323315	Nouakchott	NKC	Nouakchott-Oumtounsy International Airport	large_airport
3137	Atar	ATR	Atar International Airport	large_airport
3138	Nouadhibou	NDB	Nouadhibou International Airport	large_airport
3146	Conakry	CKY	Ahmed Sékou Touré International Airport	large_airport
3150	Espargos	SID	Amílcar Cabral International Airport	large_airport
3151	Rabil	BVC	Aristides Pereira International Airport	large_airport
3153	Praia	RAI	Nelson Mandela International Airport	large_airport
3155	São Pedro	VXE	Cesaria Evora International Airport	large_airport
3157	Addis Ababa	ADD	Addis Ababa Bole International Airport	large_airport
3162	Dire Dawa	DIR	Aba Tenna Dejazmach Yilma International Airport	large_airport
313314	Jijiga	JIJ	Gerad Wilwal International Airport	large_airport
30664	Hawassa	AWA	Hawassa International Airport	large_airport
3170	Bujumbura	BJM	Bujumbura Melchior Ndadaye International Airport	large_airport
30792	Bosaso	BSA	Bender Qassim International Airport	large_airport
3171	Hargeisa	HGA	Egal International Airport	large_airport
31899	Mogadishu	MGQ	Aden Adde International Airport	large_airport
3174	Djibouti City	JIB	Djibouti-Ambouli Airport	large_airport
3175	El Alamein	DBB	El Alamein International Airport	large_airport
3176	El Arish	AAC	El Arish International Airport	large_airport
3177	Asyut	ATZ	Asyut International Airport	large_airport
3180	Alexandria	HBE	Alexandria International Airport	large_airport
3183	Cairo	CAI	Cairo International Airport	large_airport
3186	Hurghada	HRG	Hurghada International Airport	large_airport
3191	Luxor	LXR	Luxor International Airport	large_airport
3192	Marsa Alam	RMF	Marsa Alam International Airport	large_airport
3193	Marsa Matruh	MUH	Mersa Matruh International Airport	large_airport
3196	Port Said	PSD	Port Said International Airport	large_airport
300893	Suhaj	HMB	Sohag International Airport	large_airport
3198	Sharm El Sheikh	SSH	Sharm El Sheikh International Airport	large_airport
3199	Aswan	ASW	Aswan International Airport	large_airport
335334	Al Jiza	SPX	Sphinx International Airport	large_airport
3202	Asmara	ASM	Asmara International Airport	large_airport
3247	Juba	JUB	Juba International Airport	large_airport
3205	Eldoret	EDL	Eldoret International Airport	large_airport
3206	Nairobi	NBO	Jomo Kenyatta International Airport	large_airport
3208	Kisumu	KIS	Kisumu International Airport	large_airport
3213	Mombasa	MBA	Moi International Airport	large_airport
3219	Sirt	SRX	Sirt International Airport / Ghardabiya Airbase	large_airport
3223	Benina	BEN	Benina International Airport	large_airport
3224	Tripoli	MJI	Mitiga International Airport	large_airport
3225	Al Albraq	LAQ	Al Abraq International Airport	large_airport
3237	Kigali	KGL	Kigali International Airport	large_airport
3246	Port Sudan	PZU	Port Sudan New International Airport	large_airport
3249	Khartoum	KRT	Khartoum International Airport	large_airport
3251	Dar es Salaam	DAR	Julius Nyerere International Airport	large_airport
3254	Arusha	JRO	Kilimanjaro International Airport	large_airport
3257	Mwanza	MWZ	Mwanza International Airport	large_airport
3260	Zanzibar	ZNZ	Abeid Amani Karume International Airport	large_airport
3263	Entebbe	EBB	Entebbe International Airport	large_airport
507227	Kediri	DHX	Dhoho International Airport	large_airport
342093	Navi Mumbai	NMI	Navi Mumbai International Airport	large_airport
597786	Gautam Buddha Nagar	DXN	Noida International Airport	large_airport
16091	Albuquerque	ABQ	Albuquerque International Sunport	large_airport
3371	Albany	ALB	Albany International Airport	large_airport
3384	Atlanta	ATL	Hartsfield Jackson Atlanta International Airport	large_airport
3386	Austin	AUS	Austin Bergstrom International Airport	large_airport
3396	Hartford	BDL	Bradley International Airport	large_airport
3406	Birmingham	BHM	Birmingham-Shuttlesworth International Airport	large_airport
3420	Nashville	BNA	Nashville International Airport	large_airport
3421	Boise	BOI	Boise Air Terminal/Gowen Field	large_airport
3422	Boston	BOS	Boston Logan International Airport	large_airport
3431	Buffalo	BUF	Buffalo Niagara International Airport	large_airport
3432	Burbank	BUR	Hollywood Burbank Airport	large_airport
3435	Baltimore	BWI	Baltimore/Washington International Thurgood Marshall Airport	large_airport
3450	Charleston	CHS	Charleston International Airport	large_airport
3454	Cleveland	CLE	Cleveland Hopkins International Airport	large_airport
3457	Charlotte	CLT	Charlotte Douglas International Airport	large_airport
3458	Columbus	CMH	John Glenn Columbus International Airport	large_airport
3463	Colorado Springs	COS	City of Colorado Springs Municipal Airport	large_airport
3471	Cincinnati / Covington	CVG	Cincinnati Northern Kentucky International Airport	large_airport
3479	Dallas	DAL	Dallas Love Field	large_airport
3483	Washington	DCA	Ronald Reagan Washington National Airport	large_airport
3486	Denver	DEN	Denver International Airport	large_airport
3488	Dallas-Fort Worth	DFW	Dallas Fort Worth International Airport	large_airport
3496	Des Moines	DSM	Des Moines International Airport	large_airport
3497	Detroit	DTW	Detroit Metropolitan Wayne County Airport	large_airport
3512	El Paso	ELP	El Paso International Airport	large_airport
3521	Newark	EWR	Newark Liberty International Airport	large_airport
3524	Fresno	FAT	Fresno Yosemite International Airport	large_airport
3531	Fort Lauderdale	FLL	Fort Lauderdale Hollywood International Airport	large_airport
3552	Spokane	GEG	Spokane International Airport	large_airport
3566	Grand Rapids	GRR	Gerald R. Ford International Airport	large_airport
3568	Greensboro	GSO	Piedmont Triad International Airport	large_airport
339963	Ta Noun	DSY	Dara Sakor International Airport	large_airport
342098	Phnom Penh (Boeng Khyang)	KTI	Techo International Airport	large_airport
3588	Houston	HOU	William P. Hobby Airport	large_airport
3602	Dulles	IAD	Washington Dulles International Airport	large_airport
3604	Houston	IAH	George Bush Intercontinental Airport	large_airport
3610	Indianapolis	IND	Indianapolis International Airport	large_airport
3620	Jacksonville	JAX	Jacksonville International Airport	large_airport
3622	New York	JFK	John F. Kennedy International Airport	large_airport
3631	Las Vegas	LAS	Harry Reid International Airport	large_airport
3632	Los Angeles	LAX	Los Angeles International Airport	large_airport
3643	New York	LGA	LaGuardia Airport	large_airport
3644	Long Beach	LGB	Long Beach International Airport	large_airport
3668	Kansas City	MCI	Kansas City International Airport	large_airport
3670	Orlando	MCO	Orlando International Airport	large_airport
3673	Chicago	MDW	Chicago Midway International Airport	large_airport
3675	Memphis	MEM	Memphis International Airport	large_airport
3685	Miami	MIA	Miami International Airport	large_airport
3690	Milwaukee	MKE	General Mitchell International Airport	large_airport
3709	Minneapolis	MSP	Minneapolis-Saint Paul International Airport / Wold-Chamberlain Field	large_airport
3711	New Orleans	MSY	Louis Armstrong New Orleans International Airport	large_airport
3717	Myrtle Beach	MYR	Myrtle Beach International Airport	large_airport
3744	Oakland	OAK	San Francisco Bay Oakland International Airport	large_airport
3747	Oklahoma City	OKC	OKC Will Rogers World Airport	large_airport
3751	Omaha	OMA	Eppley Airfield	large_airport
3752	Ontario	ONT	Ontario International Airport	large_airport
3754	Chicago	ORD	Chicago O'Hare International Airport	large_airport
3755	Norfolk	ORF	Norfolk International Airport	large_airport
3766	West Palm Beach	PBI	Palm Beach International Airport	large_airport
3768	Portland	PDX	Portland International Airport	large_airport
3771	Philadelphia	PHL	Philadelphia International Airport	large_airport
3772	Phoenix	PHX	Phoenix Sky Harbor International Airport	large_airport
3775	Pinellas Park	PIE	St. Petersburg Clearwater International Airport	large_airport
3778	Pittsburgh	PIT	Pittsburgh International Airport	large_airport
3783	Pensacola	PNS	Pensacola International Airport	large_airport
3792	Palm Springs	PSP	Palm Springs International Airport	large_airport
3795	Providence/Warwick	PVD	Rhode Island T. F. Green International Airport	large_airport
3796	Portland	PWM	Portland International Jetport	large_airport
3844	Raleigh/Durham	RDU	Raleigh-Durham International Airport	large_airport
3847	Richmond	RIC	Richmond International Airport	large_airport
3853	Reno	RNO	Reno Tahoe International Airport	large_airport
3855	Rochester	ROC	Frederick Douglass Greater Rochester International Airport	large_airport
3858	Fort Myers	RSW	Southwest Florida International Airport	large_airport
3862	San Diego	SAN	San Diego International Airport	large_airport
3863	San Antonio	SAT	San Antonio International Airport	large_airport
3864	Savannah	SAV	Savannah Hilton Head International Airport	large_airport
3867	San Bernardino	SBD	San Bernardino International Airport	large_airport
3873	Louisville	SDF	Louisville Muhammad Ali International Airport	large_airport
3875	Seattle	SEA	Seattle-Tacoma International Airport	large_airport
3876	Orlando	SFB	Orlando Sanford International Airport	large_airport
3878	San Francisco	SFO	San Francisco International Airport	large_airport
3883	San Jose	SJC	Norman Y. Mineta San Jose International Airport	large_airport
3887	Salt Lake City	SLC	Salt Lake City International Airport	large_airport
3892	Sacramento	SMF	Sacramento International Airport	large_airport
3894	Santa Ana	SNA	John Wayne Orange County International Airport	large_airport
3899	Sarasota/Bradenton	SRQ	Sarasota Bradenton International Airport	large_airport
3905	St Louis	STL	St. Louis Lambert International Airport	large_airport
3913	Syracuse	SYR	Syracuse Hancock International Airport	large_airport
3926	Tampa	TPA	Tampa International Airport	large_airport
3930	Tulsa	TUL	Tulsa International Airport	large_airport
3932	Tucson	TUS	Tucson International Airport	large_airport
3938	Knoxville/Maryville	TYS	McGhee Tyson Airport	large_airport
21333	Van Nuys	VNY	Van Nuys Airport	large_airport
3972	Rinas	TIA	Tirana International Airport Mother Teresa	large_airport
3974	Burgas	BOJ	Burgas Airport	large_airport
3976	Plovdiv	PDV	Plovdiv International Airport	large_airport
3977	Sofia	SOF	Sofia Airport	large_airport
3979	Varna	VAR	Varna Airport	large_airport
30979	Tymbou (Kirklar)	ECN	Ercan International Airport	large_airport
3980	Larnaca	LCA	Larnaca International Airport	large_airport
3981	Paphos	PFO	Paphos International Airport	large_airport
3984	Dubrovnik	DBV	Dubrovnik Ruāer Bošković Airport	large_airport
3987	Pula	PUY	Pula Airport	large_airport
3989	Rijeka(Omišalj)	RJK	Rijeka Airport	large_airport
3991	Split	SPU	Split Saint Jerome Airport	large_airport
3993	Velika Gorica	ZAG	Zagreb Franjo Tuāman International Airport	large_airport
3994	Zadar	ZAD	Zadar Airport	large_airport
3997	Alicante	ALC	Alicante-Elche Miguel Hernández Airport	large_airport
3999	Ranón	OVD	Asturias Airport	large_airport
4001	Bilbao	BIO	Bilbao Airport	large_airport
4004	Barcelona	BCN	Josep Tarradellas Barcelona-El Prat Airport	large_airport
4010	Girona	GRO	Girona-Costa Brava Airport	large_airport
4013	Ibiza (Eivissa)	IBZ	Ibiza Airport	large_airport
4018	La Virgen Del Camino	LEN	León Int'l Airport	large_airport
4019	Madrid	MAD	Adolfo Suárez Madrid-Barajas Airport	large_airport
4020	Málaga	AGP	Málaga-Costa del Sol Airport	large_airport
4021	Mahón (Maó)	MAH	Menorca Airport	large_airport
308134	Corvera	RMU	Region of Murcia International Airport	large_airport
4035	Palma de Mallorca	PMI	Palma de Mallorca Airport	large_airport
4031	Reus	REU	Reus Airport	large_airport
4038	Santiago de Compostela	SCQ	Santiago-Rosalía de Castro Airport	large_airport
4042	Valencia	VLC	Valencia Airport	large_airport
4048	Zaragoza	ZAZ	Zaragoza Airport	large_airport
4049	Seville	SVQ	Seville Airport	large_airport
4060	Bordeaux	BOD	Bordeaux-Mérignac Airport	large_airport
4070	Toulouse/Blagnac	TLS	Toulouse-Blagnac Airport	large_airport
4123	Bastia	BIA	Bastia-Poretta International airport	large_airport
4125	Figari	FSC	Figari Sud-Corse Airport	large_airport
4132	Clermont-Ferrand	CFE	Clermont-Ferrand Auvergne airport	large_airport
4137	Colombier-Saugnieu, Rhône	LYS	Lyon Saint-Exupéry Airport	large_airport
4155	Marignane, Bouches-du-Rhône	MRS	Marseille Provence Airport	large_airport
4156	Nice, Alpes-Maritimes	NCE	Nice-Côte d'Azur Airport	large_airport
4161	Montpellier/Méditerranée	MPL	Montpellier-Méditerranée Airport	large_airport
4169	Beauvais	BVA	Beauvais-Tillé airport	large_airport
4183	Paris	LBG	Paris-Le Bourget International Airport	large_airport
4185	Paris (Roissy-en-France, Val-d'Oise)	CDG	Charles de Gaulle International Airport	large_airport
4189	Paris (Orly, Val-de-Marne)	ORY	Paris-Orly Airport	large_airport
4202	Lesquin	LIL	Lille Airport	large_airport
4206	Brest	BES	Brest Bretagne airport	large_airport
4226	Bâle / Mulhouse	BSL	EuroAirport Basel-Mulhouse-Freiburg	large_airport
4238	Strasbourg	SXB	Strasbourg Airport	large_airport
4251	Spata-Artemida	ATH	Athens Eleftherios Venizelos International Airport	large_airport
4258	Heraklion	HER	Heraklion International Nikos Kazantzakis Airport	large_airport
4264	Kos Island	KGS	Kos International Airport Ippokratis	large_airport
4266	Kerkyra (Corfu)	CFU	Corfu Ioannis Kapodistrias International Airport	large_airport
4268	Kavala	KVA	Kavala Alexander the Great International Airport	large_airport
4279	Rhodes	RHO	Rhodes International Airport Diagoras	large_airport
4281	Souda	CHQ	Chania International Airport	large_airport
4286	Santorini Island	JTR	Santorini International Airport	large_airport
4293	Thessaloniki	SKG	Thessaloniki Macedonia International Airport	large_airport
4296	Budapest	BUD	Budapest Liszt Ferenc International Airport	large_airport
4297	Debrecen	DEB	Debrecen International Airport	large_airport
4302	Pécs	PEV	Pécs-Pogány International Airport	large_airport
4310	Bari	BRI	Bari Karol Wojtyńa International Airport	large_airport
4314	Pescara	PSR	Abruzzo Airport	large_airport
4315	Brindisi	BDS	Brindisi Airport	large_airport
4317	Lamezia Terme (CZ)	SUF	Lamezia Terme Sant'Eufemia International Airport	large_airport
4318	Catania	CTA	Catania-Fontanarossa Airport	large_airport
4321	Palermo	PMO	Falcone-Borsellino Airport	large_airport
4332	Cagliari	CAG	Cagliari Elmas Airport	large_airport
4333	Olbia (SS)	OLB	Olbia Costa Smeralda Airport	large_airport
4340	Ferno (VA)	MXP	Milan Malpensa International Airport	large_airport
4341	Orio al Serio (BG)	BGY	Il Caravaggio International Airport	large_airport
4342	Caselle Torinese (TO)	TRN	Turin Airport	large_airport
4344	Genova (GE)	GOA	Genoa Cristoforo Colombo Airport	large_airport
4345	Segrate (MI)	LIN	Milano Linate Airport	large_airport
4354	Bologna	BLQ	Bologna Guglielmo Marconi Airport	large_airport
4355	Treviso (TV)	TSF	Treviso Airport	large_airport
4361	Ronchi dei Legionari/Trieste	TRS	Trieste Airport	large_airport
4362	Rimini (RN)	RMI	Federico Fellini International Airport	large_airport
4366	Caselle (VR)	VRN	Verona Villafranca Valerio Catullo Airport	large_airport
4368	Venezia (VE)	VCE	Venice Marco Polo Airport	large_airport
4370	Rome	CIA	Ciampino-G. B. Pastine International Airport	large_airport
4372	Rome	FCO	Rome-Fiumicino Leonardo da Vinci International Airport	large_airport
4378	Napoli	NAP	Naples International Airport	large_airport
4379	Pisa (PI)	PSA	Pisa International Airport	large_airport
4380	Firenze (FI)	FLR	Florence Airport, Peretola	large_airport
4384	Perugia (PG)	PEG	Perugia San Francesco d'Assisi - Umbria International Airport	large_airport
4386	Zgornji Brnik	LJU	Ljubljana Jože Puānik Airport	large_airport
4393	āeské Budājovice	JCL	āeské Budājovice South Bohemian Airport	large_airport
4399	Karlovy Vary	KLV	Karlovy Vary Airport	large_airport
4402	Mošnov	OSR	Leoš Janáāek Airport Ostrava	large_airport
4405	Pardubice	PED	Pardubice Airport	large_airport
4408	Prague	PRG	Václav Havel Airport Prague	large_airport
4411	Tel Aviv	TLV	Ben Gurion International Airport	large_airport
330388	Eilat	ETM	Ramon International Airport	large_airport
4427	Valletta	MLA	Malta International Airport	large_airport
4430	Feldkirchen bei Graz	GRZ	Graz Airport	large_airport
4431	Innsbruck	INN	Innsbruck Airport	large_airport
4435	Klagenfurt am Wörthersee	KLU	Klagenfurt Airport	large_airport
4432	Linz	LNZ	Linz-Hörsching Airport	large_airport
4433	Salzburg	SZG	Salzburg Airport	large_airport
4434	Vienna	VIE	Vienna International Airport	large_airport
4448	Faro	FAO	Faro - Gago Coutinho International Airport	large_airport
4452	Funchal	FNC	Cristiano Ronaldo International Airport	large_airport
4456	Ponta Delgada	PDL	João Paulo II Airport	large_airport
4459	Porto	OPO	Francisco de Sá Carneiro Airport	large_airport
4461	Lisbon	LIS	Lisbon Humberto Delgado Airport	large_airport
4467	Mahovljani	BNX	Banja Luka International Airport	large_airport
4468	Mostar	OMO	Mostar International Airport	large_airport
4469	Sarajevo	SJJ	Sarajevo International Airport	large_airport
4470	Dubrave Gornje	TZL	Tuzla International Airport	large_airport
4472	Bacāu	BCM	Bacāu George Enescu International  Airport	large_airport
4474	Bucharest	BBU	Bucharest Bāneasa Aurel Vlaicu International Airport	large_airport
333670	Brașov (Ghimbav)	GHV	Brașov-Ghimbav International Airport	large_airport
4475	Constanșa	CND	Mihail Kogālniceanu International Airport	large_airport
4476	Cluj-Napoca	CLJ	Avram Iancu Cluj International Airport	large_airport
4479	Craiova	CRA	Craiova International Airport	large_airport
4480	Iańi	IAS	Iańi International Airport	large_airport
4481	Oradea	OMR	Oradea International Airport	large_airport
4482	Otopeni	OTP	Bucharest Henri Coandā International Airport	large_airport
4483	Sibiu	SBZ	Sibiu International Airport	large_airport
4485	Suceava	SCV	Suceava ștefan cel Mare International Airport	large_airport
4488	Timińoara	TSR	Timișoara Traian Vuia International Airport	large_airport
4490	Geneva	GVA	Geneva International Airport	large_airport
4505	Zurich	ZRH	Zürich Airport	large_airport
4509	Ankara	ESB	Esenboāa International Airport	large_airport
4512	Seyhan	ADA	Adana ńakirpańa Airport	large_airport
4515	Antalya	AYT	Antalya International Airport	large_airport
4516	Gaziantep	GZT	Gaziantep Oguzeli International Airport	large_airport
4518	Konya	KYA	Konya Airport	large_airport
4523	Kayseri	ASR	Kayseri Erkilet International Airport	large_airport
4527	Nevńehir	NAV	Nevńehir Kapadokya Airport	large_airport
4528	Istanbul(BakÄ±rköy)	ISL	İstanbul Atatürk Airport	large_airport
4533	Gaziemir	ADB	Adnan Menderes International Airport	large_airport
4542	Dalaman	DLM	Dalaman International Airport	large_airport
4547	Eskińehir	AOE	Hasan Polatkan Airport	large_airport
44491	ńanlÄ±urfa	GNY	ńanlÄ±urfa GAP Airport	large_airport
324731	Tarsus	COV	Üukurova International Airport	large_airport
4566	Edremit	EDO	BalÄ±kesir Koca Seyit Airport	large_airport
4567	Bodrum	BJV	Milas Bodrum International Airport	large_airport
4569	Pendik, Istanbul	SAW	Istanbul Sabiha Gökçen International Airport	large_airport
317457	Istanbul	IST	Istanbul Airport	large_airport
316329	Rize	RZV	Rize-Artvin Airport	large_airport
4571	Chińināu	RMO	Chińināu International Airport	large_airport
4572	Ohrid	OHD	Ohrid St. Paul the Apostle Airport	large_airport
4573	Ilinden	SKP	Skopje International Airport	large_airport
4574	Gibraltar	GIB	Gibraltar Airport	large_airport
4610	Belgrade	BEG	Belgrade Nikola Tesla Airport	large_airport
4612	Niš	INI	Niš Constantine the Great Airport	large_airport
4613	Podgorica	TGD	Podgorica Airport / Podgorica Golubovci Airbase	large_airport
4617	Bratislava	BTS	M. R. Štefánik Airport	large_airport
4628	Providenciales	PLS	Providenciales International Airport	large_airport
4635	La Romana	LRM	Casa De Campo International Airport	large_airport
4636	Punta Cana	PUJ	Punta Cana International Airport	large_airport
4638	Santo Domingo	SDQ	Las Américas International Airport	large_airport
4640	Santiago	STI	Cibao International Airport	large_airport
4644	Guatemala City	GUA	La Aurora International Airport	large_airport
4661	San Pedro Sula	SAP	Ramón Villeda Morales International Airport	large_airport
4663	Coxen Hole	RTB	Juan Manuel Gálvez International Airport	large_airport
4664	Palmerola	XPL	Palmerola International Airport	large_airport
4680	Kingston	KIN	Norman Manley International Airport	large_airport
4681	Montego Bay	MBJ	Sangster International Airport	large_airport
4688	Acapulco	ACA	General Juan N. Ülvarez International Airport	large_airport
4691	Aguascalientes	AGU	Aguascalientes International Airport	large_airport
4692	Huatulco	HUX	Bahías de Huatulco International Airport	large_airport
4697	Culiacán	CUL	Bachigualato Federal International Airport	large_airport
4701	Ciudad Juárez	CJS	Abraham González International Airport	large_airport
4703	Chihuahua	CUU	General Roberto Fierro Villalobos International Airport	large_airport
4706	Cozumel	CZM	Cozumel International Airport	large_airport
4710	Guadalajara	GDL	Guadalajara International Airport	large_airport
4713	Hermosillo	HMO	General Ignacio L. Pesqueira International Airport	large_airport
4722	Silao	BJX	Guanajuato International Airport	large_airport
4724	Loreto	LTO	Loreto International Airport	large_airport
4726	Mérida	MID	Manuel Crescencio Rejón International Airport	large_airport
4728	Morelia	MLM	General Francisco J. Mujica International Airport	large_airport
4731	Mexico City	MEX	Mexico City Benito Juárez International Airport	large_airport
4732	Monterrey	MTY	Monterrey International Airport	large_airport
4733	MazatlÃ n	MZT	General Rafael Buelna International Airport	large_airport
4736	Oaxaca	OAX	Xoxocotlán International Airport	large_airport
4738	Puebla	PBC	Hermanos Serdán International Airport	large_airport
4745	Puerto Vallarta	PVR	Puerto Vallarta International Airport	large_airport
4747	Querétaro	QRO	Querétaro Intercontinental Airport	large_airport
4750	San José del Cabo	SJD	Los Cabos International Airport	large_airport
31923	Mexico City	NLU	Felipe Üngeles International Airport	large_airport
4757	Tijuana	TIJ	General Abelardo L. Rodriguez International Airport	large_airport
520012	Tulum	TQO	Felipe Carrillo Puerto International Airport Tulum	large_airport
4760	Toluca	TLC	Adolfo López Mateos International Airport	large_airport
4762	Cancún	CUN	Cancún International Airport	large_airport
4763	Villahermosa	VSA	Carlos Rovirosa Pérez International Airport	large_airport
4764	Veracruz	VER	General Heriberto Jara International Airport	large_airport
4766	Ixtapa	ZIH	Ixtapa-Zihuatanejo International Airport	large_airport
4774	Managua	MGA	Augusto C. Sandino (Managua) International Airport	large_airport
4793	Tocumen	PTY	Tocumen International Airport	large_airport
4806	Liberia	LIR	Daniel Oduber Quirós International Airport	large_airport
4810	San José (Alajuela)	SJO	Juan Santamaría International Airport	large_airport
4820	San Salvador (San Luis Talpa)	SAL	El Salvador International Airport Saint Üscar Arnulfo Romero y Galdámez	large_airport
4823	Cap Haitien	CAP	Cap Haitien International Airport	large_airport
4825	Port-au-Prince	PAP	Toussaint Louverture International Airport	large_airport
4834	Camaguey	CMW	Ignacio Agramonte International Airport	large_airport
4835	Santiago	SCU	Antonio Maceo International Airport	large_airport
4839	Havana	HAV	José Martí International Airport	large_airport
4840	Holguin	HOG	Frank Pais International Airport	large_airport
4854	Santa Clara	SNU	Abel Santamaria International Airport	large_airport
4859	Matanzas	VRA	Juan Gualberto Gomez International Airport	large_airport
4862	George Town	GCM	Owen Roberts International Airport	large_airport
4946	Freeport	FPO	Grand Bahama International Airport	large_airport
4951	Nassau	NAS	Lynden Pindling International Airport	large_airport
4954	San Salvador	ZSA	San Salvador International Airport	large_airport
4956	Belize City	BZE	Philip S. W. Goldson International Airport	large_airport
4958	Avarua	RAR	Rarotonga International Airport	large_airport
4959	Nadi	NAN	Nadi International Airport	large_airport
4960	Nausori	SUV	Nausori International Airport	large_airport
4962	Nuku'alofa	TBU	Fua'amotu International Airport	large_airport
4964	Vava'u Island	VAV	Vava'u International Airport	large_airport
313797	Birinin Kebbi	\N	Sir Ahmadu Bello International Airport	large_airport
4972	South Tarawa	TRW	Bonriki International Airport	large_airport
4975	Wallis Island	WLS	Hihifo Airport	large_airport
342097	Pokhara	PHH	Pokhara International Airport	large_airport
4976	Apia	APW	Faleolo International Airport	large_airport
4978	Pago Pago	PPG	Pago Pago International Airport	large_airport
4979	Papeete	PPT	Fa'a'ā International Airport	large_airport
5011	Port Vila	VLI	Bauerfield International Airport	large_airport
5021	Nouméa (La Tontouta)	NOU	La Tontouta International Airport	large_airport
5023	Auckland	AKL	Auckland International Airport	large_airport
5026	Christchurch	CHC	Christchurch International Airport	large_airport
5051	Queenstown	ZQN	Queenstown Airport	large_airport
5063	Wellington	WLG	Wellington International Airport	large_airport
5069	Guzara	HEA	Herat - Khwaja Abdullah Ansari International Airport	large_airport
5072	Kabul	KBL	Kabul International Airport	large_airport
5073	Kandahar	KDH	Ahmad Shah Baba International Airport	large_airport
5075	Mazar-i-Sharif	MZR	Mazar-i-Sharif International Airport	large_airport
5079	Manama	BAH	Bahrain International Airport	large_airport
316826	Corisco Island	OCS	Corisco International Airport	large_airport
5082	Abha	AHB	Abha International Airport	large_airport
5083	Hofuf	HOF	Al-Ahsa International Airport	large_airport
300611	Al-Ula	ULH	Al-Ula International Airport	large_airport
5087	Ad Dammam	DMM	King Fahd International Airport	large_airport
5089	Dhahran	DHA	King Abdulaziz Air Base	large_airport
5091	Qassim	ELQ	Prince Naif bin Abdulaziz International Airport	large_airport
5093	Hail	HAS	Hail International Airport	large_airport
5097	Jeddah	JED	King Abdulaziz International Airport	large_airport
5101	Medina	MED	Prince Mohammad Bin Abdulaziz Airport	large_airport
332512	Sharma	NUM	Neom Bay Airport	large_airport
5103	Qaisumah	AQI	Qaisumah-Hafar Al-Batin International Airport	large_airport
5112	Riyadh	RUH	King Khalid International Airport	large_airport
5119	Al-Jawf	AJF	Al-Jawf International Airport	large_airport
5121	Tabuk	TUU	Prince Sultan bin Abdulaziz International Airport	large_airport
5122	Taif	TIF	Taif International Airport	large_airport
5129	Yanbu	YNB	Prince Abdulmohsen Bin Abdulaziz International Airport	large_airport
5130	Abadan	ABD	Abadan Ayatollah Jami International Airport	large_airport
5137	Ahvaz	AWZ	Qasem Soleimani International Airport	large_airport
5143	Kish Island	KIH	Kish International Airport	large_airport
5156	Isfahan	IFN	Isfahan Shahid Beheshti International Airport	large_airport
5166	Tehran	IKA	Imam Khomeini International Airport	large_airport
5168	Tehran	THR	Mehrabad International Airport	large_airport
5171	Karaj	PYK	Payam International Airport	large_airport
5172	Bandar Abbas	BND	Bandar Abbas International Airport	large_airport
5174	Kerman	KER	Ayatollah Hashemi Rafsanjani International Airport	large_airport
35276	Qeshm(Dayrestan)	GSM	Qeshm International Airport	large_airport
5180	Birjand	XBJ	Birjand International Airport	large_airport
5183	Mashhad	MHD	Mashhad International Airport	large_airport
5197	Shiraz	SYZ	Shiraz Shahid Dastghaib International Airport	large_airport
5204	Tabriz	TBZ	Tabriz International Airport	large_airport
5209	Zahedan	ZAH	Zahedan International Airport	large_airport
5212	Amman	AMM	Queen Alia International Airport	large_airport
5213	Amman	ADJ	Marka International (Amman Civil) Airport	large_airport
5214	Aqaba	AQJ	King Hussein International Airport	large_airport
5220	Kuwait City	KWI	Kuwait International Airport	large_airport
5222	Beirut	BEY	Beirut Rafic Hariri International Airport	large_airport
299738	Duqm	DQM	Duqm International Airport	large_airport
5226	Abu Dhabi	AUH	Zayed International Airport	large_airport
5227	Abu Dhabi	AZI	Al Bateen Executive Airport	large_airport
5230	Al Ain	AAN	Al Ain International Airport	large_airport
5235	Dubai	DXB	Dubai International Airport	large_airport
300320	Dubai(Jebel Ali)	DWC	Al Maktoum International Airport	large_airport
5237	Fujairah	FJR	Fujairah International Airport	large_airport
5238	Ras Al Khaimah	RKT	Ras Al Khaimah International Airport	large_airport
5239	Sharjah	SHJ	Sharjah International Airport	large_airport
5242	Muscat/Seeb	MCT	Muscat International Airport	large_airport
5244	Salalah	SLL	Salalah International Airport	large_airport
299742	Suhar	OHS	Suhar International Airport	large_airport
5251	Faisalabad	LYP	Faisalabad International Airport	large_airport
342092	Gurandani	GWD	New Gwadar International Airport	large_airport
333692	Attock	ISB	Islamabad International Airport	large_airport
5255	Karachi	KHI	Jinnah International Airport	large_airport
5257	Lahore	LHE	Allama Iqbal International Airport	large_airport
5264	Multan	MUX	Multan International Airport	large_airport
5270	Peshawar	PEW	Bacha Khan International Airport	large_airport
5272	Quetta	UET	Quetta International Airport	large_airport
5277	Skardu	KDU	Skardu International Airport	large_airport
41624	Sialkot	SKT	Sialkot International Airport	large_airport
5283	Turbat	TUK	Turbat International Airport	large_airport
5289	Baghdad	BGW	Baghdad International Airport / New Al Muthana Air Base	large_airport
5290	Mosul	OSM	Mosul International Airport	large_airport
5292	Arbil	EBL	Erbil International Airport	large_airport
5293	Kirkuk	KIK	Kirkuk International Airport	large_airport
5294	Basra	BSR	Basra International Airport	large_airport
311028	Najaf	NJF	Al Najaf International Airport	large_airport
5302	Aleppo	ALP	Aleppo International Airport	large_airport
5303	Damascus	DAM	Damascus International Airport	large_airport
5308	Doha	DIA	Doha International Airport	large_airport
44686	Doha	DOH	Hamad International Airport	large_airport
5311	Aden	ADE	Aden International Airport	large_airport
5317	Mukalla(Riyan)	RIY	Riyan International Airport	large_airport
5318	Sanaa	SAH	Sanaa International Airport	large_airport
5320	Seiyun	GXF	Seiyun Hadhramaut International Airport	large_airport
5388	Anchorage	ANC	Ted Stevens Anchorage International Airport	large_airport
5430	Rota Island	ROP	Rota International Airport	large_airport
5431	I Fadang, Saipan	SPN	Saipan International Airport	large_airport
5433	HagŠtña	GUM	Antonio B. Won Pat International Airport	large_airport
5434	Tinian Island	TIQ	Tinian International Airport	large_airport
5448	Kailua-Kona	KOA	Ellison Onizuka Kona International Airport at Keāhole	large_airport
5449	Lihue, Kauai	LIH	Lihue Airport	large_airport
5453	Honolulu, Oahu	HNL	Daniel K. Inouye International Airport	large_airport
5455	Kahului	OGG	Kahului International Airport	large_airport
5488	Majuro Atoll	MAJ	Marshall Islands International Airport	large_airport
5493	Kiritimati	CXI	Cassidy International Airport	large_airport
5499	Weno Island	TKK	Chuuk International Airport	large_airport
5501	Babelthuap Island	ROR	Roman Tmetuchl International Airport	large_airport
5502	Okat	KSA	Kosrae International Airport	large_airport
5503	Yap Island	YAP	Yap International Airport	large_airport
5516	Kaohsiung (Xiaogang)	KHH	Kaohsiung International Airport	large_airport
5520	Taichung (Qingshui)	RMQ	Taichung International Airport / Ching Chuang Kang Air Base	large_airport
5522	Tainan (Rende)	TNN	Tainan International Airport / Tainan Air Base	large_airport
5524	Huxi	MZG	Penghu Magong Airport	large_airport
5527	Taipei (Songshan)	TSA	Taipei Songshan International Airport	large_airport
5528	Taoyuan	TPE	Taiwan Taoyuan International Airport	large_airport
5530	Hualien City	HUN	Hualien Chiashan Airport	large_airport
5531	Narita	NRT	Narita International Airport	large_airport
5533	Omitama	IBR	Ibaraki Airport	large_airport
5536	Osaka	KIX	Kansai International Airport	large_airport
5538	Kobe	UKB	Kobe Airport	large_airport
5544	Sapporo	CTS	New Chitose Airport	large_airport
5545	Hakodate	HKD	Hakodate Airport	large_airport
5564	Fukuoka	FUK	Fukuoka Airport	large_airport
5566	Kagoshima	KOJ	Kagoshima Airport	large_airport
5567	Miyazaki	KMI	Miyazaki Airport	large_airport
5570	Kitakyushu	KKJ	Kitakyushu Airport	large_airport
5571	Saga	HSG	Kyushu Saga International Airport	large_airport
5572	Kumamoto	KMJ	Kumamoto Airport	large_airport
5573	Nagasaki	NGS	Nagasaki Airport	large_airport
5576	Tokoname	NGO	Chubu Centrair International Airport	large_airport
5585	Kanazawa	KMQ	Komatsu Airport / JASDF Komatsu Air Base	large_airport
299238	Makinohara / Shimada	FSZ	Mount Fuji Shizuoka Airport	large_airport
5590	Hiroshima	HIJ	Hiroshima Airport	large_airport
5591	Okayama	OKJ	Okayama Momotaro Airport	large_airport
5596	Nankoku	KCZ	Kochi Ryoma Airport	large_airport
5597	Matsuyama	MYJ	Matsuyama Airport	large_airport
5598	Osaka	ITM	Osaka Itami International Airport	large_airport
5600	Tokushima	TKS	Tokushima Awaodori Airport / JMSDF Tokushima Air Base	large_airport
5601	Takamatsu	TAK	Takamatsu Airport	large_airport
5605	Aomori	AOJ	Aomori Airport	large_airport
5613	Niigata	KIJ	Niigata Airport	large_airport
5615	Natori	SDJ	Sendai Airport	large_airport
5627	Tokyo	HND	Tokyo Haneda International Airport	large_airport
302303	Muan (Piseo-ri)	MWX	Muan International Airport	large_airport
5638	Gonghang-ro	YNY	Yangyang International Airport	large_airport
5639	Jeju City	CJU	Jeju International Airport	large_airport
5642	Busan	PUS	Gimhae International Airport	large_airport
5653	Seoul	ICN	Incheon International Airport	large_airport
5656	Seoul	GMP	Gimpo International Airport	large_airport
5661	Daegu	TAE	Daegu International Airport	large_airport
5663	Cheongju	CJJ	Cheongju International Airport/Cheongju Air Base (K-59/G-513)	large_airport
5671	Naha	OKA	Naha International Airport	large_airport
5673	Okinawa	DNA	Kadena Air Base	large_airport
5686	Olongapo	SFS	Subic Bay International Airport / Naval Air Station Cubi Point	large_airport
5687	Mabalacat	CRK	Clark International Airport / Clark Air Base	large_airport
5688	Laoag City	LAO	Laoag International Airport	large_airport
336104	Legazpi	DRP	Bicol International Airport	large_airport
5689	Manila (Pasay)	MNL	Ninoy Aquino International Airport	large_airport
5697	Davao	DVO	Francisco Bangoy International Airport	large_airport
5709	General Santos	GES	General Santos International Airport	large_airport
308633	Laguindingan	CGY	Laguindingan International Airport	large_airport
5712	Zamboanga	ZAM	Zamboanga International Airport	large_airport
35178	Bacolod City	BCD	Bacolod-Silay International Airport	large_airport
5739	Cabatuan	ILO	Iloilo International Airport	large_airport
5741	Kalibo	KLO	Kalibo International Airport	large_airport
5742	Cebu City/Lapu-Lapu City	CEB	Mactan Cebu International Airport	large_airport
5744	Puerto Princesa	PPS	Puerto Princesa International Airport / PAF Antonio Bautista Air Base	large_airport
350214	Hanak	RSI	Red Sea International Airport	large_airport
41136	Lipetsk	\N	Lipetsk Air Base	large_airport
5769	Rosario	ROS	Rosario Islas Malvinas International Airport	large_airport
5771	Buenos Aires	AEP	Aeroparque Jorge Newbery	large_airport
5773	Cordoba	COR	Ingeniero Aeronáutico Ambrosio L.V. Taravella International Airport	large_airport
5781	Buenos Aires (Ezeiza)	EZE	Ezeiza International Airport - Ministro Pistarini	large_airport
5786	Mendoza	MDZ	Governor Francisco Gabrielli International Airport	large_airport
5794	San Miguel de Tucumán	TUC	Teniente Benjamín Matienzo International Airport	large_airport
5804	Resistencia	RES	Resistencia International Airport	large_airport
5811	Salta	SLA	Martín Miguel de Güemes International Airport	large_airport
5812	San Salvador de Jujuy	JUJ	Gobernador Horacio Guzman International Airport	large_airport
5822	Comodoro Rivadavia	CRD	General Enrique Mosconi International Airport	large_airport
5831	El Calafate	FTE	El Calafate - Commander Armando Tola International Airport	large_airport
5834	Rio Gallegos	RGL	Piloto Civil Norberto Fernández International Airport	large_airport
5848	Neuquén	NQN	Presidente Perón International Airport	large_airport
5852	San Carlos de Bariloche	BRC	Teniente Luis Candelaria International Airport	large_airport
5867	Belém	BEL	Val de Cans/Júlio Cezar Ribeiro International Airport	large_airport
5872	Brasília	BSB	Presidente Juscelino Kubitschek International Airport	large_airport
5875	Boa Vista	BVB	Atlas Brasil Cantanhede International Airport	large_airport
5882	Belo Horizonte	CNF	Tancredo Neves International Airport	large_airport
5891	Curitiba	CWB	Curitiba-Afonso Pena International Airport	large_airport
5894	Cuiabá	CGB	Várzea Grande-Marechal Rondon International Airport	large_airport
5897	Manaus	MAO	Eduardo Gomes International Airport	large_airport
5900	Foz do Iguaçu	IGU	Cataratas International Airport	large_airport
5901	Florianópolis	FLN	Hercílio Luz International Airport	large_airport
5905	Fortaleza	FOR	Pinto Martins International Airport	large_airport
5906	Rio De Janeiro	GIG	Rio Galeão - Tom Jobim International Airport	large_airport
5908	Goiânia	GYN	Santa Genoveva International Airport	large_airport
5910	São Paulo	GRU	São Paulo/Guarulhos-Governor André Franco Montoro International Airport	large_airport
5923	João Pessoa	JPA	Presidente Castro Pinto International Airport	large_airport
5927	Campinas	VCP	Viracopos International Airport	large_airport
5942	Maceió	MCZ	Zumbi dos Palmares International Airport	large_airport
5947	Navegantes	NVT	Ministro Victor Konder International Airport	large_airport
5951	Porto Alegre	POA	Porto Alegre-Salgado Filho International Airport	large_airport
5961	Porto Seguro	BPS	Porto Seguro International Airport	large_airport
5962	Porto Velho	PVH	Governador Jorge Teixeira de Oliveira International Airport	large_airport
5964	Rio Branco	RBR	Rio Branco-Plácido de Castro International Airport	large_airport
5965	Recife	REC	Recife/Guararapes - Gilberto Freyre International Airport	large_airport
5967	Rio de Janeiro	SDU	Santos Dumont Airport	large_airport
313262	Natal	NAT	Rio Grande do Norte/São Gonçalo do Amarante-Governador Aluízio Alves International Airport	large_airport
5971	São Luís	SLZ	Marechal Cunha Machado International Airport	large_airport
5974	São Paulo	CGH	Congonhas-Deputado Freitas Nobre Airport	large_airport
5977	Salvador	SSA	Deputado Luiz Eduardo Magalhães International Airport	large_airport
5998	Vitória	VIX	Eurico de Aguiar Salles International Airport	large_airport
6009	Punta Arenas	PUQ	President Carlos Ibáñez International Airport	large_airport
6012	Iquique	IQQ	Diego Aracena International Airport	large_airport
6015	Santiago	SCL	Comodoro Arturo Merino Benítez International Airport	large_airport
6018	Antofagasta	ANF	Andrés Sabella Gálvez International Airport	large_airport
6025	Concepcion	CCP	Carriel Sur International Airport	large_airport
6026	Isla De Pascua	IPC	Mataveri International Airport	large_airport
314783	Temuco	ZCO	La Araucanía International Airport	large_airport
6043	Puerto Montt	PMC	El Tepual International Airport	large_airport
6056	Guayaquil	GYE	José Joaquín de Olmedo International Airport	large_airport
308273	Quito	UIO	Mariscal Sucre International Airport	large_airport
6076	Salinas/La Libertad	SNC	General Ulpiano Paez International Airport	large_airport
6084	Tachina	ESM	Carlos Concha Torres International Airport	large_airport
6088	Asunción	ASU	Silvio Pettirossi International Airport	large_airport
29851	Encarnación	ENO	Teniente Ramon A. Ayub Gonzalez International Airport	large_airport
6091	Ciudad del Este	AGT	Guaraní International Airport	large_airport
6104	Bogota	BOG	El Dorado International Airport	large_airport
6105	Barranquilla	BAQ	Ernesto Cortissoz International Airport	large_airport
6109	Cartagena	CTG	Rafael Nuñez International Airport	large_airport
6110	Cali	CLO	Alfonso Bonilla Aragon International Airport	large_airport
6158	Medellín	MDE	Jose Maria Córdova International Airport	large_airport
6163	San Andrés	ADZ	Gustavo Rojas Pinilla International Airport	large_airport
333229	Sucre	SRE	Alcantarí International Airport	large_airport
6180	Cochabamba	CBB	Jorge Wilsterman International Airport	large_airport
6184	La Paz / El Alto	LPB	El Alto International Airport	large_airport
6185	Oruro	ORU	Juan Mendoza International Airport	large_airport
6193	Santa Cruz	VVI	Viru Viru International Airport	large_airport
6195	Paramaribo	PBM	Johan Adolf Pengel International Airport	large_airport
6198	Matoury	CAY	Cayenne - Félix Eboué Airport	large_airport
6205	Pucallpa	PCL	Cap FAP David Abenzur Rengifo International Airport	large_airport
6213	Chiclayo	CIX	Capitán FAP José A. Quiñones González International Airport	large_airport
6217	Lima	LIM	Jorge Chávez International Airport	large_airport
6222	Juliaca	JUL	Inca Manco Capac International Airport	large_airport
6232	Iquitos	IQT	Coronel FAP Francisco Secada Vignetta International Airport	large_airport
6233	Arequipa	AQP	Rodríguez Ballón International Airport	large_airport
6235	Trujillo	TRU	Capitán FAP Carlos Martínez de Pinillos International Airport	large_airport
6236	Pisco	PIO	Captain Renán Elías Olivera International Airport	large_airport
6243	Cusco	CUZ	Alejandro Velasco Astete International Airport	large_airport
6247	Ciudad de la Costa	MVD	Carrasco General Cesáreo L. Berisso International Airport	large_airport
6255	Barcelona	BLA	General José Antonio Anzoategui International Airport	large_airport
6259	Barquisimeto	BRM	Jacinto Lara International Airport	large_airport
6297	Maracaibo	MAR	La Chinita International Airport	large_airport
6299	Isla Margarita	PMV	Del Caribe Santiago Mariño International Airport	large_airport
6300	Maiquetía	CCS	Maiquetía Simón Bolívar International Airport	large_airport
6315	Guyana City	PZO	General Manuel Carlos Piar International Airport	large_airport
6334	Valencia	VLN	Arturo Michelena International Airport	large_airport
6356	Georgetown	GEO	Cheddi Jagan International Airport	large_airport
6359	Osbourn	ANU	V. C. Bird International Airport	large_airport
6360	Bridgetown	BGI	Grantley Adams International Airport	large_airport
6363	Fort-de-France	FDF	Martinique Aimé Césaire International Airport	large_airport
6366	Pointe-Ã -Pitre	PTP	Maryse Condé International Airport	large_airport
6367	Saint George's	GND	Maurice Bishop International Airport	large_airport
6369	Charlotte Amalie	STT	Cyril E. King Airport	large_airport
6384	San Juan	SJU	Luis Munoz Marin International Airport	large_airport
6386	Basseterre	SKB	Robert L. Bradshaw International Airport	large_airport
6389	Vieux Fort	UVF	Hewanorra International Airport	large_airport
44383	Balkanabat	BKN	Balkanabat International Airport	large_airport
6402	Oranjestad	AUA	Queen Beatrix International Airport	large_airport
6403	Kralendijk	BON	Flamingo International Airport	large_airport
6404	Willemstad	CUR	Hato International Airport	large_airport
6406	Sint Maarten	SXM	Princess Juliana International Airport	large_airport
43074	Gerald's Park	MNI	John A. Osborne Airport	large_airport
6409	Scarborough	TAB	A.N.R. Robinson International Airport	large_airport
6410	Port of Spain	POS	Piarco International Airport	large_airport
6411	Beef Island	EIS	Terrance B. Lettsome International Airport	large_airport
322383	Kingstown	SVD	Argyle International Airport	large_airport
6416	Hamilton	BDA	L.F. Wade International Airport	large_airport
6421	Almaty	ALA	Almaty International Airport	large_airport
6423	Astana	NQZ	Nursultan Nazarbayev International Airport	large_airport
31768	Kokshetau	KOV	Kokshetau International Airport	large_airport
32495	Petropavl	PPK	Petropavl International Airport	large_airport
6424	Taraz	DMB	Taraz International Airport	large_airport
6426	Bishkek	BSZ	Manas International Airport	large_airport
6427	Osh	OSS	Osh International Airport	large_airport
6429	Shymkent	CIT	Shymkent International Airport	large_airport
337747	TurkÄ±stan	HSA	Hazrat Sultan International Airport	large_airport
6430	Zhezkazgan	DZN	Zhezkazgan National Airport	large_airport
6431	Karaganda	KGF	Sary-Arka Airport	large_airport
44336	Baikonur	BXY	Baikonur Krayniy International Airport	large_airport
31794	Kyzylorda	KZO	Korkyt Ata International Airport	large_airport
6432	Uralsk	URA	Manshuk Mametova International Airport	large_airport
6433	Ust-Kamenogorsk (Oskemen)	UKK	Oskemen International Airport	large_airport
6434	Pavlodar	PWQ	Pavlodar International Airport	large_airport
6435	Semey	PLX	Semei International Airport	large_airport
6436	Aktau	SCO	Aktau International Airport	large_airport
6437	Atyrau	GUW	Atyrau International Airport	large_airport
6438	Aktobe	AKX	Aktobe International Airport	large_airport
6439	Kostanay	KSN	Kostanay International Airport	large_airport
6440	Baku	GYD	Heydar Aliyev International Airport	large_airport
6441	Ganja	GNJ	Ganja International Airport	large_airport
6442	Nakhchivan	NAJ	Nakhchivan International Airport	large_airport
6425	Tamchy	IKU	Issyk-Kul International Airport	large_airport
6444	Gyumri	LWN	Shirak International Airport	large_airport
6446	Yerevan	EVN	Zvartnots International Airport	large_airport
6447	Yakutsk	YKS	Platon Oyunsky Yakutsk International Airport	large_airport
6451	Kopitnari	KUT	David the Builder Kutaisi International Airport	large_airport
6452	Batumi	BUS	Alexander Kartveli Batumi International Airport	large_airport
6453	Tbilisi	TBS	Tbilisi International Airport	large_airport
6460	Petropavlovsk-Kamchatsky	PKC	Yelizovo Airport	large_airport
6461	Yuzhno-Sakhalinsk	UUS	Yuzhno-Sakhalinsk International Airport	large_airport
6462	Artyom	VVO	Vladivostok International Airport	large_airport
6463	Chita	HTA	Chita-Kadala International Airport	large_airport
6465	Irkutsk	IKT	Irkutsk International Airport	large_airport
6466	Ulan Ude	UUD	Baikal International Airport	large_airport
6472	Zaporizhia	OZH	Zaporizhzhia International Airport	large_airport
6474	Simferopol	SIP	Simferopol International Airport	large_airport
6481	Lviv	LWO	Lviv International Airport	large_airport
6485	Uzhhorod	UDJ	Uzhhorod International Airport	large_airport
6487	Odesa	ODS	Odesa International Airport	large_airport
6489	St. Petersburg	LED	Pulkovo Airport	large_airport
6490	Murmansk	MMK	Emperor Nicholas II Murmansk Airport	large_airport
6495	Brest	BQT	Brest International Airport	large_airport
6498	Kaliningrad	KGD	Khrabrovo Airport	large_airport
6501	Minsk	MSQ	Minsk National Airport	large_airport
6503	Abakan	ABA	Abakan International Airport	large_airport
6504	Barnaul	BAX	Barnaul Gherman Titov International Airport	large_airport
6505	Kemerovo	KEJ	Alexei Leonov Kemerovo International Airport	large_airport
6506	Krasnoyarsk	KJA	Krasnoyarsk International Airport	large_airport
6507	Novosibirsk	OVB	Novosibirsk Tolmachevo Airport	large_airport
6508	Omsk	OMS	Omsk Central Airport	large_airport
32468	Tomsk	TOF	Tomsk Kamov Airport	large_airport
6510	Norilsk	NSK	Alykel International Airport	large_airport
6512	Krasnodar	KRR	Krasnodar Pashkovsky International Airport	large_airport
42924	Grozny	GRV	Akhmat Kadyrov Grozny International Airport	large_airport
6513	Makhachkala	MCX	Makhachkala Uytash International Airport	large_airport
6514	Mineralnyye Vody	MRV	Mineralnye Vody Airport	large_airport
326363	Rostov-on-Don	ROV	Platov International Airport	large_airport
6519	Sochi	AER	Sochi International Airport	large_airport
6520	Astrakhan	ASF	Astrakhan Narimanovo Boris M. Kustodiev International Airport	large_airport
6522	Volgograd	VOG	Volgograd International Airport	large_airport
26370	Chelyabinsk	CEK	Kurchatov Chelyabinsk International Airport	large_airport
26371	Magnitogorsk	MQF	Magnitogorsk International Airport	large_airport
26374	Nizhnevartovsk	NJC	Nizhnevartovsk Airport	large_airport
26375	Perm	PEE	Perm International Airport	large_airport
26377	Surgut	SGC	Surgut International Airport	large_airport
26378	Yekaterinburg	SVX	Koltsovo Airport	large_airport
26379	Tyumen	TJM	Roshchino International Airport	large_airport
26380	Ashgabat	ASB	Ashgabat International Airport	large_airport
26381	Turkmenbańy	KRW	Turkmenbańy International Airport	large_airport
26382	Mary	MYP	Mary International Airport	large_airport
26383	Dańoguz	TAZ	Dashoguz International Airport	large_airport
26384	Türkmenabat	CRZ	Türkmenabat International Airport	large_airport
26385	Dushanbe	DYU	Dushanbe International Airport	large_airport
6377	Kulob	TJU	Kulob International Airport	large_airport
26386	Khujand	LBD	Khujand International Airport	large_airport
32556	Bokhtar	KQT	Bokhtar International Airport	large_airport
32038	Namangan	NMA	Namangan International Airport	large_airport
30672	Andijan	AZN	Andijan International Airport	large_airport
32013	Nukus	NCU	Nukus International Airport	large_airport
26387	Urgench	UGC	Urgench International Airport	large_airport
26388	Bukhara	BHK	Bukhara International Airport	large_airport
26390	Samarkand	SKD	Samarkand International Airport	large_airport
26392	Tashkent	TAS	Tashkent International Airport	large_airport
42967	Moscow	ZIA	Zhukovsky International Airport	large_airport
26394	Moscow	DME	Domodedovo International Airport	large_airport
26395	Tunoshna	IAR	Golden Ring Yaroslavl International Airport	large_airport
26396	Moscow	SVO	Sheremetyevo International Airport	large_airport
26400	Voronezh	VOZ	Voronezh International Airport	large_airport
26401	Moscow	VKO	Vnukovo International Airport	large_airport
26403	Nizhny Novgorod	GOJ	Nizhny Novgorod / Strigino International Airport	large_airport
26404	Kazan	KZN	Kazan International Airport	large_airport
35104	Ulyanovsk	ULV	Ulyanovsk Baratayevka Airport	large_airport
42965	Saransk	SKX	Saransk International Airport	large_airport
339001	Saratov	GSV	Gagarin International Airport	large_airport
26411	Ufa	UFA	Ufa International Airport	large_airport
26412	Samara	KUF	Kurumoch International Airport	large_airport
26431	Ahmedabad	AMD	Sardar Vallabh Patel International Airport	large_airport
26434	Mumbai	BOM	Chhatrapati Shivaji Maharaj International Airport	large_airport
26438	Vadodara	BDQ	Vadodara International Airport	large_airport
26439	Bhopal	BHO	Raja Bhoj International Airport	large_airport
512065	Rajkot	HSR	Rajkot International Airport	large_airport
26446	Indore	IDR	Devi Ahilya Bai Holkar International Airport	large_airport
26453	Nagpur	NAG	Dr. Babasaheb Ambedkar International Airport	large_airport
3301	Nashik	ISK	Nashik International Airport	large_airport
26455	Pune	PNQ	Pune International Airport	large_airport
327452	Kakadi	SAG	Shirdi International Airport	large_airport
26461	Surat	STV	Surat International Airport	large_airport
26463	Colombo	CMB	Bandaranaike International Colombo Airport	large_airport
26466	Colombo	RML	Colombo Ratmalana International Airport	large_airport
26468	Jaffna	JAF	Jaffna International Airport	large_airport
309579	Mattala	HRI	Mattala Rajapaksa International Airport	large_airport
26475	Phnom Penh (Pou Senchey)	PNH	Phnom Penh International Airport	large_airport
513482	Siem Reap	SAI	Siem Reap-Angkor International Airport	large_airport
26478	Preah Sihanouk	KOS	Sihanouk International Airport	large_airport
26491	Siliguri	IXB	Bagdogra Airport	large_airport
26545	Varanasi	VNS	Lal Bahadur Shastri International Airport	large_airport
26494	Bhubaneswar	BBI	Biju Patnaik International Airport	large_airport
26496	Kolkata	CCU	Netaji Subhash Chandra Bose International Airport	large_airport
26501	Guwahati	GAU	Lokpriya Gopinath Bordoloi International Airport	large_airport
26504	Imphal	IMF	Bir Tikendrajit International Airport	large_airport
26523	Visakhapatnam	VTZ	Visakhapatnam International Airport	large_airport
26527	Chattogram (Chittagong)	CGP	Shah Amanat International Airport	large_airport
26534	Dhaka	DAC	Hazrat Shahjalal International Airport	large_airport
26532	Sylhet	ZYL	Osmany International Airport	large_airport
26535	Hong Kong	HKG	Hong Kong International Airport	large_airport
26540	Amritsar	ATQ	Sri Guru Ram Das Ji International Airport	large_airport
26550	Chandigarh	IXC	Shaheed Bhagat Singh International Airport	large_airport
26555	New Delhi	DEL	Indira Gandhi International Airport	large_airport
26559	Hisar	HSS	Maharaja Agrasen International Airport	large_airport
26560	Halwara	HWR	Halwara International Airport	large_airport
26563	Jaipur	JAI	Jaipur International Airport	large_airport
26570	Lucknow	LKO	Chaudhary Charan Singh International Airport	large_airport
26578	Srinagar	SXR	Sheikh ul Alam International Airport	large_airport
26583	Luang Phabang	LPQ	Luang Phabang International Airport	large_airport
26584	Pakse	PKZ	Pakse International Airport	large_airport
26588	Vientiane	VTE	Wattay International Airport	large_airport
26589	Nossa Senhora do Carmo	MFM	Macau International Airport	large_airport
342100	Ho Chi Minh City (Long Thanh)	LTH	Long Thanh International Airport (Under Construction)	large_airport
26593	Siddharthanagar (Bhairahawa)	BWA	Gautam Buddha International Airport	large_airport
26596	Kathmandu	KTM	Tribhuvan International Airport	large_airport
35145	Bengaluru	BLR	Kempegowda International Airport Bengaluru	large_airport
26606	Vijayawada	VGA	Vijayawada International Airport	large_airport
26607	Coimbatore	CJB	Coimbatore International Airport	large_airport
26609	Kochi	COK	Cochin International Airport	large_airport
26610	Calicut	CCJ	Calicut International Airport	large_airport
342094	Mopa	GOX	Manohar International Airport	large_airport
26444	Vasco da Gama	GOI	Goa Dabolim International Airport	large_airport
35141	Hyderabad	HYD	Rajiv Gandhi International Airport	large_airport
329504	Kannur	CNN	Kannur International Airport	large_airport
26617	Mangaluru	IXE	Mangaluru International Airport	large_airport
26618	Chennai	MAA	Chennai International Airport	large_airport
26620	Port Blair	IXZ	Veer Savarkar International Airport / INS Utkrosh	large_airport
26627	Tirupati	TIR	Tirupati International Airport	large_airport
26628	Tiruchirappalli	TRZ	Tiruchirappalli International Airport	large_airport
26629	Thiruvananthapuram	TRV	Thiruvananthapuram International Airport	large_airport
26632	Paro	PBH	Paro International Airport	large_airport
335882	Noonu Atoll	NMF	Maafaru International Airport	large_airport
26633	Gan	GAN	Gan International Airport	large_airport
26634	Haa Dhaalu Atoll	HAQ	Hanimaadhoo International Airport	large_airport
26636	Malé	MLE	Velana International Airport	large_airport
26638	Bangkok	DMK	Don Mueang International Airport	large_airport
28118	Bangkok	BKK	Suvarnabhumi Airport	large_airport
26645	Rayong	UTP	U-Tapao-Rayong-Pattaya International Airport	large_airport
26647	Chiang Mai	CNX	Chiang Mai International Airport	large_airport
26653	Chiang Rai	CEI	Mae Fah Luang - Chiang Rai International Airport	large_airport
26669	Krabi	KBV	Krabi International Airport	large_airport
26672	Na Thon (Ko Samui Island)	USM	Samui International Airport	large_airport
26674	Phuket	HKT	Phuket International Airport	large_airport
26676	Hat Yai	HDY	Hat Yai International Airport	large_airport
26678	Udon Thani	UTH	Udon Thani International Airport	large_airport
26692	Haiphong (Hai An)	HPH	Cat Bi International Airport	large_airport
26693	Nha Trang/nha Trang aiurportCam Ranh	CXR	Cam Ranh International Airport / Cam Ranh Air Base	large_airport
26695	Can Tho	VCA	Can Tho International Airport	large_airport
26697	Da Nang	DAD	Da Nang International Airport	large_airport
26700	Hanoi (Soc Son)	HAN	Noi Bai International Airport	large_airport
26705	Phu Quoc Island	PQC	Phú Quốc International Airport	large_airport
26708	Ho Chi Minh City	SGN	Tan Son Nhat International Airport	large_airport
26727	Mandalay	MDL	Mandalay International Airport	large_airport
26717	Naypyitaw	NYT	Nay Pyi Taw International Airport	large_airport
26744	Yangon	RGN	Yangon International Airport	large_airport
26745	Makassar	UPG	Sultan Hasanuddin International Airport	large_airport
26751	Kuta, Badung	DPS	Denpasar I Gusti Ngurah Rai International Airport	large_airport
299629	Mataram (Pujut, Lombok Tengah)	LOP	Lombok International Airport	large_airport
26755	Sentani	DJJ	Dortheys Hiyo Eluay International Airport	large_airport
26760	Balikpapan	BPN	Sultan Aji Muhammad Sulaiman Sepinggan International Airport	large_airport
26770	Manado	MDC	Sam Ratulangi International Airport	large_airport
26779	Banjarbaru	BDJ	Syamsudin Noor International Airport	large_airport
26784	Ambon	AMQ	Pattimura International Airport	large_airport
26787	Yogyakarta	JOG	Adisutjipto International Airport	large_airport
26789	Surabaya	SUB	Juanda International Airport	large_airport
26790	Semarang	SRG	Jenderal Ahmad Yani Airport	large_airport
26808	Kuching	KCH	Kuching International Airport	large_airport
26814	Kota Kinabalu	BKI	Kota Kinabalu International Airport	large_airport
26819	Bandar Seri Begawan	BWN	Brunei International Airport	large_airport
26828	Batam	BTH	Hang Nadim International Airport	large_airport
26832	Jakarta	HLP	Halim Perdanakusuma International Airport	large_airport
26835	Jakarta	CGK	Soekarno-Hatta International Airport	large_airport
309577	Beringin	KNO	Kualanamu International Airport	large_airport
26847	Pontianak	PNK	Supadio International Airport	large_airport
26862	Banda Aceh	BTJ	Sultan Iskandar Muda International Airport	large_airport
26872	Ipoh	IPH	Sultan Azlan Shah Airport	large_airport
26873	Johor Bahru	JHB	Senai International Airport	large_airport
26874	Sepang	KUL	Kuala Lumpur International Airport	large_airport
26875	Langkawi	LGK	Langkawi International Airport	large_airport
26878	Penang	PEN	Penang International Airport	large_airport
26879	Subang	SZB	Sultan Abdul Aziz Shah International Airport	large_airport
26881	Dili	DIL	Presidente Nicolau Lobato International Airport	large_airport
35138	Oecussi-Ambeno	OEC	Oecusse Route of the Sandalwood International Airport	large_airport
26887	Singapore	SIN	Singapore Changi Airport	large_airport
26901	Brisbane	BNE	Brisbane International Airport	large_airport
26902	Gold Coast	OOL	Gold Coast Airport	large_airport
26904	Cairns	CNS	Cairns International Airport	large_airport
26927	Broome	BME	Broome International Airport	large_airport
26918	Maroochydore	MCY	Sunshine Coast Airport	large_airport
315119	Toowoomba	WTB	Toowoomba Wellcamp Airport	large_airport
516986	Mokha	\N	Mokha International Airport	large_airport
27043	Geelong/Melbourne	AVV	Melbourne Avalon International Airport	large_airport
27058	Hobart (Cambridge)	HBA	Hobart International Airport	large_airport
27066	Melbourne	MEL	Melbourne Airport	large_airport
27096	Adelaide	ADL	Adelaide International Airport	large_airport
27100	West Island	CCK	Cocos (Keeling) Islands Airport	large_airport
27101	Darwin	DRW	Darwin International Airport / RAAF Darwin	large_airport
27117	Port Hedland	PHE	Port Hedland International Airport	large_airport
27119	Perth	PER	Perth International Airport	large_airport
27145	Sydney (Mascot)	SYD	Sydney Kingsford Smith International Airport	large_airport
27175	Williamtown	NTL	Newcastle Airport	large_airport
27188	Beijing	PEK	Beijing Capital International Airport	large_airport
330820	Beijing	PKX	Beijing Daxing International Airport	large_airport
300513	Ordos	DSN	Ordos Ejin Horo International Airport	large_airport
30876	Datong	DAT	Datong Yungang International Airport	large_airport
27189	Hohhot	HET	Hohhot Baita International Airport	large_airport
27190	Hailar	HLD	Hulunbuir Hailar Airport	large_airport
30679	Baotou	BAV	Baotou Donghe International Airport	large_airport
27191	Shijiazhuang	SJW	Shijiazhuang Zhengding International Airport	large_airport
27192	Tianjin	TSN	Tianjin Binhai International Airport	large_airport
300455	Yuncheng (Yanhu)	YCU	Yuncheng Yanhu International Airport	large_airport
27193	Taiyuan	TYN	Taiyuan Wusu International Airport	large_airport
30958	Zhangjiajie (Yongding)	DYG	Zhangjiajie Hehua International Airport	large_airport
27194	Guangzhou (Huadu)	CAN	Guangzhou Baiyun International Airport	large_airport
27195	Changsha (Changsha)	CSX	Changsha Huanghua International Airport	large_airport
27196	Guilin (Lingui)	KWL	Guilin Liangjiang International Airport	large_airport
27197	Nanning (Jiangnan)	NNG	Nanning Wuxu International Airport	large_airport
32400	Jieyang (Rongcheng)	SWA	Jieyang Chaoshan International Airport	large_airport
30593	Zhuhai (Jinwan)	ZUH	Zhuhai Jinwan Airport	large_airport
27198	Shenzhen	SZX	Shenzhen Bao'an International Airport	large_airport
354995	Zhanjiang	ZHA	Zhanjiang Wuchuan International Airport	large_airport
27199	Zhengzhou	CGO	Zhengzhou Xinzheng International Airport	large_airport
347108	Ezhou	EHU	Ezhou Huahu International Airport	large_airport
27200	Wuhan (Huangpi)	WUH	Wuhan Tianhe International Airport	large_airport
31870	Luoyang (Laocheng)	LYA	Luoyang Beijiao Airport	large_airport
27201	Haikou (Meilan)	HAK	Haikou Meilan International Airport	large_airport
27202	Sanya (Tianya)	SYX	Sanya Phoenix International Airport	large_airport
27203	Pyongyang	FNJ	Pyongyang Sunan International Airport	large_airport
30929	Dunhuang	DNH	Dunhuang Mogao International Airport	large_airport
298989	Yinchuan	INC	Yinchuan Hedong International Airport	large_airport
31699	Jiayuguan	JGN	Jiayuguan International Airport	large_airport
27204	Lanzhou (Yongdeng)	LHW	Lanzhou Zhongchuan International Airport	large_airport
32709	Haidong (Huzhu Tu Autonomous County)	XNN	Xining Caojiabao International Airport	large_airport
27205	Xianyang (Weicheng)	XIY	Xi'an Xianyang International Airport	large_airport
335326	Ulaanbaatar (Sergelen)	UBN	Ulaanbaatar Chinggis Khaan International Airport	large_airport
27212	Ulaanbaatar	ULN	Buyant-Ukhaa International Airport	large_airport
27213	Jinghong (Gasa)	JHG	Xishuangbanna Gasa International Airport	large_airport
31828	Lijiang	LJG	Lijiang Sanyi International Airport	large_airport
27214	Kunming	KMG	Kunming Changshui International Airport	large_airport
27215	Xiamen	XMN	Xiamen Gaoqi International Airport	large_airport
27216	Nanchang	KHN	Nanchang Changbei International Airport	large_airport
27217	Fuzhou (Changle)	FOC	Fuzhou Changle International Airport	large_airport
27218	Hangzhou	HGH	Hangzhou Xiaoshan International Airport	large_airport
27219	Jinan (Licheng)	TNA	Jinan Yaoqiang International Airport	large_airport
44167	Lianyungang	LYG	Lianyungang Huaguoshan International Airport	large_airport
27220	Ningbo	NGB	Ningbo Lishe International Airport	large_airport
27221	Nanjing	NKG	Nanjing Lukou International Airport	large_airport
27222	Hefei	HFE	Hefei Xinqiao International Airport	large_airport
27223	Shanghai (Pudong)	PVG	Shanghai Pudong International Airport	large_airport
342096	Qingdao (Jiaozhou)	TAO	Qingdao Jiaodong International Airport	large_airport
31705	Quanzhou	JJN	Quanzhou Jinjiang International Airport	large_airport
300863	Huai'an	HIA	Huai'an Lianshui Airport	large_airport
27225	Shanghai (Minhang)	SHA	Shanghai Hongqiao International Airport	large_airport
32489	Huangshan	TXN	Huangshan Tunxi International Airport	large_airport
32684	Wuxi	WUX	Sunan Shuofang International Airport	large_airport
32672	Wenzhou (Longwan)	WNZ	Wenzhou Longwan International Airport	large_airport
35316	Yancheng (Tinghu)	YNZ	Yancheng Nanyang International Airport	large_airport
332096	Yantai	YNT	Yantai Penglai International Airport	large_airport
32726	Yiwu/Jinhua	YIW	Yiwu Airport	large_airport
31624	Zhoushan	HSN	Zhoushan Putuoshan International Airport	large_airport
27228	Chongqing	CKG	Chongqing Jiangbei International Airport	large_airport
27229	Guiyang (Nanming)	KWE	Guiyang Longdongbao International Airport	large_airport
31867	Shannan (Gonggar)	LXA	Lhasa Gonggar International Airport	large_airport
44122	Xigazê (Samzhubzê)	RKZ	Xigaze Peace Airport / Shigatse Air Base	large_airport
342095	Chengdu (Jianyang)	TFU	Chengdu Tianfu International Airport	large_airport
27230	Chengdu (Shuangliu)	CTU	Chengdu Shuangliu International Airport	large_airport
27234	Kashgar	KHG	Kashgar Laining International Airport	large_airport
27236	Ürümqi	URC	Ürümqi Tianshan International Airport	large_airport
27237	Changchun	CGQ	Changchun Longjia International Airport	large_airport
27238	Harbin	HRB	Harbin Taiping International Airport	large_airport
27241	Qiqihar	NDG	Qiqihar Sanjiazi Airport	large_airport
27242	Dalian (Ganjingzi)	DLC	Dalian Zhoushuizi International Airport	large_airport
27243	Shenyang	SHE	Shenyang Taoxian International Airport	large_airport
\.


-- Completed on 2026-08-25 18:38:30

--
-- PostgreSQL database dump complete
--

\unrestrict mAunONQKSNffLEsMcFvgqpJbFQCB2jXlO9USliQKntzy7S0LaEIztZA44OrY65P


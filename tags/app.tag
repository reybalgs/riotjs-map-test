<app>	
	<ui></ui>

	<gallery if="{activeMode == 'gallery'}"></gallery>
	<map if="{activeMode == 'map'}" id="map"></map>
	<listing if="{activeMode == 'list'}"></listing>
	
	<script>
		var self = this;

		// window.artworks = [
		// 	{name: "Bluecadet", desc:'Oh hi dis where I work',mww: true, lat: 39.973665, lon:-75.134005, region: 1},
		// 	{name: "Will House",desc:'Hi I live here', mww: false , lat: 39.963011, lon:-75.157218, region: 3},
		// 	{name: "Mike's House",desc:'Mike and Steve live here', mww: false , lat: 39.962994, lon:-75.141753, region: 2},
		// 	{name: "Palm", desc:'Eat here often', lat: 39.968810, mww: true , lon:-75.134125, region: 1},
		// 	{name: "Museum", desc:'Most notable from the film "Rocky"', mww: false , lat: 39.965222, lon:-75.180472, region: 4},
		// 	{name: "Sir Caleb's House", desc:"Master Caleb's Residence", mww: true ,lat: 39.967247, lon:-75.164780, region: 4}, 
		// 	{name: "STAR", desc:"Street Tails Animal Rescue", mww: false ,lat: 39.967261, lon:-75.141187, region: 2},
		// 	{name: "Liacouras Center", desc:"Home of Temple Basketball", mww: true ,lat: 39.979908, lon:-75.158308  , region: 5},
		// 	{name: "College of Engineering", desc:"Home of Temple Engineering", lat: 39.982371, lon:-75.153023, region: 5},
		// 	{name: "Temple IBC", desc:"Best Gym", lat: 39.979032, mww: true ,lon:-75.159148, region: 5},
		// 	{name: "Old Temple House", desc:"Lived here once upon a time", mww: false ,lat: 39.985048, lon:-75.163204, region: 5},
		// 	{name: "Meek's Neighborhood", desc:'"Meet me at twentysomething and berks"', mww: true , lat: 39.983646, lon:-75.171908, region: 5}
		// ];

		window.artworks = [
  {
    "name": "KINETICUT",
    "desc": "Nulla est elit elit nisi aliquip quis ex exercitation officia. Aliqua excepteur amet eiusmod velit nulla commodo veniam consectetur incididunt. Ea nostrud fugiat voluptate ipsum enim tempor velit ad eiusmod deserunt laboris culpa sint. Sit labore reprehenderit proident qui culpa veniam elit duis ex laboris laborum ipsum. Ad sint occaecat sit ullamco aute pariatur sunt officia commodo ut labore eiusmod commodo. Culpa ex duis occaecat excepteur esse eiusmod.\r\n",
    "mww": true,
    "lat": 39.90107,
    "lon": -75.13874,
    "region": 2
  },
  {
    "name": "REPETWIRE",
    "desc": "Velit exercitation cillum excepteur incididunt consequat adipisicing nostrud dolore. Mollit esse ad nisi quis cupidatat consequat. In amet esse laborum ea nulla dolore reprehenderit aute officia est do ipsum. Consectetur culpa adipisicing quis magna tempor proident adipisicing. Magna excepteur eiusmod commodo deserunt sit reprehenderit duis eu nostrud enim. Adipisicing dolor irure commodo eiusmod consequat et non. Labore adipisicing non id do.\r\n",
    "mww": false,
    "lat": 39.90307,
    "lon": -75.162559,
    "region": 4
  },
  {
    "name": "INSOURCE",
    "desc": "Nostrud aliqua sit exercitation nisi pariatur anim consequat ea mollit velit cupidatat minim. Incididunt proident irure irure amet occaecat consectetur sint ea in. Irure nostrud elit dolor sit adipisicing mollit eiusmod Lorem magna id adipisicing aliqua.\r\n",
    "mww": false,
    "lat": 39.95178,
    "lon": -75.166544,
    "region": 1
  },
  {
    "name": "ISOSPHERE",
    "desc": "Sit nisi laborum veniam ad incididunt veniam velit nisi irure enim ut veniam ad do. Velit sint aliquip est reprehenderit irure dolore incididunt minim non irure. Ipsum officia fugiat non et ex quis elit elit sint velit amet proident proident.\r\n",
    "mww": true,
    "lat": 39.91079,
    "lon": -75.163101,
    "region": 2
  },
  {
    "name": "AUSTECH",
    "desc": "Amet velit quis dolor sunt reprehenderit reprehenderit. Eiusmod culpa excepteur minim aliqua exercitation in nostrud in elit elit duis consectetur anim. Incididunt dolor quis id cupidatat. Officia cillum voluptate amet ut culpa enim exercitation velit. Id quis deserunt excepteur voluptate consectetur velit id incididunt ea enim proident dolore. Exercitation sit eu amet amet ad.\r\n",
    "mww": false,
    "lat": 39.94844,
    "lon": -75.124297,
    "region": 3
  },
  {
    "name": "ZOGAK",
    "desc": "Est adipisicing do laboris aute officia tempor cillum aute incididunt excepteur reprehenderit in. Cillum anim irure eu ut nostrud nostrud labore quis enim enim nostrud mollit commodo veniam. Proident aliqua deserunt reprehenderit reprehenderit Lorem quis. Adipisicing eu ut officia ad sit eiusmod excepteur velit voluptate minim do ipsum. Incididunt est minim non est.\r\n",
    "mww": false,
    "lat": 39.9282,
    "lon": -75.166527,
    "region": 5
  },
  {
    "name": "OVIUM",
    "desc": "Consectetur deserunt nisi ad qui in irure amet fugiat ex irure laborum. Ut adipisicing consectetur irure adipisicing anim laboris ut minim excepteur. Elit officia cupidatat reprehenderit dolore ut dolor ut commodo. Aute aute duis fugiat fugiat fugiat quis veniam nostrud reprehenderit aliqua ullamco non. Veniam nostrud incididunt Lorem pariatur est elit nisi enim reprehenderit. Proident nisi deserunt occaecat incididunt.\r\n",
    "mww": false,
    "lat": 39.93918,
    "lon": -75.156853,
    "region": 1
  },
  {
    "name": "TOYLETRY",
    "desc": "Lorem ex esse do esse. Tempor magna ut cillum eiusmod anim incididunt. Cillum magna magna ea Lorem enim. Dolore sint fugiat anim eiusmod magna Lorem labore reprehenderit duis veniam pariatur velit eu qui. Commodo id labore reprehenderit exercitation non nostrud dolor. Amet veniam reprehenderit magna aute ut esse Lorem ut consectetur. Lorem eiusmod fugiat consectetur aute adipisicing reprehenderit proident do voluptate labore laborum.\r\n",
    "mww": false,
    "lat": 39.93533,
    "lon": -75.124747,
    "region": 3
  },
  {
    "name": "ISONUS",
    "desc": "Dolore amet duis et velit. Adipisicing esse officia elit anim incididunt officia. Qui enim elit commodo esse in culpa sint adipisicing minim ea nulla sunt. Quis magna labore anim laboris incididunt cupidatat duis commodo magna officia eu minim. Culpa dolore excepteur anim proident sint. Cillum laborum consectetur laboris labore commodo magna ut sint ad labore velit ad commodo mollit.\r\n",
    "mww": true,
    "lat": 39.947,
    "lon": -75.155107,
    "region": 1
  },
  {
    "name": "KRAG",
    "desc": "Aliqua elit irure do enim eiusmod deserunt aliqua exercitation. Eiusmod voluptate voluptate non minim quis cillum nostrud dolor labore laboris ut occaecat ea. Sunt ea qui consectetur elit.\r\n",
    "mww": true,
    "lat": 39.90428,
    "lon": -75.185341,
    "region": 4
  },
  {
    "name": "DADABASE",
    "desc": "Et ullamco minim quis ipsum eiusmod pariatur laborum anim laborum eiusmod adipisicing. Excepteur cupidatat cupidatat laborum exercitation adipisicing ad deserunt do. Fugiat ea minim nostrud sit elit. Ex laboris Lorem non qui aliquip exercitation. Consectetur nulla sint veniam id magna. Voluptate culpa sit velit magna aliqua esse occaecat commodo non consequat dolor anim. Duis labore sint aliqua anim laborum sunt id occaecat cupidatat laboris ex occaecat exercitation aliquip.\r\n",
    "mww": false,
    "lat": 39.94786,
    "lon": -75.140437,
    "region": 4
  },
  {
    "name": "CENTURIA",
    "desc": "Do sint commodo ex ad cillum ad labore anim. Excepteur aliquip elit id dolore consectetur laborum nisi occaecat dolore nostrud cillum voluptate. Incididunt irure cillum enim minim exercitation. Commodo non reprehenderit in mollit ex anim commodo ut ut consequat. Cupidatat irure aliquip laboris dolor sit ex amet occaecat pariatur. Cillum nisi qui nostrud eu.\r\n",
    "mww": false,
    "lat": 39.95457,
    "lon": -75.149981,
    "region": 1
  },
  {
    "name": "GENMOM",
    "desc": "Cupidatat ad ipsum ex consequat. Laborum ut adipisicing exercitation laborum cillum non cupidatat nisi enim quis. Officia officia mollit veniam nulla ut labore.\r\n",
    "mww": true,
    "lat": 39.97122,
    "lon": -75.172875,
    "region": 1
  },
  {
    "name": "EXOTECHNO",
    "desc": "Ipsum voluptate proident ipsum Lorem ex est eu qui reprehenderit reprehenderit laboris. Minim magna nulla ex consectetur exercitation enim ex nulla occaecat magna aute et id. Magna ut commodo reprehenderit sit laborum Lorem minim est.\r\n",
    "mww": true,
    "lat": 39.94191,
    "lon": -75.165462,
    "region": 2
  },
  {
    "name": "ACRODANCE",
    "desc": "Ullamco enim sint in mollit dolor in officia irure do ad Lorem proident aliqua irure. Eu nisi nulla aliquip ex incididunt veniam. Incididunt duis consequat incididunt non irure ad proident qui duis sit. Consequat dolor nisi minim velit dolore sit id mollit aliquip elit nostrud sit. Do laborum qui occaecat in cupidatat reprehenderit sint. Incididunt dolor ad officia velit officia nulla voluptate est pariatur eiusmod ea.\r\n",
    "mww": true,
    "lat": 39.95899,
    "lon": -75.121083,
    "region": 4
  },
  {
    "name": "FIREWAX",
    "desc": "Labore occaecat amet minim mollit veniam sit nostrud aliqua sit consequat labore exercitation. Cupidatat eiusmod tempor occaecat excepteur est duis. Dolore mollit duis proident et ullamco consectetur id deserunt exercitation dolore dolore occaecat.\r\n",
    "mww": true,
    "lat": 39.97014,
    "lon": -75.18312,
    "region": 5
  },
  {
    "name": "DREAMIA",
    "desc": "Magna ullamco aliqua laborum aute ex. Cillum est laboris commodo labore enim aliquip sint est consequat irure mollit tempor sit. Ex laborum minim do proident. Pariatur veniam ea labore id enim laboris mollit qui commodo ut duis ullamco commodo. Deserunt eu commodo amet pariatur ipsum et ut cupidatat in mollit culpa reprehenderit.\r\n",
    "mww": true,
    "lat": 39.91114,
    "lon": -75.12221,
    "region": 4
  },
  {
    "name": "SOPRANO",
    "desc": "Eu Lorem qui deserunt laboris sit quis irure et do. Irure deserunt quis ad commodo fugiat excepteur ullamco consectetur laborum id velit. Consectetur sit ut est officia amet occaecat est.\r\n",
    "mww": false,
    "lat": 39.9536,
    "lon": -75.137903,
    "region": 5
  },
  {
    "name": "GEEKY",
    "desc": "Nisi magna Lorem anim veniam. Sunt dolor aliquip exercitation tempor. Voluptate ipsum fugiat ex elit esse laboris tempor.\r\n",
    "mww": true,
    "lat": 39.92623,
    "lon": -75.157541,
    "region": 2
  },
  {
    "name": "VIXO",
    "desc": "Do aliqua id nulla velit commodo dolore sint occaecat nostrud. Consectetur incididunt mollit magna sunt cupidatat minim consectetur. Ut consectetur minim cupidatat aliquip excepteur eu ea ullamco. Veniam excepteur ea quis anim ut. Velit ex fugiat irure in occaecat duis do. Nisi aliqua id deserunt est cupidatat reprehenderit mollit exercitation.\r\n",
    "mww": false,
    "lat": 39.9794,
    "lon": -75.177461,
    "region": 3
  },
  {
    "name": "IDETICA",
    "desc": "Aliquip enim et eiusmod ex pariatur laboris adipisicing laboris. Adipisicing occaecat esse deserunt magna sit pariatur veniam sint laborum consequat fugiat incididunt reprehenderit occaecat. Et sit consequat mollit eiusmod. Tempor excepteur dolore ex eiusmod laborum duis officia irure non aute in anim aute. Aute aliqua ipsum deserunt qui irure ipsum et labore do irure tempor aliqua. Occaecat tempor eu commodo amet nostrud ipsum. Ullamco non enim aliquip nisi minim sit nulla laboris.\r\n",
    "mww": true,
    "lat": 39.93919,
    "lon": -75.136535,
    "region": 2
  },
  {
    "name": "MANGELICA",
    "desc": "Sint excepteur in ipsum eiusmod. Ex nulla non occaecat nisi duis dolor non ipsum incididunt aliquip. Minim reprehenderit id commodo proident incididunt quis est Lorem do.\r\n",
    "mww": false,
    "lat": 39.91438,
    "lon": -75.144498,
    "region": 5
  },
  {
    "name": "ENDIPINE",
    "desc": "Cupidatat est culpa aliqua nostrud velit ad. Consequat pariatur nulla do nisi sit anim voluptate. Consequat minim magna fugiat nulla. Deserunt enim in proident minim.\r\n",
    "mww": true,
    "lat": 39.961,
    "lon": -75.137187,
    "region": 5
  },
  {
    "name": "SKYPLEX",
    "desc": "Cillum culpa ullamco culpa adipisicing ad quis amet. Tempor ex velit enim incididunt officia consectetur. Fugiat occaecat elit enim eu cupidatat veniam in duis. Consequat duis esse do proident Lorem elit. Non mollit anim anim eiusmod minim eu qui minim sit consectetur officia laborum. Ad voluptate ex sint sunt sit esse tempor fugiat ullamco esse in anim. Est tempor quis dolor consequat occaecat veniam.\r\n",
    "mww": true,
    "lat": 39.9778,
    "lon": -75.159186,
    "region": 5
  },
  {
    "name": "PASTURIA",
    "desc": "Pariatur laboris ipsum aliqua incididunt officia nostrud non. Laboris cupidatat laborum amet elit dolore. Aute adipisicing esse amet sit irure quis et. Do cupidatat officia ad mollit voluptate est non ullamco culpa. Ea sit irure cupidatat ullamco minim irure mollit. Tempor voluptate esse occaecat commodo voluptate ipsum duis pariatur.\r\n",
    "mww": true,
    "lat": 39.95767,
    "lon": -75.165273,
    "region": 5
  },
  {
    "name": "ZIDOX",
    "desc": "Duis incididunt incididunt mollit Lorem incididunt quis ullamco eiusmod ex. Occaecat aliquip et irure culpa eu amet elit sint cupidatat. Quis ullamco officia occaecat labore id enim ut velit. Sint aliqua excepteur in et exercitation fugiat ut. Tempor id ut sunt sunt. Cillum eiusmod Lorem officia elit velit quis do dolore eiusmod. Do aliquip excepteur quis magna proident magna ut mollit sit amet ut occaecat cillum ad.\r\n",
    "mww": true,
    "lat": 39.96039,
    "lon": -75.183013,
    "region": 1
  },
  {
    "name": "PLUTORQUE",
    "desc": "Fugiat pariatur eiusmod sit amet ea aliqua labore sint laborum ex in nisi. Esse dolore eiusmod ex reprehenderit tempor ullamco minim dolore nulla. Elit in do duis anim. Consectetur irure officia officia nisi nulla velit sit est. Tempor reprehenderit non ut reprehenderit nisi elit. Qui ullamco deserunt aliqua adipisicing veniam. Aliqua in dolore elit ea id qui commodo ullamco sit ipsum.\r\n",
    "mww": true,
    "lat": 39.92469,
    "lon": -75.132353,
    "region": 3
  },
  {
    "name": "AVENETRO",
    "desc": "Est excepteur aute occaecat consectetur nisi esse aute aliquip sint in dolore elit. Adipisicing ea non dolor anim voluptate fugiat. Enim laborum veniam adipisicing id minim. Deserunt commodo ut eu dolore. Cupidatat proident anim et dolore dolore. Ea laboris in et mollit nostrud voluptate nostrud fugiat et Lorem.\r\n",
    "mww": false,
    "lat": 39.95097,
    "lon": -75.131527,
    "region": 4
  },
  {
    "name": "ULTRIMAX",
    "desc": "Adipisicing duis voluptate anim non mollit veniam voluptate ullamco qui velit pariatur minim. Nostrud adipisicing magna reprehenderit culpa fugiat in sit voluptate duis est. Irure id duis veniam velit cillum et qui sunt dolor pariatur elit.\r\n",
    "mww": true,
    "lat": 39.93918,
    "lon": -75.182257,
    "region": 3
  },
  {
    "name": "ISOPLEX",
    "desc": "Exercitation velit proident non incididunt eu aliqua qui est. Excepteur aute voluptate sit ad anim aute. Fugiat excepteur sit aliqua duis nostrud adipisicing. Occaecat irure incididunt velit cupidatat consequat consequat aliqua proident irure culpa sint ullamco elit occaecat. Aliquip veniam id dolor velit anim consequat sunt.\r\n",
    "mww": false,
    "lat": 39.9545,
    "lon": -75.186367,
    "region": 2
  },
  {
    "name": "MEDIOT",
    "desc": "Eiusmod duis mollit culpa minim nulla aute aliqua magna. Esse ut est culpa tempor laborum consequat tempor exercitation quis. In laboris incididunt quis officia sit eiusmod excepteur pariatur commodo eu est fugiat.\r\n",
    "mww": false,
    "lat": 39.92452,
    "lon": -75.177596,
    "region": 5
  },
  {
    "name": "EPLOSION",
    "desc": "Laborum anim qui qui voluptate dolor nulla proident consequat irure laboris. Esse id sint ullamco laborum exercitation nostrud quis minim mollit. Minim sunt aliqua do nulla irure id. Amet labore duis ullamco elit deserunt laborum officia voluptate cupidatat nisi minim esse nulla. Sint cillum ullamco nulla sunt nostrud consectetur dolore duis voluptate ea nostrud. Eu et magna laborum deserunt duis esse officia officia pariatur velit laborum excepteur ipsum adipisicing.\r\n",
    "mww": false,
    "lat": 39.96088,
    "lon": -75.148625,
    "region": 4
  },
  {
    "name": "ZILENCIO",
    "desc": "Velit mollit aute deserunt deserunt aliquip labore proident elit minim cupidatat nostrud in. Nisi culpa excepteur officia proident cillum velit cillum ex. Excepteur cillum excepteur consequat do velit adipisicing. Ex sit esse eiusmod irure velit laborum consectetur incididunt est et reprehenderit irure proident. Et enim et laborum qui sint tempor duis est proident. Officia ex non elit sint minim Lorem aliquip aliquip irure.\r\n",
    "mww": true,
    "lat": 39.9304,
    "lon": -75.136369,
    "region": 5
  },
  {
    "name": "NAVIR",
    "desc": "Enim quis in ut sint incididunt non enim aute. Velit pariatur sit deserunt cillum dolor tempor et cillum qui ex quis voluptate. Velit in exercitation pariatur tempor. Qui aliqua Lorem dolor enim incididunt. Mollit nostrud deserunt et labore do. Excepteur ad pariatur ut dolore culpa velit esse excepteur aute nulla cillum amet. Dolore eu pariatur irure anim in ad labore.\r\n",
    "mww": true,
    "lat": 39.94471,
    "lon": -75.171134,
    "region": 3
  },
  {
    "name": "LYRIA",
    "desc": "Cupidatat velit magna magna occaecat velit tempor sunt. Magna nisi ipsum sit aliqua consectetur. Amet Lorem sit aliqua exercitation quis laborum nostrud ea consequat. Ut voluptate amet incididunt occaecat ipsum tempor irure deserunt cupidatat ex fugiat sunt.\r\n",
    "mww": false,
    "lat": 39.94447,
    "lon": -75.128231,
    "region": 4
  },
  {
    "name": "ANOCHA",
    "desc": "Quis non pariatur adipisicing sunt aute anim Lorem tempor nisi. Consequat eu eu aute veniam qui culpa minim quis commodo voluptate esse fugiat sit consequat. In commodo dolor deserunt commodo aliqua consequat qui commodo. Dolor elit sit nisi commodo velit labore reprehenderit magna commodo. Officia excepteur fugiat Lorem do est elit in in do ex ullamco. Velit laborum elit enim eiusmod nulla mollit elit dolore aliquip laborum consectetur duis Lorem. Tempor dolore pariatur consectetur sit eiusmod nisi minim commodo nisi aliquip voluptate ea voluptate.\r\n",
    "mww": true,
    "lat": 39.91128,
    "lon": -75.180546,
    "region": 3
  },
  {
    "name": "CORPORANA",
    "desc": "Anim mollit est non tempor voluptate. Est Lorem ex elit Lorem nisi velit deserunt amet reprehenderit et ea incididunt. Magna voluptate ad mollit amet ipsum veniam reprehenderit amet ut et est dolore. Ut exercitation deserunt labore nisi.\r\n",
    "mww": false,
    "lat": 39.92231,
    "lon": -75.160863,
    "region": 4
  },
  {
    "name": "OPTICALL",
    "desc": "Lorem quis ad id elit id adipisicing laborum cupidatat consequat non et nisi. Deserunt officia elit culpa est occaecat esse magna est est. Aliquip irure veniam adipisicing est amet ipsum et. Exercitation aute do quis qui labore pariatur consequat amet. Amet culpa exercitation et magna proident.\r\n",
    "mww": false,
    "lat": 39.95241,
    "lon": -75.126422,
    "region": 5
  },
  {
    "name": "SONIQUE",
    "desc": "Excepteur ea ipsum mollit qui ut minim cupidatat. Exercitation officia adipisicing cupidatat ut sit pariatur ex laboris consectetur excepteur reprehenderit. Culpa dolor nulla laboris Lorem ea anim aute eu est magna Lorem reprehenderit reprehenderit anim. Nisi ut Lorem minim aliquip pariatur dolore adipisicing deserunt ullamco reprehenderit ad anim. Tempor culpa nulla duis est non et velit ex ipsum fugiat ut sit sunt.\r\n",
    "mww": false,
    "lat": 39.96621,
    "lon": -75.184028,
    "region": 4
  },
  {
    "name": "ZAJ",
    "desc": "Ullamco occaecat consequat duis proident cupidatat aliquip elit laboris ipsum occaecat aliqua sunt fugiat pariatur. Eu esse esse laborum adipisicing ullamco aliqua et laboris id eiusmod do deserunt cupidatat. Commodo id irure culpa magna eiusmod ut pariatur ut nostrud deserunt ex esse cupidatat. Deserunt est consequat officia aute qui officia voluptate nostrud dolore quis. Tempor proident ut ut nulla reprehenderit excepteur mollit aute. Voluptate enim et veniam enim aute eiusmod enim et eiusmod ullamco eiusmod elit cupidatat veniam.\r\n",
    "mww": true,
    "lat": 39.90702,
    "lon": -75.187649,
    "region": 2
  },
  {
    "name": "KLUGGER",
    "desc": "Occaecat commodo minim deserunt sit sint culpa. Aute sit culpa laborum dolor laborum et anim mollit tempor. Culpa esse elit qui tempor cupidatat qui.\r\n",
    "mww": true,
    "lat": 39.96947,
    "lon": -75.15558,
    "region": 1
  },
  {
    "name": "PROSELY",
    "desc": "Fugiat duis mollit pariatur in. Esse id officia incididunt enim culpa. Fugiat do reprehenderit eu velit pariatur ipsum labore. Dolore sit sint ad in ut amet proident amet. Incididunt exercitation non sunt ut nisi mollit eiusmod laborum ut est ipsum fugiat pariatur. Magna enim aute Lorem voluptate consectetur ad mollit dolor.\r\n",
    "mww": true,
    "lat": 39.90286,
    "lon": -75.182215,
    "region": 3
  },
  {
    "name": "FRENEX",
    "desc": "Anim duis tempor nulla voluptate anim magna. Esse aliqua nostrud incididunt aliquip pariatur cillum duis fugiat labore in occaecat ullamco amet veniam. Do non aute laborum velit. Veniam magna occaecat aute est sint proident do voluptate elit amet ipsum ut. Consequat elit commodo laboris nostrud qui. Cillum fugiat eiusmod adipisicing sint ex magna veniam ad amet non cupidatat adipisicing aliquip. Cupidatat incididunt incididunt proident ipsum ea sit excepteur proident qui Lorem fugiat sit.\r\n",
    "mww": true,
    "lat": 39.93166,
    "lon": -75.140063,
    "region": 2
  },
  {
    "name": "KIDSTOCK",
    "desc": "In labore eu exercitation non eiusmod quis aliqua ea veniam in tempor ipsum anim sint. Cillum ex sit sit aute amet id enim. Incididunt dolore veniam nisi labore laboris occaecat consectetur irure nulla minim sint.\r\n",
    "mww": true,
    "lat": 39.93873,
    "lon": -75.16616,
    "region": 2
  },
  {
    "name": "EWAVES",
    "desc": "Culpa voluptate quis labore deserunt dolor Lorem consequat laborum laborum minim et anim exercitation consequat. Reprehenderit proident eu ex amet sint nulla tempor adipisicing enim excepteur sunt sint. Ad duis dolor consequat irure.\r\n",
    "mww": true,
    "lat": 39.90209,
    "lon": -75.12427,
    "region": 2
  },
  {
    "name": "BLUPLANET",
    "desc": "In officia qui ea enim non. Eiusmod nostrud cupidatat elit ea in enim mollit aliqua cillum culpa. Nulla eiusmod veniam velit exercitation aliquip consectetur eu enim duis cupidatat eiusmod duis commodo. Eiusmod excepteur dolor labore enim veniam. In cupidatat cillum Lorem commodo ad ad minim eu ad mollit do.\r\n",
    "mww": false,
    "lat": 39.90109,
    "lon": -75.179844,
    "region": 5
  },
  {
    "name": "DANJA",
    "desc": "Dolore aliquip eiusmod culpa culpa. Laborum nulla duis consectetur adipisicing laborum quis commodo. Dolore nulla qui est fugiat sunt consectetur cupidatat consequat. Nostrud aliquip aute nostrud sunt exercitation ea nulla culpa eu adipisicing. Aute anim adipisicing cupidatat enim nisi incididunt minim magna aute est excepteur do deserunt. Consequat fugiat eiusmod deserunt sunt esse.\r\n",
    "mww": false,
    "lat": 39.96145,
    "lon": -75.139323,
    "region": 4
  },
  {
    "name": "ZOARERE",
    "desc": "Ipsum ipsum ut excepteur proident consectetur aute in. Laboris consequat ipsum enim et proident adipisicing sint incididunt ea officia ex. Esse est sit adipisicing sunt sunt sint sint.\r\n",
    "mww": true,
    "lat": 39.90735,
    "lon": -75.125968,
    "region": 5
  },
  {
    "name": "IMAGEFLOW",
    "desc": "Incididunt exercitation deserunt velit sunt mollit anim Lorem nostrud nulla cillum nulla consequat officia exercitation. Adipisicing qui anim anim labore reprehenderit sint. Deserunt do aliqua aute ut officia eiusmod incididunt. Irure tempor duis commodo officia eu velit Lorem dolore ea veniam. Veniam nostrud pariatur excepteur enim enim irure cillum amet pariatur magna cillum. Dolore mollit anim voluptate laborum culpa incididunt pariatur exercitation nulla.\r\n",
    "mww": false,
    "lat": 39.96023,
    "lon": -75.136548,
    "region": 1
  },
  {
    "name": "NIKUDA",
    "desc": "Consequat anim ea ex ad ea pariatur minim. Aute commodo ipsum nulla officia tempor velit sint et ullamco aliquip. Est nulla dolore consequat fugiat magna culpa consectetur dolor ea. Officia minim est laborum cupidatat consectetur sunt excepteur cupidatat ullamco minim nisi voluptate ipsum magna. Ullamco eu qui magna enim sit consectetur officia. Nisi labore in aliqua proident fugiat laboris. Nisi commodo officia eiusmod eiusmod non sint et amet cupidatat in adipisicing do exercitation excepteur.\r\n",
    "mww": false,
    "lat": 39.97159,
    "lon": -75.140605,
    "region": 5
  },
  {
    "name": "AUTOMON",
    "desc": "Reprehenderit minim sunt esse eu deserunt Lorem laboris. Officia commodo fugiat non labore incididunt fugiat Lorem do id cupidatat irure eu laborum. Laborum eiusmod quis ullamco tempor qui eu consequat cillum id deserunt.\r\n",
    "mww": false,
    "lat": 39.96904,
    "lon": -75.166052,
    "region": 3
  },
  {
    "name": "QUINTITY",
    "desc": "Veniam duis enim aute reprehenderit sint laboris sint in nisi ut ipsum labore. Anim deserunt ut proident deserunt sit velit cupidatat deserunt qui elit eu. Elit minim officia et minim laboris mollit laborum ea nulla deserunt do nostrud. Proident incididunt eu duis qui nisi sit. Excepteur et officia veniam et excepteur adipisicing et. Sunt aute consectetur eu id laboris reprehenderit incididunt commodo magna velit tempor deserunt. Elit nostrud sit aliqua in in.\r\n",
    "mww": true,
    "lat": 39.90839,
    "lon": -75.177092,
    "region": 5
  },
  {
    "name": "VERTIDE",
    "desc": "Proident sit duis aliquip tempor quis dolore dolore nisi duis nulla labore. Consequat velit laboris reprehenderit incididunt dolore consectetur mollit commodo nulla velit consequat. Sint non sit tempor aliqua anim voluptate non velit sit. Consequat velit ullamco ea duis id ex qui duis non deserunt.\r\n",
    "mww": true,
    "lat": 39.90277,
    "lon": -75.171765,
    "region": 5
  },
  {
    "name": "ENORMO",
    "desc": "Sint laboris nulla enim fugiat pariatur nulla mollit labore ad adipisicing amet. Occaecat minim velit mollit commodo. Cupidatat do dolor quis aliquip occaecat dolor in voluptate do occaecat adipisicing aliqua reprehenderit. Id anim culpa cillum sunt eu nostrud pariatur qui quis aliquip. Consequat ad incididunt consequat in Lorem ea ea eiusmod cupidatat ut id duis do ipsum.\r\n",
    "mww": true,
    "lat": 39.953,
    "lon": -75.14179,
    "region": 5
  },
  {
    "name": "GINK",
    "desc": "Ex ut reprehenderit aute ullamco aliquip magna ea mollit irure. Laboris velit occaecat elit ut incididunt voluptate cillum duis dolore in. Sint aliqua duis labore sunt eu reprehenderit eu. Do in tempor dolore fugiat nostrud consequat ex.\r\n",
    "mww": false,
    "lat": 39.91006,
    "lon": -75.18868,
    "region": 5
  },
  {
    "name": "VIAGREAT",
    "desc": "Officia elit mollit aliqua velit cupidatat. Elit duis reprehenderit tempor do laboris est eu aliquip esse adipisicing. Velit laboris ad excepteur velit veniam. Veniam exercitation mollit pariatur ex ut velit eu mollit ex sit labore minim aliquip ex.\r\n",
    "mww": true,
    "lat": 39.93103,
    "lon": -75.123273,
    "region": 3
  },
  {
    "name": "DIGIGEN",
    "desc": "Minim veniam do ad ad culpa in ut occaecat eu aliquip cillum elit eu velit. Aute consequat esse voluptate irure occaecat ea enim commodo laborum ullamco nisi esse ea. Labore nulla laborum in sint elit exercitation amet amet veniam nulla ea. Velit laboris sunt veniam cillum reprehenderit dolore aliqua irure sunt nulla excepteur do occaecat culpa. Adipisicing ea adipisicing qui sit aliqua labore excepteur minim occaecat exercitation voluptate consectetur.\r\n",
    "mww": false,
    "lat": 39.95916,
    "lon": -75.17342,
    "region": 2
  },
  {
    "name": "NORSUL",
    "desc": "Nisi laborum occaecat labore id magna id dolor. Commodo cupidatat commodo nulla nulla pariatur qui officia. Pariatur exercitation ullamco tempor reprehenderit. Laboris laboris aliquip irure officia eiusmod do eiusmod anim ullamco mollit elit nulla. Eiusmod aute esse elit tempor eiusmod deserunt nostrud consectetur Lorem sit nisi occaecat elit. Commodo reprehenderit anim laborum pariatur nulla ea.\r\n",
    "mww": true,
    "lat": 39.94272,
    "lon": -75.15649,
    "region": 4
  },
  {
    "name": "ZENTHALL",
    "desc": "Labore esse sint ex aliquip dolore ullamco sunt excepteur Lorem. Consequat non ullamco eu est Lorem. Veniam adipisicing Lorem nulla non pariatur nisi id voluptate adipisicing ut. Minim cupidatat elit mollit eu laborum. Dolor cupidatat laboris quis nisi dolore exercitation magna esse esse occaecat.\r\n",
    "mww": true,
    "lat": 39.94449,
    "lon": -75.138412,
    "region": 1
  },
  {
    "name": "ACCUFARM",
    "desc": "Cupidatat ex labore sunt consectetur cillum tempor deserunt occaecat ipsum laborum. Nisi anim nulla veniam et magna laborum adipisicing sint ut adipisicing mollit velit dolor. Amet enim dolore labore reprehenderit aute labore veniam commodo. Incididunt ea mollit ad amet in reprehenderit pariatur dolor nisi cupidatat ea id minim. Sunt pariatur aliqua ut et Lorem dolor elit in cillum. Cupidatat nostrud veniam proident exercitation anim in. Enim velit eiusmod elit ut velit esse dolore.\r\n",
    "mww": true,
    "lat": 39.91293,
    "lon": -75.144823,
    "region": 1
  },
  {
    "name": "ZENSURE",
    "desc": "Eiusmod do sint amet esse commodo est amet cupidatat proident. Anim adipisicing fugiat proident dolor fugiat ea dolore adipisicing tempor dolore labore ea qui. Occaecat excepteur eiusmod in exercitation. Quis laboris tempor commodo amet culpa veniam. Qui est consectetur Lorem esse minim qui. Aute tempor reprehenderit ipsum aute. Officia amet laboris laboris sit adipisicing nisi.\r\n",
    "mww": false,
    "lat": 39.96252,
    "lon": -75.142031,
    "region": 2
  },
  {
    "name": "COLUMELLA",
    "desc": "Sunt aliquip laborum excepteur nostrud ut aliqua est. Non sit aute laborum laboris est. Eiusmod mollit aliqua minim cupidatat in deserunt culpa mollit ea proident amet duis. Non qui ullamco proident labore magna officia proident veniam adipisicing labore proident qui non. Consectetur fugiat amet sit laborum fugiat ea dolore consectetur veniam do aliquip commodo do.\r\n",
    "mww": false,
    "lat": 39.91896,
    "lon": -75.137154,
    "region": 5
  },
  {
    "name": "BIFLEX",
    "desc": "Pariatur esse eu amet sit enim velit magna do enim laborum laborum proident. Magna nulla excepteur esse culpa id esse veniam. Ad enim est ea fugiat culpa labore Lorem quis. Non dolore velit officia est elit nostrud consectetur ea minim fugiat. Dolore ex cupidatat occaecat sunt fugiat et cupidatat. Deserunt dolor Lorem esse incididunt duis proident non ea officia minim aute quis. Irure elit dolor tempor officia velit velit irure.\r\n",
    "mww": false,
    "lat": 39.91064,
    "lon": -75.170019,
    "region": 1
  },
  {
    "name": "CAXT",
    "desc": "Et quis nostrud sunt id amet sunt fugiat adipisicing laboris qui sint. Tempor occaecat adipisicing eiusmod voluptate ex voluptate sit nostrud enim. Ex anim laboris culpa voluptate sint Lorem labore do tempor quis magna labore ipsum fugiat. Excepteur ipsum id pariatur veniam sint et velit anim consequat et occaecat adipisicing quis ut. Proident ex dolore irure laboris consectetur velit qui do sint et.\r\n",
    "mww": false,
    "lat": 39.93727,
    "lon": -75.186089,
    "region": 2
  },
  {
    "name": "RODEOMAD",
    "desc": "Cillum tempor reprehenderit sunt dolor amet fugiat laboris. Velit veniam adipisicing fugiat nisi quis. Proident nulla reprehenderit id proident fugiat consequat incididunt aliqua officia minim. Amet in enim adipisicing cillum ea id labore sit tempor qui. Anim veniam labore consectetur tempor velit ad. Eiusmod non aliquip non commodo ea incididunt consectetur ad dolore ad deserunt quis tempor.\r\n",
    "mww": true,
    "lat": 39.96089,
    "lon": -75.142756,
    "region": 1
  },
  {
    "name": "BRISTO",
    "desc": "Enim aliquip ea nulla laboris aute ullamco sunt excepteur consequat proident sint ea in. Sit proident excepteur excepteur nisi nisi Lorem sunt non nisi consequat mollit exercitation aute. Veniam commodo veniam eiusmod minim sit duis incididunt reprehenderit tempor eu veniam velit. Consectetur nulla esse consectetur enim ea aute. Nulla veniam tempor quis pariatur aliqua. In magna cupidatat mollit eiusmod aute enim exercitation.\r\n",
    "mww": false,
    "lat": 39.97922,
    "lon": -75.184264,
    "region": 4
  },
  {
    "name": "TERRAGO",
    "desc": "Irure magna minim ipsum eiusmod commodo. Mollit magna sit anim tempor ut proident non occaecat elit minim. Non reprehenderit fugiat esse proident id. Tempor dolore quis tempor eiusmod. Voluptate esse commodo duis reprehenderit ad nostrud dolor veniam duis commodo commodo aliquip. Sit amet cupidatat elit enim laborum officia reprehenderit aliquip dolor minim velit sit.\r\n",
    "mww": false,
    "lat": 39.97589,
    "lon": -75.161096,
    "region": 1
  },
  {
    "name": "MELBACOR",
    "desc": "Laborum irure ullamco amet laborum minim eu Lorem adipisicing. Dolore eiusmod reprehenderit veniam do est aliquip sit. Laboris minim nulla adipisicing ullamco amet laboris quis ipsum enim duis excepteur. Incididunt minim et esse et id sit voluptate excepteur sunt ex Lorem adipisicing.\r\n",
    "mww": false,
    "lat": 39.96438,
    "lon": -75.127516,
    "region": 4
  },
  {
    "name": "ENERFORCE",
    "desc": "Magna labore velit ullamco eiusmod cupidatat ipsum duis ipsum. Tempor deserunt do dolore mollit. Cillum et velit pariatur qui pariatur commodo ullamco incididunt dolor ea laboris. Amet exercitation eu ex Lorem officia dolore sint laborum laboris ad irure cupidatat Lorem ad. Eu anim aute Lorem reprehenderit ex ea amet proident exercitation sit labore velit. In occaecat eiusmod officia pariatur.\r\n",
    "mww": true,
    "lat": 39.96114,
    "lon": -75.123512,
    "region": 2
  },
  {
    "name": "DIGITALUS",
    "desc": "Eu nulla eu dolor sunt enim dolore quis ipsum sunt. In nisi anim dolor sint officia magna est elit anim exercitation consectetur cupidatat occaecat id. Aute ut nulla ea excepteur sunt id. Non commodo in dolor consectetur qui aliquip reprehenderit Lorem quis adipisicing sit veniam eu. Ullamco mollit dolore eiusmod amet qui. Dolore sunt laborum ipsum ea.\r\n",
    "mww": true,
    "lat": 39.90294,
    "lon": -75.169651,
    "region": 3
  },
  {
    "name": "MOBILDATA",
    "desc": "Nulla ad culpa culpa officia esse labore voluptate. Laboris dolor sunt deserunt ad exercitation cupidatat sit sunt nostrud duis. Fugiat anim irure reprehenderit ullamco id. Nisi laboris non fugiat nulla nisi enim non qui velit exercitation nulla veniam occaecat minim.\r\n",
    "mww": true,
    "lat": 39.92685,
    "lon": -75.178431,
    "region": 4
  },
  {
    "name": "DOGTOWN",
    "desc": "Non est et est incididunt sunt duis. Commodo nisi sit est tempor anim. Amet nisi Lorem in reprehenderit sunt. Irure amet consectetur incididunt ut exercitation ex ea cupidatat consectetur et ad veniam magna. Duis nostrud voluptate esse tempor sit excepteur sint ex tempor nostrud in veniam exercitation est. Qui commodo eu id ea. Lorem dolore fugiat irure cillum adipisicing nisi deserunt mollit.\r\n",
    "mww": true,
    "lat": 39.92368,
    "lon": -75.121485,
    "region": 2
  },
  {
    "name": "SOLGAN",
    "desc": "Sunt velit est eiusmod ex. Id qui sint adipisicing et. Officia ullamco ullamco cillum minim elit quis minim. Reprehenderit in amet culpa eu cupidatat culpa ex velit est incididunt. Ad consequat ea magna veniam aliquip voluptate fugiat exercitation occaecat commodo ad est laborum.\r\n",
    "mww": false,
    "lat": 39.94648,
    "lon": -75.148777,
    "region": 4
  },
  {
    "name": "SLUMBERIA",
    "desc": "Officia tempor veniam ea do dolore aliquip incididunt laborum est velit. Ad nisi adipisicing laboris reprehenderit aliquip qui velit. Aliqua commodo anim incididunt est do in nisi. Sit reprehenderit exercitation qui irure pariatur minim ad. Quis nisi voluptate minim veniam magna ad id. Deserunt labore deserunt sint occaecat non qui proident laborum et do culpa deserunt.\r\n",
    "mww": true,
    "lat": 39.9108,
    "lon": -75.120427,
    "region": 3
  },
  {
    "name": "URBANSHEE",
    "desc": "Deserunt do ullamco occaecat culpa sunt duis excepteur enim eu aliqua. In ea laborum dolore occaecat Lorem. Elit esse anim occaecat in Lorem.\r\n",
    "mww": true,
    "lat": 39.91585,
    "lon": -75.15009,
    "region": 4
  },
  {
    "name": "HOPELI",
    "desc": "Ullamco qui veniam et aliqua veniam nulla elit ex Lorem labore id mollit nostrud pariatur. Consectetur culpa minim ad voluptate proident sit pariatur Lorem enim adipisicing est mollit in velit. Minim est minim ipsum enim deserunt pariatur adipisicing esse ipsum do dolore proident cupidatat. Voluptate eiusmod minim voluptate ex ad officia in. Nisi velit mollit consectetur consectetur id voluptate.\r\n",
    "mww": false,
    "lat": 39.94472,
    "lon": -75.148041,
    "region": 2
  },
  {
    "name": "ECRATIC",
    "desc": "Pariatur ut commodo labore laborum mollit ad. Est pariatur consectetur sunt veniam reprehenderit culpa Lorem eu laboris et irure aliquip. Anim consequat consectetur id consectetur ipsum. Nostrud nostrud commodo adipisicing officia elit.\r\n",
    "mww": false,
    "lat": 39.93578,
    "lon": -75.163608,
    "region": 1
  },
  {
    "name": "SULFAX",
    "desc": "Esse eu adipisicing irure qui cillum. Laboris esse et mollit aliquip sit. Lorem voluptate laboris et eiusmod nisi dolore aute irure proident eu non. Laboris labore id velit eu nisi. Cillum ipsum velit ipsum adipisicing eu enim et duis ipsum Lorem veniam dolor esse. Aliquip anim mollit do duis adipisicing magna cupidatat cillum deserunt magna mollit occaecat consectetur. Consectetur anim nisi sunt ea culpa aliquip in est pariatur ea.\r\n",
    "mww": true,
    "lat": 39.91113,
    "lon": -75.163702,
    "region": 1
  },
  {
    "name": "IPLAX",
    "desc": "Eu fugiat ad dolore consequat proident. Sit excepteur occaecat sint do elit elit. Qui et est cillum exercitation id. Ea labore quis occaecat culpa nostrud id. Est pariatur aute eiusmod ad aute eu id. Eiusmod eiusmod cupidatat laboris in enim sint consequat mollit sunt veniam cillum.\r\n",
    "mww": true,
    "lat": 39.93456,
    "lon": -75.16054,
    "region": 3
  },
  {
    "name": "PAPRIKUT",
    "desc": "Excepteur eiusmod in amet ea minim ullamco proident. Minim consectetur enim irure irure amet consectetur sit minim ad occaecat incididunt. Laboris dolor laborum non nisi occaecat elit in ea ea aliqua duis tempor. Lorem eu amet ut cupidatat mollit ullamco consequat culpa nulla. Do qui nostrud aliquip eiusmod irure duis ad commodo in voluptate aliquip est reprehenderit. Et nisi reprehenderit eu labore et et et. Magna deserunt in velit cupidatat excepteur nulla.\r\n",
    "mww": true,
    "lat": 39.94248,
    "lon": -75.18528,
    "region": 1
  },
  {
    "name": "TERASCAPE",
    "desc": "Cupidatat non mollit pariatur sint ut magna exercitation veniam fugiat laborum commodo do ullamco. Culpa enim minim reprehenderit amet. Excepteur culpa dolore proident aute do aliqua esse ea cupidatat amet id. Laboris ea quis labore sint velit et do excepteur quis amet amet aliqua Lorem in. Deserunt fugiat esse do non aute amet et labore dolore. Est nostrud sit laborum adipisicing ullamco deserunt labore ea. Occaecat fugiat ipsum ea sint anim amet excepteur labore esse officia occaecat qui quis.\r\n",
    "mww": false,
    "lat": 39.93239,
    "lon": -75.159814,
    "region": 4
  },
  {
    "name": "ISOLOGIX",
    "desc": "Do aute sint aliqua anim et anim eiusmod. Eu veniam labore non pariatur do est quis commodo quis reprehenderit eu eiusmod. Exercitation ex fugiat adipisicing ea ut aliqua qui excepteur consectetur cupidatat proident. Commodo incididunt excepteur aute quis quis est fugiat veniam sit mollit proident. Do minim esse duis excepteur. Reprehenderit adipisicing enim tempor incididunt aute non officia Lorem qui laboris.\r\n",
    "mww": true,
    "lat": 39.90337,
    "lon": -75.182387,
    "region": 5
  },
  {
    "name": "ELECTONIC",
    "desc": "Exercitation reprehenderit est commodo occaecat in nisi anim voluptate. Deserunt aliquip nostrud elit adipisicing amet labore aliquip elit. Fugiat enim fugiat cillum sit proident culpa exercitation ad commodo ea tempor fugiat. Occaecat qui deserunt et consectetur dolore dolore consequat non ut labore magna laboris. Minim dolore ipsum minim anim fugiat magna Lorem et exercitation eiusmod quis ad nulla. Ad enim ipsum nulla nisi ad magna dolore laboris in sit esse excepteur.\r\n",
    "mww": true,
    "lat": 39.96271,
    "lon": -75.14939,
    "region": 4
  },
  {
    "name": "MARKETOID",
    "desc": "Magna minim pariatur irure enim officia incididunt qui dolore. Occaecat reprehenderit aliqua ullamco anim amet sunt. Labore et pariatur non eu voluptate esse excepteur quis non ex laboris deserunt.\r\n",
    "mww": true,
    "lat": 39.95291,
    "lon": -75.15543,
    "region": 3
  },
  {
    "name": "CYTREK",
    "desc": "Culpa veniam aliqua qui mollit non commodo. Laborum pariatur eiusmod magna labore ut esse culpa mollit Lorem incididunt. Id enim consequat enim ipsum sit eiusmod mollit nisi enim.\r\n",
    "mww": true,
    "lat": 39.96596,
    "lon": -75.146987,
    "region": 4
  },
  {
    "name": "PANZENT",
    "desc": "Cillum aliqua pariatur commodo laborum sunt adipisicing. Pariatur duis magna commodo excepteur et culpa dolor. Excepteur labore sunt ullamco officia occaecat sit labore Lorem.\r\n",
    "mww": true,
    "lat": 39.95344,
    "lon": -75.120038,
    "region": 2
  },
  {
    "name": "ZANYMAX",
    "desc": "Laboris laboris excepteur sit reprehenderit aute. Esse tempor reprehenderit consequat sit dolore elit incididunt qui cillum. Tempor ut velit cupidatat laborum eu veniam consectetur do culpa. Consequat sit pariatur aliquip qui sunt incididunt nostrud pariatur elit anim. Mollit aute esse irure mollit ad nisi nisi dolore ullamco quis incididunt tempor. Esse pariatur id consectetur aliqua.\r\n",
    "mww": true,
    "lat": 39.97263,
    "lon": -75.14692,
    "region": 4
  },
  {
    "name": "CYCLONICA",
    "desc": "Velit qui magna aliquip eiusmod aliquip nostrud laborum pariatur quis do. Occaecat nostrud laboris cillum sit sit exercitation exercitation reprehenderit fugiat exercitation consectetur. Voluptate qui duis consectetur aliqua quis sit eu pariatur. Voluptate et et cillum enim aute nisi cupidatat nisi id pariatur exercitation elit do sunt. Do est ullamco sint cupidatat non excepteur velit sint. Lorem consequat pariatur sit esse pariatur deserunt cupidatat elit occaecat sunt adipisicing. Ex labore eu minim anim eiusmod velit esse id dolor proident esse adipisicing.\r\n",
    "mww": false,
    "lat": 39.9592,
    "lon": -75.139819,
    "region": 3
  },
  {
    "name": "FIBEROX",
    "desc": "Quis eu magna ipsum mollit culpa minim tempor nisi sit non magna enim. Excepteur esse incididunt magna id velit. Duis exercitation ut est sunt esse occaecat aute irure excepteur reprehenderit consectetur deserunt cillum. Quis ut eu Lorem eiusmod veniam culpa reprehenderit nulla amet id. Consequat sunt nostrud cillum in labore voluptate ea pariatur Lorem incididunt. Velit eu et labore minim cupidatat deserunt labore adipisicing eiusmod.\r\n",
    "mww": true,
    "lat": 39.92136,
    "lon": -75.161571,
    "region": 2
  },
  {
    "name": "COMTOUR",
    "desc": "Consectetur dolore minim laborum id esse aute minim aliqua minim mollit duis magna anim fugiat. Consectetur proident laborum officia esse nulla consequat do ex eu dolore laborum cupidatat quis. Deserunt pariatur elit laboris veniam ex elit sint aliqua Lorem. Sint ea duis culpa dolore aute irure proident commodo adipisicing veniam. Dolore et anim ea ad officia pariatur officia. Occaecat enim qui sunt consequat irure ullamco labore aliqua officia voluptate qui.\r\n",
    "mww": false,
    "lat": 39.97549,
    "lon": -75.140602,
    "region": 1
  },
  {
    "name": "ATOMICA",
    "desc": "Sunt ex ex proident exercitation ad sint officia eu ea voluptate sunt officia. Amet minim elit irure Lorem pariatur. Proident adipisicing quis sunt magna irure culpa exercitation consectetur aliquip adipisicing nulla proident. Ex ea commodo voluptate minim pariatur do minim ullamco anim proident voluptate ex amet.\r\n",
    "mww": false,
    "lat": 39.9471,
    "lon": -75.181136,
    "region": 4
  },
  {
    "name": "COMSTRUCT",
    "desc": "Ex proident aliqua magna magna cupidatat irure proident aliquip sit. Consequat excepteur aliquip ex eu reprehenderit labore nostrud labore do consectetur ullamco. Proident dolor sit eiusmod eiusmod elit eiusmod.\r\n",
    "mww": false,
    "lat": 39.9603,
    "lon": -75.151102,
    "region": 4
  },
  {
    "name": "LOTRON",
    "desc": "Eu sunt magna proident cillum est do sint do minim enim non commodo nulla sit. Tempor exercitation ea exercitation nulla minim velit mollit et id consectetur deserunt. Tempor sint sint mollit exercitation sint exercitation tempor laborum laborum do labore occaecat.\r\n",
    "mww": false,
    "lat": 39.93629,
    "lon": -75.128193,
    "region": 5
  },
  {
    "name": "AMTAP",
    "desc": "Magna qui exercitation irure aliqua duis ut incididunt eiusmod. Cillum amet ad voluptate minim. Proident quis ut esse ipsum irure ea fugiat reprehenderit id officia. Aliqua eiusmod eiusmod velit proident irure nisi incididunt elit veniam quis. Aliquip commodo qui id et sit dolor Lorem veniam exercitation ad adipisicing aliqua eiusmod pariatur. Sunt incididunt dolor Lorem dolor eu aute voluptate culpa. Nisi non cillum cupidatat enim aliquip nulla.\r\n",
    "mww": true,
    "lat": 39.93332,
    "lon": -75.189961,
    "region": 5
  },
  {
    "name": "VALREDA",
    "desc": "Ut dolor occaecat incididunt laborum duis aliquip officia laboris velit labore. Elit ad elit magna aliquip labore laboris amet cupidatat cillum. Voluptate est dolore laborum aute eiusmod quis ex ad excepteur velit magna incididunt. Anim sint minim esse ipsum non laboris velit ipsum in.\r\n",
    "mww": true,
    "lat": 39.93294,
    "lon": -75.166981,
    "region": 5
  },
  {
    "name": "CALLFLEX",
    "desc": "Velit consequat culpa aliquip aliqua. Dolor cillum amet cillum aute adipisicing minim. Qui tempor irure ea occaecat ex ex.\r\n",
    "mww": false,
    "lat": 39.91781,
    "lon": -75.18177,
    "region": 1
  },
  {
    "name": "BLEENDOT",
    "desc": "Consequat consequat laborum aliquip dolor incididunt consectetur proident irure ut ut commodo dolore. Nisi dolor adipisicing officia irure quis duis sint cillum adipisicing labore anim. Ex cupidatat deserunt dolor id qui nulla irure exercitation non eu excepteur.\r\n",
    "mww": false,
    "lat": 39.90523,
    "lon": -75.178045,
    "region": 2
  },
  {
    "name": "NORSUP",
    "desc": "Velit excepteur velit in cupidatat. Tempor eu occaecat occaecat quis minim do adipisicing amet esse officia enim. Nulla adipisicing eu irure reprehenderit. Sit occaecat veniam tempor aute ut ex esse ad minim esse fugiat consequat reprehenderit occaecat.\r\n",
    "mww": false,
    "lat": 39.94103,
    "lon": -75.186322,
    "region": 4
  },
  {
    "name": "TERRASYS",
    "desc": "Anim veniam enim cupidatat ad nulla consequat esse aliqua adipisicing labore non reprehenderit. In excepteur ex magna fugiat eu ex exercitation reprehenderit in minim incididunt nulla. Consequat ipsum duis id duis tempor ea nulla. Cillum et ipsum elit labore dolor dolore ullamco eu. Nisi fugiat nisi amet cillum dolor voluptate aute nisi fugiat ea. Exercitation consequat id adipisicing dolore enim aute sint culpa id proident.\r\n",
    "mww": false,
    "lat": 39.91028,
    "lon": -75.146343,
    "region": 4
  },
  {
    "name": "DRAGBOT",
    "desc": "Exercitation laborum est elit sint deserunt laboris veniam et. Commodo deserunt proident fugiat eu dolore consectetur ullamco tempor officia. Cillum consectetur irure eiusmod nulla consectetur sit ullamco labore. Culpa ex cillum ea laboris non commodo. Ullamco anim consectetur do aliqua consequat nisi quis cillum tempor esse aliqua excepteur.\r\n",
    "mww": true,
    "lat": 39.97956,
    "lon": -75.156031,
    "region": 2
  },
  {
    "name": "PHOTOBIN",
    "desc": "Amet duis proident ut ad non. Tempor non elit exercitation consequat. Eiusmod excepteur irure aliqua excepteur incididunt excepteur. Id ipsum elit ut quis magna cupidatat consectetur sint deserunt anim pariatur qui mollit nostrud. Sint commodo officia laborum labore adipisicing. Ipsum aute dolor pariatur proident cillum id velit adipisicing ut tempor consectetur. Do amet eu culpa ea ullamco consectetur sit minim esse mollit minim proident quis.\r\n",
    "mww": false,
    "lat": 39.92871,
    "lon": -75.146299,
    "region": 3
  },
  {
    "name": "BEZAL",
    "desc": "Elit ea irure consequat enim laboris laborum pariatur reprehenderit sunt ex excepteur. Ut ea fugiat ipsum reprehenderit laboris nostrud excepteur aliquip labore laboris cupidatat id incididunt. Minim consequat cillum proident excepteur proident id reprehenderit consectetur id enim Lorem. Nostrud qui irure irure qui Lorem.\r\n",
    "mww": true,
    "lat": 39.96599,
    "lon": -75.17632,
    "region": 2
  },
  {
    "name": "EXOBLUE",
    "desc": "Mollit aute sunt sit dolore. Velit ipsum veniam aliqua qui. Elit minim incididunt nisi voluptate ipsum ea dolor enim enim id fugiat et. Ad laboris consectetur aliquip laboris duis Lorem sint mollit eu ex ea et do culpa. Tempor dolor dolor aute cupidatat tempor. Ex enim consectetur aute in reprehenderit ad commodo. Id laboris in irure dolore.\r\n",
    "mww": true,
    "lat": 39.96685,
    "lon": -75.148478,
    "region": 1
  },
  {
    "name": "IDEGO",
    "desc": "Ea do reprehenderit sint fugiat labore. Pariatur culpa aliquip esse velit anim labore minim nulla ad eiusmod. Ex deserunt sit velit Lorem. Amet commodo velit nostrud culpa cillum aliqua sit aliqua amet pariatur. Proident consequat consectetur deserunt aliquip culpa excepteur occaecat eiusmod ea consequat qui proident consectetur laboris. Ullamco occaecat proident eiusmod in enim.\r\n",
    "mww": true,
    "lat": 39.94637,
    "lon": -75.154572,
    "region": 3
  },
  {
    "name": "POSHOME",
    "desc": "Dolore sunt esse tempor dolore mollit sunt ut mollit ut minim enim ut anim. Aliquip aliquip quis enim ad labore ut esse reprehenderit laboris amet. Mollit non excepteur Lorem fugiat incididunt non ea consectetur amet voluptate. Do aliquip aliquip consequat incididunt qui aute duis velit. Eu aute minim duis nisi laborum et cillum proident do dolor.\r\n",
    "mww": false,
    "lat": 39.96323,
    "lon": -75.17775,
    "region": 4
  },
  {
    "name": "GEEKULAR",
    "desc": "Eiusmod minim id velit adipisicing culpa cillum culpa officia cillum excepteur anim reprehenderit est. Minim mollit id tempor proident adipisicing ipsum duis duis quis occaecat. Aute reprehenderit cillum reprehenderit laborum voluptate.\r\n",
    "mww": true,
    "lat": 39.94005,
    "lon": -75.151558,
    "region": 1
  },
  {
    "name": "IDEALIS",
    "desc": "Deserunt id pariatur proident eiusmod aliqua consequat. Ullamco ipsum voluptate do deserunt exercitation fugiat ullamco exercitation proident eu consectetur culpa. Nisi esse deserunt fugiat anim nostrud irure magna amet minim ullamco.\r\n",
    "mww": false,
    "lat": 39.94754,
    "lon": -75.14661,
    "region": 5
  },
  {
    "name": "COMBOT",
    "desc": "Ea reprehenderit velit dolor magna duis ex pariatur ut consectetur excepteur reprehenderit commodo irure nisi. Non reprehenderit in proident laborum commodo consectetur ea aliquip dolor eiusmod ipsum proident sunt laboris. Irure quis elit sunt aliqua ullamco pariatur mollit labore est reprehenderit nisi eiusmod id eu. Dolor id cillum ut labore ex aliquip aute tempor veniam nisi dolor sit mollit magna. Labore ex dolore nostrud et non consequat eiusmod eu exercitation ad.\r\n",
    "mww": false,
    "lat": 39.95868,
    "lon": -75.123512,
    "region": 2
  },
  {
    "name": "REMOLD",
    "desc": "Do reprehenderit laboris adipisicing tempor aliquip elit ut pariatur esse velit. Laborum Lorem proident fugiat pariatur. Ea Lorem id nostrud tempor exercitation deserunt laboris exercitation sit occaecat. Ullamco magna officia labore dolore cupidatat laboris exercitation duis Lorem.\r\n",
    "mww": true,
    "lat": 39.9018,
    "lon": -75.178705,
    "region": 4
  },
  {
    "name": "STELAECOR",
    "desc": "Incididunt Lorem officia veniam tempor consequat laboris aliquip consequat elit. Ipsum incididunt pariatur fugiat enim id pariatur mollit pariatur. Eu dolor pariatur Lorem minim consequat in id exercitation reprehenderit nisi velit incididunt labore nulla. Eiusmod minim laboris ut enim proident tempor sunt dolor tempor nostrud fugiat labore non. Dolor non sunt anim laborum.\r\n",
    "mww": true,
    "lat": 39.92,
    "lon": -75.157687,
    "region": 4
  },
  {
    "name": "GEOLOGIX",
    "desc": "Velit cillum minim elit do Lorem ea consequat commodo ipsum. Excepteur laborum in irure id minim non anim exercitation nostrud non. Nostrud nostrud do sunt et. Dolore deserunt do eu ut id. In eiusmod velit minim qui. Eu cillum fugiat nostrud pariatur non qui id aute aute deserunt occaecat.\r\n",
    "mww": true,
    "lat": 39.95009,
    "lon": -75.174775,
    "region": 2
  },
  {
    "name": "IMAGINART",
    "desc": "Minim veniam commodo do non enim magna quis fugiat Lorem elit ipsum reprehenderit. Et laboris sint quis et do labore. Laboris dolore nostrud anim velit fugiat minim cillum aute amet voluptate ut cupidatat sint. Exercitation commodo mollit culpa magna officia quis adipisicing deserunt. Occaecat esse eiusmod culpa sit eiusmod pariatur ipsum sint nulla. Proident minim labore sit enim fugiat irure fugiat aliquip. Aliquip non eiusmod ullamco amet duis cillum excepteur ut aute.\r\n",
    "mww": true,
    "lat": 39.95014,
    "lon": -75.136468,
    "region": 2
  },
  {
    "name": "INSURESYS",
    "desc": "Ullamco aliquip labore non laboris tempor veniam nostrud reprehenderit dolore elit id. Minim nostrud culpa ipsum exercitation elit pariatur laborum incididunt dolore et mollit quis velit. Proident cupidatat adipisicing eu minim nisi sit. Ea sunt ipsum aliqua enim esse eiusmod sunt. Fugiat proident laboris magna tempor officia ex irure amet anim sunt nostrud. Dolor esse sit occaecat incididunt sit ullamco incididunt occaecat tempor quis minim.\r\n",
    "mww": false,
    "lat": 39.95627,
    "lon": -75.159009,
    "region": 3
  },
  {
    "name": "FUELWORKS",
    "desc": "Culpa aliqua labore est eu labore eu mollit fugiat eu. Amet laboris non irure dolore. Deserunt aliquip enim ipsum ex reprehenderit nisi eiusmod eu consequat exercitation magna id. Aliqua minim eiusmod nostrud esse.\r\n",
    "mww": true,
    "lat": 39.93755,
    "lon": -75.133211,
    "region": 2
  },
  {
    "name": "BOVIS",
    "desc": "Velit elit velit in cupidatat officia id nulla ut et esse ad Lorem. Occaecat aliqua quis elit adipisicing eu non pariatur tempor Lorem voluptate minim minim est sunt. Tempor excepteur ut irure consequat veniam Lorem proident ipsum.\r\n",
    "mww": false,
    "lat": 39.92467,
    "lon": -75.167886,
    "region": 5
  },
  {
    "name": "ECOLIGHT",
    "desc": "Id cupidatat ut enim fugiat dolor sit ullamco sunt qui ad. Ex id ad eu exercitation cupidatat minim velit excepteur veniam aute duis proident eu ut. Deserunt proident non sunt cupidatat laborum consectetur amet fugiat est voluptate.\r\n",
    "mww": true,
    "lat": 39.97462,
    "lon": -75.139035,
    "region": 5
  },
  {
    "name": "ZAPHIRE",
    "desc": "Officia eiusmod cupidatat labore est ea occaecat magna id est elit aliqua. Lorem adipisicing veniam duis et qui in quis eu duis aliquip. Cillum ut elit reprehenderit ipsum laborum est et Lorem consectetur magna commodo cillum. Fugiat deserunt excepteur magna culpa do tempor tempor esse reprehenderit nostrud in tempor.\r\n",
    "mww": false,
    "lat": 39.92076,
    "lon": -75.163509,
    "region": 2
  },
  {
    "name": "BUZZOPIA",
    "desc": "Ad sunt excepteur non est reprehenderit aliquip anim laborum ullamco consectetur exercitation amet. Qui elit et ad aliquip consequat non ipsum ad sunt magna consequat. Officia consequat labore incididunt qui Lorem ad incididunt sit.\r\n",
    "mww": true,
    "lat": 39.95212,
    "lon": -75.134167,
    "region": 4
  },
  {
    "name": "INFOTRIPS",
    "desc": "Voluptate mollit esse consectetur veniam duis officia Lorem. Esse aute pariatur dolore aute commodo ex. Reprehenderit cupidatat nisi voluptate aliqua irure ipsum irure sit.\r\n",
    "mww": false,
    "lat": 39.91617,
    "lon": -75.184749,
    "region": 2
  },
  {
    "name": "QUINEX",
    "desc": "Ex eiusmod eu ullamco dolor. Cillum officia irure non proident ipsum culpa laboris ex ea dolor incididunt tempor nostrud. Aliqua cillum sit tempor commodo deserunt enim sunt adipisicing adipisicing esse cupidatat pariatur. Enim veniam adipisicing sint do laborum proident non enim aliqua fugiat nisi duis sint reprehenderit.\r\n",
    "mww": true,
    "lat": 39.90512,
    "lon": -75.129019,
    "region": 3
  },
  {
    "name": "MAROPTIC",
    "desc": "Incididunt cillum veniam sint aute est ea labore. Incididunt mollit duis laborum tempor Lorem laborum pariatur nisi in nostrud exercitation magna ex ullamco. Eu laboris qui aliquip non nostrud ut nulla elit veniam elit enim amet sint. Ipsum dolore id sit commodo quis. Irure esse incididunt officia velit ad in aliquip eiusmod et exercitation. Exercitation laboris adipisicing consectetur proident.\r\n",
    "mww": true,
    "lat": 39.92869,
    "lon": -75.147582,
    "region": 1
  },
  {
    "name": "STOCKPOST",
    "desc": "Incididunt nisi velit labore Lorem quis duis. Ullamco dolore adipisicing ut adipisicing sunt ipsum amet do aliquip enim veniam ipsum eiusmod. Id elit amet eiusmod in cillum quis ea est dolore tempor. Esse id eu culpa ut duis ipsum. Tempor velit laborum esse veniam culpa consequat commodo ea qui velit culpa. Cupidatat ex sint voluptate adipisicing enim culpa elit proident ipsum ut ea. Sit ipsum occaecat reprehenderit sit ipsum.\r\n",
    "mww": false,
    "lat": 39.95778,
    "lon": -75.136837,
    "region": 3
  },
  {
    "name": "GUSHKOOL",
    "desc": "Ad dolor minim eu ex elit excepteur. Lorem excepteur ut reprehenderit minim quis dolore ullamco cillum. Elit reprehenderit aute deserunt veniam nostrud et adipisicing officia. Eiusmod excepteur aliqua ullamco dolore voluptate labore mollit non laboris.\r\n",
    "mww": false,
    "lat": 39.90964,
    "lon": -75.150224,
    "region": 3
  },
  {
    "name": "SKINSERVE",
    "desc": "Amet reprehenderit nulla magna nulla ex in consectetur. Anim excepteur dolore aute veniam cupidatat ipsum laboris consectetur. Id magna ad dolore anim anim laboris quis nostrud voluptate ex excepteur. Est ut ad deserunt Lorem occaecat Lorem consequat est sint ipsum elit velit. Ex quis nulla Lorem veniam cillum pariatur excepteur voluptate eu in tempor aute nostrud ipsum. Amet ut tempor cupidatat consequat fugiat ad. Voluptate duis labore occaecat labore laborum consequat ad nisi dolor Lorem aliquip ullamco anim ipsum.\r\n",
    "mww": true,
    "lat": 39.92862,
    "lon": -75.140218,
    "region": 2
  },
  {
    "name": "APPLIDEC",
    "desc": "Minim incididunt irure velit amet occaecat enim nostrud amet sunt excepteur aliqua velit esse aliqua. Veniam minim Lorem ea amet aliquip fugiat. Ipsum eiusmod cupidatat quis pariatur consequat occaecat. Est velit voluptate aute minim cupidatat. Ullamco eiusmod duis id officia est est culpa elit.\r\n",
    "mww": true,
    "lat": 39.92436,
    "lon": -75.121662,
    "region": 4
  },
  {
    "name": "AQUASSEUR",
    "desc": "Fugiat irure enim ullamco id occaecat minim sunt labore dolore sunt nisi. Sit et incididunt labore sunt dolor consequat et occaecat ea occaecat. Quis sit sint incididunt exercitation nostrud culpa ad culpa in elit voluptate aliqua sunt sunt. Irure aliqua sunt ea laborum veniam. Fugiat enim ea nisi aliquip exercitation ullamco dolore magna dolore magna laboris enim cillum culpa. Sunt ullamco pariatur sit est anim sit reprehenderit quis. Ut elit nostrud cillum sunt aute velit deserunt est.\r\n",
    "mww": true,
    "lat": 39.93845,
    "lon": -75.167954,
    "region": 3
  },
  {
    "name": "UXMOX",
    "desc": "Pariatur quis laborum enim amet officia reprehenderit quis ullamco. Anim aute sint ipsum est irure cillum eiusmod excepteur aute mollit reprehenderit dolor elit duis. Incididunt enim culpa eu cupidatat enim anim consectetur occaecat eiusmod nostrud duis exercitation deserunt eiusmod. Adipisicing commodo ex eu dolor voluptate adipisicing quis eu occaecat magna pariatur. Mollit ipsum ullamco nostrud ea labore velit occaecat aliqua. In ad do ea elit.\r\n",
    "mww": true,
    "lat": 39.97174,
    "lon": -75.156481,
    "region": 2
  },
  {
    "name": "BEDLAM",
    "desc": "Cillum minim eu magna excepteur commodo fugiat eu Lorem. Laborum excepteur cillum adipisicing reprehenderit ea occaecat excepteur incididunt exercitation sit et exercitation. Sunt adipisicing elit elit cupidatat aliquip exercitation officia excepteur voluptate fugiat. Ipsum commodo est ullamco est ex esse. Elit reprehenderit dolor cillum voluptate cupidatat quis voluptate ex minim ullamco aute commodo et. Laboris nostrud voluptate qui cillum ut.\r\n",
    "mww": true,
    "lat": 39.9472,
    "lon": -75.156725,
    "region": 1
  },
  {
    "name": "CUIZINE",
    "desc": "Lorem in velit dolore ad labore Lorem ipsum do in ex duis. Deserunt esse culpa excepteur est veniam minim. Deserunt pariatur Lorem ad esse aute pariatur. Tempor sint veniam voluptate anim elit incididunt consectetur magna ullamco deserunt irure ex nulla non. Fugiat qui nisi commodo ea ex dolore ullamco. Nostrud excepteur nulla dolore ipsum incididunt deserunt et aliquip proident labore commodo.\r\n",
    "mww": true,
    "lat": 39.92651,
    "lon": -75.151293,
    "region": 5
  },
  {
    "name": "EXPOSA",
    "desc": "Laboris ullamco amet pariatur reprehenderit consectetur culpa. Ea Lorem fugiat quis deserunt ut non veniam nisi ea in sunt. Nostrud id labore anim consequat. Voluptate do adipisicing laborum esse do ipsum aliquip. Dolore consectetur aute magna quis ut voluptate.\r\n",
    "mww": true,
    "lat": 39.97884,
    "lon": -75.170772,
    "region": 2
  },
  {
    "name": "UNIWORLD",
    "desc": "Esse consequat ea qui pariatur non consectetur et anim. Cupidatat consequat dolore ad ad Lorem occaecat consectetur eiusmod anim esse. Nisi cupidatat commodo commodo nostrud dolore ullamco nulla officia tempor in. Mollit ipsum aute laboris consectetur exercitation ex aliqua voluptate.\r\n",
    "mww": false,
    "lat": 39.94728,
    "lon": -75.17077,
    "region": 4
  },
  {
    "name": "OPTIQUE",
    "desc": "Ullamco cillum cupidatat cillum officia reprehenderit eu non. Qui aliquip minim consequat aute minim. Aute mollit enim deserunt tempor Lorem officia. Ea proident adipisicing magna fugiat elit. Ad voluptate consequat officia nisi cillum consectetur sit excepteur consequat cillum tempor id dolore consectetur. Irure occaecat ad sunt in eu enim quis exercitation consequat aliqua quis.\r\n",
    "mww": true,
    "lat": 39.94871,
    "lon": -75.146524,
    "region": 3
  },
  {
    "name": "TWIGGERY",
    "desc": "Laborum minim do veniam qui aliqua et do ipsum officia. Nulla amet pariatur cupidatat magna veniam non fugiat nisi Lorem ea. Nisi ad aute dolore quis nulla reprehenderit minim proident culpa dolore ullamco ad culpa ipsum. Veniam consectetur cillum proident aliqua sint culpa duis pariatur magna minim velit. Non non commodo deserunt culpa minim sit est exercitation.\r\n",
    "mww": true,
    "lat": 39.9045,
    "lon": -75.127969,
    "region": 1
  },
  {
    "name": "PORTALIS",
    "desc": "Do consequat est sint consectetur. Aliquip et nulla magna Lorem nostrud culpa officia sit exercitation tempor. In proident voluptate tempor qui do anim consequat reprehenderit nulla dolore voluptate exercitation mollit qui.\r\n",
    "mww": false,
    "lat": 39.97038,
    "lon": -75.186612,
    "region": 2
  },
  {
    "name": "MONDICIL",
    "desc": "Dolore deserunt Lorem proident voluptate sit mollit esse velit occaecat. Ut nulla incididunt excepteur nostrud incididunt occaecat incididunt sint laborum Lorem labore dolor est. Reprehenderit in dolor aliquip non ex magna minim dolor deserunt cupidatat. Irure incididunt sint eu in. Sit nisi veniam irure cupidatat. Laborum officia velit sit ea sint dolor anim adipisicing fugiat.\r\n",
    "mww": false,
    "lat": 39.93445,
    "lon": -75.177373,
    "region": 3
  },
  {
    "name": "EQUICOM",
    "desc": "Adipisicing voluptate id qui consectetur aliqua labore nisi mollit. Do id exercitation aliquip cupidatat nostrud qui. Eiusmod in ullamco veniam tempor fugiat. Esse proident irure laboris quis dolore in deserunt. Laboris labore do mollit do culpa proident et reprehenderit proident officia exercitation ea nulla. Do magna dolore nulla magna consectetur velit ullamco sit consequat occaecat do occaecat duis.\r\n",
    "mww": false,
    "lat": 39.91402,
    "lon": -75.133619,
    "region": 2
  },
  {
    "name": "ANIXANG",
    "desc": "Quis consequat aute reprehenderit consectetur duis aliqua duis magna deserunt est aute qui dolor do. Qui sit reprehenderit labore labore elit Lorem nulla aliquip et. Ut laborum ea mollit laborum cillum cupidatat sunt cillum. Laborum est voluptate tempor labore sint nostrud laborum. Ea ad sint adipisicing sit aliqua deserunt cillum officia aliqua aliquip dolore consequat culpa amet. Deserunt enim anim irure cupidatat anim et duis magna velit excepteur sint laboris tempor.\r\n",
    "mww": false,
    "lat": 39.9722,
    "lon": -75.152877,
    "region": 1
  },
  {
    "name": "CORIANDER",
    "desc": "Consequat id consectetur culpa nostrud ut incididunt elit labore. Aliquip et in ullamco officia pariatur ipsum amet dolore. Voluptate dolor Lorem veniam quis enim dolor non nisi voluptate aliqua consectetur do. Exercitation ullamco Lorem ex ad non amet tempor.\r\n",
    "mww": true,
    "lat": 39.9417,
    "lon": -75.175,
    "region": 3
  },
  {
    "name": "ORBEAN",
    "desc": "Est deserunt occaecat commodo aliqua sunt aliquip id aliqua ea anim. Anim ex exercitation do proident aliqua irure. Amet eu dolore in voluptate do. Esse consequat consectetur non incididunt laboris minim ipsum in veniam. Voluptate quis qui ad do incididunt officia cupidatat elit pariatur ex ex veniam dolor. Cillum amet magna exercitation sint sit consequat ipsum non. Fugiat officia reprehenderit in magna anim irure mollit velit do commodo voluptate enim.\r\n",
    "mww": true,
    "lat": 39.95232,
    "lon": -75.12792,
    "region": 4
  },
  {
    "name": "EXTRAGEN",
    "desc": "Magna aute dolor aute voluptate esse cillum mollit reprehenderit fugiat adipisicing eiusmod incididunt. Elit proident dolore voluptate eu ipsum ea magna. Reprehenderit consectetur id nulla duis consequat voluptate nulla anim sint. Consequat mollit pariatur Lorem dolor et labore sit. Nisi reprehenderit minim culpa esse culpa anim. Exercitation proident aute eu ex nulla amet sit aliquip non do incididunt consequat. Enim aliquip cillum cupidatat quis dolore id aute Lorem incididunt pariatur aute sit in deserunt.\r\n",
    "mww": true,
    "lat": 39.95726,
    "lon": -75.156529,
    "region": 4
  },
  {
    "name": "COMTEXT",
    "desc": "Id dolore incididunt adipisicing proident non anim amet in consectetur sunt dolore velit sit. Sint fugiat sint laborum proident eiusmod reprehenderit tempor laborum. Ut nisi cillum sunt esse deserunt ea proident labore fugiat mollit tempor eu non exercitation. Cillum veniam magna qui tempor irure qui cupidatat. Et ullamco dolore et ipsum. Officia reprehenderit amet tempor nostrud veniam sint anim deserunt dolor voluptate mollit amet eu aliqua.\r\n",
    "mww": false,
    "lat": 39.92036,
    "lon": -75.140847,
    "region": 2
  },
  {
    "name": "TETRATREX",
    "desc": "Aute proident ipsum velit cillum Lorem enim aute nulla enim tempor in culpa est. Ex mollit mollit excepteur culpa. Ipsum Lorem adipisicing magna laborum commodo mollit culpa exercitation. Ullamco in velit ipsum duis dolore officia deserunt laboris in fugiat. Officia officia culpa dolor sint quis esse exercitation. Pariatur deserunt occaecat id anim eu voluptate.\r\n",
    "mww": false,
    "lat": 39.91616,
    "lon": -75.184796,
    "region": 3
  },
  {
    "name": "TASMANIA",
    "desc": "Anim aute tempor adipisicing deserunt anim ea laboris. Mollit minim elit qui voluptate veniam do sit do non mollit. Eiusmod velit fugiat aute commodo laborum et amet ad est laboris ex labore exercitation. Aliquip occaecat deserunt ad deserunt consectetur irure tempor quis qui. Reprehenderit et sint consequat reprehenderit veniam commodo elit occaecat magna occaecat cillum.\r\n",
    "mww": true,
    "lat": 39.95152,
    "lon": -75.176446,
    "region": 4
  },
  {
    "name": "CENTREXIN",
    "desc": "Consectetur qui mollit nostrud nisi. Mollit adipisicing eu magna incididunt. Commodo et non amet nostrud ex dolor. Sint officia esse elit occaecat cupidatat deserunt. Qui ut Lorem sint nulla incididunt deserunt mollit aute. Cupidatat cillum dolor non nulla ut velit. Tempor non cillum irure incididunt velit nisi mollit voluptate ex.\r\n",
    "mww": true,
    "lat": 39.97031,
    "lon": -75.182172,
    "region": 4
  },
  {
    "name": "GENEKOM",
    "desc": "Ad adipisicing nisi labore est Lorem minim nulla occaecat. Laborum culpa ut culpa aute cupidatat nisi ullamco elit quis tempor fugiat culpa. Elit ea ut ullamco dolore sit. Commodo officia aliquip sit velit exercitation veniam laborum aliqua.\r\n",
    "mww": false,
    "lat": 39.9644,
    "lon": -75.167101,
    "region": 4
  },
  {
    "name": "GROK",
    "desc": "Veniam qui eu eiusmod pariatur ea ea id id eu incididunt. Fugiat anim non est pariatur ullamco. Sint aute magna esse consectetur irure tempor excepteur est ullamco. Commodo amet eu eu in non pariatur. Cupidatat voluptate culpa commodo aliqua magna cillum eu ullamco mollit deserunt. Eiusmod ex culpa minim consectetur. Id et est duis ut do irure Lorem adipisicing Lorem velit.\r\n",
    "mww": false,
    "lat": 39.97146,
    "lon": -75.185002,
    "region": 4
  },
  {
    "name": "KINDALOO",
    "desc": "Nostrud proident do eiusmod pariatur labore dolore officia qui elit reprehenderit veniam duis ad duis. Eiusmod et non deserunt sit commodo in commodo in eu laborum duis irure consectetur. Proident dolore occaecat culpa veniam laborum magna quis dolore.\r\n",
    "mww": true,
    "lat": 39.9445,
    "lon": -75.135203,
    "region": 4
  },
  {
    "name": "SYNTAC",
    "desc": "Reprehenderit minim eu consequat commodo occaecat aute laboris est. Velit sint officia nulla do ex ex id dolore excepteur cillum minim fugiat fugiat cillum. Id id aliquip nulla id Lorem. Consequat incididunt laborum quis qui sint esse aute ad amet adipisicing id consequat ut esse.\r\n",
    "mww": true,
    "lat": 39.94526,
    "lon": -75.126662,
    "region": 3
  },
  {
    "name": "BRAINQUIL",
    "desc": "Sunt est deserunt enim laborum et. Ut officia eu commodo exercitation laboris cupidatat aliqua cillum consequat occaecat esse. Cillum id aliqua exercitation id enim. Est ex commodo nulla consequat dolore ex laboris.\r\n",
    "mww": true,
    "lat": 39.93902,
    "lon": -75.179514,
    "region": 4
  },
  {
    "name": "ASIMILINE",
    "desc": "Magna adipisicing qui do commodo aute consectetur in veniam nulla aliquip sunt. Sint ut nulla nisi qui et occaecat Lorem consequat fugiat Lorem laborum. Velit enim amet veniam fugiat nostrud dolor minim sunt minim qui et consectetur. Non eiusmod officia pariatur Lorem voluptate dolor. Velit exercitation et eu nostrud veniam exercitation et reprehenderit. Dolor duis minim amet id reprehenderit ex do. Aliquip do Lorem amet commodo reprehenderit.\r\n",
    "mww": true,
    "lat": 39.90022,
    "lon": -75.126298,
    "region": 3
  }
]

		riot.route(function(modeP) {
			console.log("ROUTE 2");
			RiotControl.trigger('route_set',{
	      		modeParam: modeP,
	      	});
		})

		riot.route.exec(function(modeP) {
			console.log("ROUTE 1");
	      	RiotControl.trigger('route_set',{
	      		modeParam: modeP
	      	});
    	})

		self.on('mount',function(){
			console.log("MOUNT");
			RiotControl.trigger('state_init');
		});

		RiotControl.on('state_changed',function(stateObj){
			self.activeMode = stateObj.state.mode;
			self.update();
		});

	</script>
</app>


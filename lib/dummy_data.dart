import './models/pin.dart';

const DUMMY_CATEGORIES = const [
  'Home',
  'Sell Pins',
  'Buy Pins',
  'Trade Pins',
  'Socialize',
  'Settings'
];

const DUMMY_PINS = const [
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '1',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Pluto-90th-Anniversary-Key-Pin.png',
    price: 200,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '2',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Mulan-Disney-Castle-Collection-Limited-Release-Pin-Series-3.jpg',
    price: 10,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '3',
    imageUrl:
        'https://scontent-sjc3-1.cdninstagram.com/v/t51.2885-15/e35/118700723_139386041182318_3833260289859674688_n.jpg?_nc_ht=scontent-sjc3-1.cdninstagram.com&_nc_cat=110&_nc_ohc=Xx9exKadWO0AX9LXXxQ&oh=393302d9f3791f11fcc2264be34d0662&oe=5F7E7C6A',
    price: 30,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '4',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Pluto-90th-Anniversary-Key-Pin.png',
    price: 120,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '5',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Toy-Story-Alien-Remix-Limited-Release-Pins-Series-4.jpg',
    price: 55,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '6',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Stitchs-Tiki-Hut-ArtLand-Disney-Pin.jpeg',
    price: 500,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '7',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Star-Wars-Jawa-Funko-Pop-Jumbo-Pin.png',
    price: 2000,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '8',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Star-Wars-The-Clone-Wars-FiGPiNs-Series-1.png',
    price: 20,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '9',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Olu-Duffy-Bear-Summer-2020-Shanghai-Disney-Resort-Pin.png',
    price: 5,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '10',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/09/Duffy-Bear-Olu-Garden-Time-2020-Shanghai-Disney-Pin.png',
    price: 15,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '11',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/08/Marvel-Two-Pin-Sets-Shanghai-Disneyland.jpeg',
    price: 25,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '12',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/07/Chip-n-Dale-Mickey-Music-Festival-Pin.png',
    price: 30,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
  Pin(
    name: 'Pluto 90th Anniversary Key Pin',
    id: '13',
    imageUrl:
        'https://disneypinsblog.com/wp-content/uploads/2020/07/Mickey-Minnie-Food-Series-Hidden-Mickey-Pin-Set.png',
    price: 1,
    description:
        'Unlock 90 years of doggone fun and memories with this fetching commemorative key pin celebrating Pluto!',
    details: [
      'Special Edition',
      'Pluto screen art',
      'Sculpted in bas relief',
      'Enameled accents',
      'Goldtone finish',
      'Mickey icon pin back',
      'Comes on card',
      'Disney pin trading 2020 symbol',
      'Commemorating Pluto\'s 90th Anniversary',
      'Pluto first appeared in Mickey Mouse short The Chain Gang originally released August 6, 1930',
      'Exclusive to Disney store and shopDisney',
    ],
  ),
];

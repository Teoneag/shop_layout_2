import '/pages/digital_prices_page.dart';
import '/pages/faq_page.dart';
import '/pages/features_page.dart';
import '/pages/home_page.dart';
import '/pages/physical_prices_page.dart';
import '/pages/services_page.dart';

const appName = 'Shop template 2';

const pages = {
  'HOME': HomePage(),
  'FEATURES': FeaturesPage(),
  'SERVICES': ServicesPage(),
  'FAQ': FaqPage(),
  'PRICES DIGITAL': DigitalPricesPage(),
  'PRICES PHYSICAL': PhysicalPricesPage(),
};

const item = 'item';

const homeBenefits = [
  'Benefit 1',
  'Benefit 2',
  'Benefit 3',
  'Benefit 4',
  'Benefit 5',
];

const btcAdress = 'bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh';

const faq1 = {
  'Why should I trust you?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'What\'s the value of those items?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'Which percentege of those products are valid?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'Do you offer other types of products?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'When will I get the products?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
};

const faq2 = {
  'How can I use those products?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'Where you get this stuff?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'Where can I find you this?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'How can I pay for my order?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  'Where can I buy this or that?':
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
};

const packages = {
  1: [
    'START',
    59,
    1200,
    2,
    600,
    'Yaes\nYaes\nYaes\nYaes',
  ],
  2: [
    'RECOMMENDED',
    119,
    3600,
    3,
    1200,
    'Yaes\nYaes\nYaes\nYaes',
  ],
  3: [
    'GOLD',
    269,
    10000,
    4,
    2500,
    'Yaes\nYaes\nYaes\nYaes',
  ],
  4: [
    'START',
    79,
    1200,
    2,
    600,
    'Yaes\nYaes\nYaes\nYaes',
  ],
  5: [
    'RECOMMENDED',
    139,
    3600,
    3,
    1200,
    'Yaes\nYaes\nYaes\nYaes',
  ],
  6: [
    'GOLD',
    269,
    10000,
    4,
    2500,
    'Yaes\nYaes\nYaes\nYaes',
  ],
};

const whatsInside = [
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
  'Secure very good product',
];

const orderSteps = [
  'Step 1/3: starting the order',
  'Step 2/3: waiting for your payment'
];

const regions = [
  'North America',
  'South America',
  'Europe',
  'Asia',
  'Africa',
  'Australia',
];

const shippingM = [
  'UPS standard delivery | 7 - 12 days | \$0',
  'UPS express delivery | 2 - 6 days | \$20',
];

const tableValues = [
  'Time',
  'Amount',
  'Transaction ID (txid)',
  'Confirmations',
];

const countries = [
  'Afghanistan',
  'Albania',
  'Algeria',
  'Andorra',
  'Angola',
  'Antigua & Deps',
  'Argentina',
  'Armenia',
  'Australia',
  'Austria',
  'Azerbaijan',
  'Bahamas',
  'Bahrain',
  'Bangladesh',
  'Barbados',
  'Belarus',
  'Belgium',
  'Belize',
  'Benin',
  'Bhutan',
  'Bolivia',
  'Bosnia Herzegovina',
  'Botswana',
  'Brazil',
  'Brunei',
  'Bulgaria',
  'Burkina',
  'Burundi',
  'Cambodia',
  'Cameroon',
  'Canada',
  'Cape Verde',
  'Central African Rep',
  'Chad',
  'Chile',
  'China',
  'Colombia',
  'Comoros',
  'Congo',
  'Congo {Democratic Rep}',
  'Costa Rica',
  'Croatia',
  'Cuba',
  'Cyprus',
  'Czech Republic',
  'Denmark',
  'Djibouti',
  'Dominica',
  'Dominican Republic',
  'East Timor',
  'Ecuador',
  'Egypt',
  'El Salvador',
  'Equatorial Guinea',
  'Eritrea',
  'Estonia',
  'Ethiopia',
  'Fiji',
  'Finland',
  'France',
  'Gabon',
  'Gambia',
  'Georgia',
  'Germany',
  'Ghana',
  'Greece',
  'Grenada',
  'Guatemala',
  'Guinea',
  'Guinea-Bissau',
  'Guyana',
  'Haiti',
  'Honduras',
  'Hungary',
  'Iceland',
  'India',
  'Indonesia',
  'Iran',
  'Iraq',
  'Ireland {Republic}',
  'Israel',
  'Italy',
  'Ivory Coast',
  'Jamaica',
  'Japan',
  'Jordan',
  'Kazakhstan',
  'Kenya',
  'Kiribati',
  'Korea North',
  'Korea South',
  'Kosovo',
  'Kuwait',
  'Kyrgyzstan',
  'Laos',
  'Latvia',
  'Lebanon',
  'Lesotho',
  'Liberia',
  'Libya',
  'Liechtenstein',
  'Lithuania',
  'Luxembourg',
  'Macedonia',
  'Madagascar',
  'Malawi',
  'Malaysia',
  'Maldives',
  'Mali',
  'Malta',
  'Marshall Islands',
  'Mauritania',
  'Mauritius',
  'Mexico',
  'Micronesia',
  'Moldova',
  'Monaco',
  'Mongolia',
  'Montenegro',
  'Morocco',
  'Mozambique',
  'Myanmar, {Burma}',
  'Namibia',
  'Nauru',
  'Nepal',
  'Netherlands',
  'New Zealand',
  'Nicaragua',
  'Niger',
  'Nigeria',
  'Norway',
  'Oman',
  'Pakistan',
  'Palau',
  'Panama',
  'Papua New Guinea',
  'Paraguay',
  'Peru',
  'Philippines',
  'Poland',
  'Portugal',
  'Qatar',
  'Romania',
  'Russian Federation',
  'Rwanda',
  'St Kitts & Nevis',
  'St Lucia',
  'Saint Vincent & the Grenadines',
  'Samoa',
  'San Marino',
  'Sao Tome & Principe',
  'Saudi Arabia',
  'Senegal',
  'Serbia',
  'Seychelles',
  'Sierra Leone',
  'Singapore',
  'Slovakia',
  'Slovenia',
  'Solomon Islands',
  'Somalia',
  'South Africa',
  'South Sudan',
  'Spain',
  'Sri Lanka',
  'Sudan',
  'Suriname',
  'Swaziland',
  'Sweden',
  'Switzerland',
  'Syria',
  'Taiwan',
  'Tajikistan',
  'Tanzania',
  'Thailand',
  'Togo',
  'Tonga',
  'Trinidad & Tobago',
  'Tunisia',
  'Turkey',
  'Turkmenistan',
  'Tuvalu',
  'Uganda',
  'Ukraine',
  'United Arab Emirates',
  'United Kingdom',
  'United States',
  'Uruguay',
  'Uzbekistan',
  'Vanuatu',
  'Vatican City',
  'Venezuela',
  'Vietnam',
  'Yemen',
  'Zambia',
  'Zimbabwe',
];

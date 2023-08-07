import 'package:flutter/material.dart';

const appName = 'Shop layout 2';

const spaceBetweenPages = 50.0;

const pagePadding = 40.0;

double pageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height - kToolbarHeight;
}

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
    249,
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

const testimonials = {
  'Dorel - #69x69X69':
      "I'm very happy with this service. You have been the best and I would love to see your carot.",
  'Dorelian - #69x69X69':
      "I'm very happy with this service. You have been the best and I would love to see your carot.",
  'Dorelica - #69x69X69':
      "I'm very happy with this service. You have been the best and I would love to see your carot.",
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

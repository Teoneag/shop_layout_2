import '/utils/utils.dart';

// TODO save these with shared prefs

class PurchaseModel {
  IntW optionNr;
  IntW stepValue;
  IntW region;
  IntW shippingI;
  IntW country;
  StringW email;
  StringW name;
  StringW street;
  StringW zipCode;
  StringW city;
  StringW state;
  StringW info;
  StringW promo;

  PurchaseModel({
    optionNr,
    stepValue,
    region,
    shippingI,
    country,
    email,
    name,
    street,
    zipCode,
    city,
    state,
    info,
    promo,
  })  : optionNr = optionNr ?? IntW(0),
        stepValue = stepValue ?? IntW(1),
        region = region ?? IntW(0),
        shippingI = shippingI ?? IntW(0),
        country = country ?? IntW(0),
        email = email ?? StringW(''),
        name = name ?? StringW(''),
        street = street ?? StringW(''),
        zipCode = zipCode ?? StringW(''),
        city = city ?? StringW(''),
        state = state ?? StringW(''),
        info = info ?? StringW(''),
        promo = promo ?? StringW('');
}

enum GS1BarcodeIdentifiers {
  sscc('00'),
  gtin('01'),
  content('02'),
  batch('10'),
  productionDate('11'),
  dueDate('12'),
  packagingDate('13'),
  bestBeforeDate('15'),
  expirationDate('17'),
  variantNumber('20'),
  serialNumber('21'),
  secondaryDataFields('22'),
  countOfItems('30'),
  expiryDateTime('7003');

  const GS1BarcodeIdentifiers(this.code);

  final String code;
}

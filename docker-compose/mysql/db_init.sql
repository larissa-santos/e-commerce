DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
    `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
    `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `exchange_rate` float(7) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `currencies` 
    (currency, name, exchange_rate) 
VALUES 
    ('USD', 'US dollar', 0.1799),
    ('EUR', 'Euro', 0.1510),
    ('JPY', 'Japanese yen', 130.08),
    ('BGN', 'Bulgarian lev', 1.9558),
    ('CZK', 'Czech koruna', 26.170),
    ('DKK', 'Danish krone', 7.4360),
    ('GBP', 'Pound sterling', 0.85575),
    ('HUF', 'Hungarian forint', 368.18),
    ('PLN', 'Polish zloty', 4.6253),
    ('RON', 'Romanian leu', 4.8858),
    ('SEK', 'Swedish krona', 10.1570),
    ('CHF', 'Swiss franc', 1.1069),
    ('ISK', 'Icelandic krona', 151.60),
    ('NOK', 'Norwegian krone', 10.1058),
    ('HRK', 'Croatian kuna', 7.5750),
    ('RUB', 'Russian rouble', 88.1313),
    ('TRY', 'Turkish lira', 8.7701),
    ('AUD', 'Australian dollar', 1.5347),
    ('BRL', 'Brazilian real', 1),
    ('CAD', 'Canadian dollar', 1.4824),
    ('CNY', 'Chinese yuan renminbi', 7.7507),
    ('HKD', 'Hong Kong dollar', 9.2493),
    ('IDR', 'Indonesian rupiah', 17165.19),
    ('ILS', 'Israeli shekel', 3.9290),
    ('INR', 'Indian rupee', 86.6105),
    ('KRW', 'South Korean won', 1343.25),
    ('MXN', 'Mexican peso', 24.5306),
    ('MYR', 'Malaysian ringgit', 4.8976),
    ('NZD', 'New Zealand dollar', 1.6567),
    ('PHP', 'Philippine peso', 57.997),
    ('SGD', 'Singapore dollar', 1.6013),
    ('THB', 'Thai baht', 36.772),
    ('ZAR', 'South African rand',  17.6202)
;

































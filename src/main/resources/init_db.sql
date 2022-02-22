CREATE DATABASE `taxi_schema` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `drivers` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `name` varchar(45) DEFAULT NULL,
                           `license` varchar(100) DEFAULT NULL,
                           `is_deleted` tinyint NOT NULL DEFAULT '0',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `manufacturers` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `name` varchar(45) DEFAULT NULL,
                                `country` varchar(45) DEFAULT NULL,
                                `is_deleted` tinyint NOT NULL DEFAULT '0',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `cars` (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `model` varchar(255) DEFAULT NULL,
                        `is_deleted` tinyint NOT NULL DEFAULT '0',
                        `manufacturers_id` bigint DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        KEY `cars_manufacturers_fk` (`manufacturers_id`),
                        CONSTRAINT `cars_manufacturers_fk`
                            FOREIGN KEY (`manufacturers_id`)
                            REFERENCES `manufacturers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

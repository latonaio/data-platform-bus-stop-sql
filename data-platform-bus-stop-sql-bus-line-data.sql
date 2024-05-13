CREATE TABLE `data_platform_bus_stop_bus_line_data`
(
  `BusStop`                    int(16) NOT NULL,
  `BusLine`                    int(16) NOT NULL,
  `ValidityStartDate`          date NOT NULL,
  `ValidityEndDate`            date NOT NULL,
  `CreationDate`               date NOT NULL,
  `CreationTime`               time NOT NULL,
  `LastChangeDate`             date NOT NULL,
  `LastChangeTime`             time NOT NULL,
  `CreateUser`                 int(12) NOT NULL,
  `LastChangeUser`             int(12) NOT NULL,
  `IsReleased`                 tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusStop`, `BusLine`),

    CONSTRAINT `DPFMBusStopBusLineData_fk` FOREIGN KEY (`BusStop`) REFERENCES `data_platform_bus_stop_header_data` (`BusStop`),
    CONSTRAINT `DPFMBusStopBusLineDataRailwayLine_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMBusStopBusLineDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusStopBusLineDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- Xóa và tạo lại bảng EXTRA_INFO
DROP TABLE IF EXISTS `EXTRA_INFO`;
CREATE TABLE `EXTRA_INFO` (
                              `ID` int(11) NOT NULL,
                              `EXTRA_INFO` int(11) DEFAULT NULL,
                              PRIMARY KEY (`ID`),
                              UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

LOCK TABLES `EXTRA_INFO` WRITE;
INSERT INTO `EXTRA_INFO` VALUES
                             (1, 100),
                             (2, 200),
                             (3, 150),
                             (4, 250),
                             (5, 300),
                             (6, 180),
                             (7, 210),
                             (8, 400),
                             (9, 320),
                             (10, 500),
                             (11, 120),
                             (12, 360),
                             (13, 430),
                             (14, 270),
                             (15, 390),
                             (16, 415),
                             (17, 440),
                             (18, 460),
                             (19, 475),
                             (20, 490),
                             (21, 505),
                             (22, 515),
                             (23, 525),
                             (24, 535),
                             (25, 545),
                             (26, 555),
                             (27, 565),
                             (28, 575),
                             (29, 585),
                             (30, 595);
UNLOCK TABLES;

-- Xóa và tạo lại bảng MY_ENTITY
DROP TABLE IF EXISTS `MY_ENTITY`;
CREATE TABLE `MY_ENTITY` (
                             `ID` bigint(20) NOT NULL AUTO_INCREMENT,
                             `NAME` varchar(100) DEFAULT NULL,
                             PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

LOCK TABLES `MY_ENTITY` WRITE;
INSERT INTO `MY_ENTITY` VALUES
                            (1, 'Alice'),
                            (2, 'Bob'),
                            (3, 'Charlie'),
                            (4, 'David'),
                            (5, 'Eve'),
                            (6, 'Frank'),
                            (7, 'Grace'),
                            (8, 'Hannah'),
                            (9, 'Ian'),
                            (10, 'Jack'),
                            (11, 'Karen'),
                            (12, 'Leo'),
                            (13, 'Mia'),
                            (14, 'Nora'),
                            (15, 'Oscar'),
                            (16, 'Paul'),
                            (17, 'Quinn'),
                            (18, 'Rose'),
                            (19, 'Sam'),
                            (20, 'Tina'),
                            (21, 'Uma'),
                            (22, 'Victor'),
                            (23, 'Wendy'),
                            (24, 'Xavier'),
                            (25, 'Yara'),
                            (26, 'Zane'),
                            (27, 'Bella'),
                            (28, 'Carter'),
                            (29, 'Diana'),
                            (30, 'Ethan');
UNLOCK TABLES;

-- Stored Procedure
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_GET_MYENTITY_EXTRA`(IN P_ID BIGINT)
BEGIN
SELECT
    e.ID,
    e.NAME,
    x.EXTRA_INFO
FROM
    MY_ENTITY e
        LEFT JOIN EXTRA_INFO x ON e.ID = x.ID
WHERE
    e.ID = P_ID;
END ;;
DELIMITER ;

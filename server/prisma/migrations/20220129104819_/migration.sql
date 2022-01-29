/*
  Warnings:

  - You are about to drop the `task` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `task`;

-- CreateTable
CREATE TABLE `SummonerDTO` (
    `accountId` CHAR(56) NOT NULL,
    `profileIconId` INTEGER NOT NULL,
    `revisionDate` BIGINT NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `id` CHAR(63) NOT NULL,
    `puuid` CHAR(78) NOT NULL,
    `summonerLevel` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MatchDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MatchMetadataDTO` (
    `dataVersion` VARCHAR(191) NOT NULL,
    `matchId` VARCHAR(191) NOT NULL,
    `matchDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `MatchMetadataDTO_matchDTOId_unique`(`matchDTOId`),
    PRIMARY KEY (`matchId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MatchInfoDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gameCreation` BIGINT NOT NULL,
    `gameDuration` BIGINT NOT NULL,
    `gameEndTimestamp` BIGINT NOT NULL,
    `gameId` BIGINT NOT NULL,
    `gameMode` VARCHAR(191) NOT NULL,
    `gameName` VARCHAR(191) NOT NULL,
    `gameStartTimestamp` BIGINT NOT NULL,
    `gameType` VARCHAR(191) NOT NULL,
    `gameVersion` VARCHAR(191) NOT NULL,
    `mapId` INTEGER NOT NULL,
    `platformId` VARCHAR(191) NOT NULL,
    `queueId` INTEGER NOT NULL,
    `tournamentCode` VARCHAR(191) NOT NULL,
    `matchDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `MatchInfoDTO_matchDTOId_unique`(`matchDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ParticipantDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `assists` INTEGER NOT NULL,
    `baronKills` INTEGER NOT NULL,
    `bountyLevel` INTEGER NOT NULL,
    `champExperience` INTEGER NOT NULL,
    `champLevel` INTEGER NOT NULL,
    `championId` INTEGER NOT NULL,
    `championName` VARCHAR(191) NOT NULL,
    `championTransform` INTEGER NOT NULL,
    `consumablesPurchased` INTEGER NOT NULL,
    `damageDealtToBuildings` INTEGER NOT NULL,
    `damageDealtToObjectives` INTEGER NOT NULL,
    `damageDealtToTurrets` INTEGER NOT NULL,
    `damageSelfMitigated` INTEGER NOT NULL,
    `deaths` INTEGER NOT NULL,
    `detectorWardsPlaced` INTEGER NOT NULL,
    `doubleKills` INTEGER NOT NULL,
    `dragonKills` INTEGER NOT NULL,
    `firstBloodAssist` BOOLEAN NOT NULL,
    `firstBloodKill` BOOLEAN NOT NULL,
    `firstTowerAssist` BOOLEAN NOT NULL,
    `firstTowerKill` BOOLEAN NOT NULL,
    `gameEndedInEarlySurrender` BOOLEAN NOT NULL,
    `gameEndedInSurrender` BOOLEAN NOT NULL,
    `goldEarned` INTEGER NOT NULL,
    `goldSpent` INTEGER NOT NULL,
    `individualPosition` VARCHAR(191) NOT NULL,
    `inhibitorKills` INTEGER NOT NULL,
    `inhibitorTakedowns` INTEGER NOT NULL,
    `inhibitorsLost` INTEGER NOT NULL,
    `item0` INTEGER NOT NULL,
    `item1` INTEGER NOT NULL,
    `item2` INTEGER NOT NULL,
    `item3` INTEGER NOT NULL,
    `item4` INTEGER NOT NULL,
    `item5` INTEGER NOT NULL,
    `item6` INTEGER NOT NULL,
    `itemsPurchased` INTEGER NOT NULL,
    `killingSprees` INTEGER NOT NULL,
    `kills` INTEGER NOT NULL,
    `lane` VARCHAR(191) NOT NULL,
    `largestCriticalStrike` INTEGER NOT NULL,
    `largestKillingSpree` INTEGER NOT NULL,
    `largestMultiKill` INTEGER NOT NULL,
    `longestTimeSpentLiving` INTEGER NOT NULL,
    `magicDamageDealt` INTEGER NOT NULL,
    `magicDamageDealtToChampions` INTEGER NOT NULL,
    `magicDamageTaken` INTEGER NOT NULL,
    `neutralMinionsKilled` INTEGER NOT NULL,
    `nexusKills` INTEGER NOT NULL,
    `nexusTakedowns` INTEGER NOT NULL,
    `nexusLost` INTEGER NOT NULL,
    `objectivesStolen` INTEGER NOT NULL,
    `objectivesStolenAssists` INTEGER NOT NULL,
    `participantId` INTEGER NOT NULL,
    `pentaKills` INTEGER NOT NULL,
    `physicalDamageDealt` INTEGER NOT NULL,
    `physicalDamageDealtToChampions` INTEGER NOT NULL,
    `physicalDamageTaken` INTEGER NOT NULL,
    `profileIcon` INTEGER NOT NULL,
    `puuid` VARCHAR(191) NOT NULL,
    `quadraKills` INTEGER NOT NULL,
    `riotIdName` VARCHAR(191) NOT NULL,
    `riotIdTagline` VARCHAR(191) NOT NULL,
    `role` VARCHAR(191) NOT NULL,
    `sightWardsBoughtInGame` INTEGER NOT NULL,
    `spell1Casts` INTEGER NOT NULL,
    `spell2Casts` INTEGER NOT NULL,
    `spell3Casts` INTEGER NOT NULL,
    `spell4Casts` INTEGER NOT NULL,
    `summoner1Casts` INTEGER NOT NULL,
    `summoner1Id` INTEGER NOT NULL,
    `summoner2Casts` INTEGER NOT NULL,
    `summoner2Id` INTEGER NOT NULL,
    `summonerId` VARCHAR(191) NOT NULL,
    `summonerLevel` INTEGER NOT NULL,
    `summonerName` VARCHAR(191) NOT NULL,
    `teamEarlySurrendered` BOOLEAN NOT NULL,
    `teamId` INTEGER NOT NULL,
    `teamPosition` VARCHAR(191) NOT NULL,
    `timeCCingOthers` INTEGER NOT NULL,
    `timePlayed` INTEGER NOT NULL,
    `totalDamageDealt` INTEGER NOT NULL,
    `totalDamageDealtToChampions` INTEGER NOT NULL,
    `totalDamageShieldedOnTeammates` INTEGER NOT NULL,
    `totalDamageTaken` INTEGER NOT NULL,
    `totalHeal` INTEGER NOT NULL,
    `totalHealsOnTeammates` INTEGER NOT NULL,
    `totalMinionsKilled` INTEGER NOT NULL,
    `totalTimeCCDealt` INTEGER NOT NULL,
    `totalTimeSpentDead` INTEGER NOT NULL,
    `totalUnitsHealed` INTEGER NOT NULL,
    `tripleKills` INTEGER NOT NULL,
    `trueDamageDealt` INTEGER NOT NULL,
    `trueDamageDealtToChampions` INTEGER NOT NULL,
    `trueDamageTaken` INTEGER NOT NULL,
    `turretKills` INTEGER NOT NULL,
    `turretTakedowns` INTEGER NOT NULL,
    `turretsLost` INTEGER NOT NULL,
    `unrealKills` INTEGER NOT NULL,
    `visionScore` INTEGER NOT NULL,
    `visionWardsBoughtInGame` INTEGER NOT NULL,
    `wardsKilled` INTEGER NOT NULL,
    `wardsPlaced` INTEGER NOT NULL,
    `win` BOOLEAN NOT NULL,
    `matchInfoDTOId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PerksDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `participantDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `PerksDTO_participantDTOId_unique`(`participantDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PerkStatsDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `defense` INTEGER NOT NULL,
    `flex` INTEGER NOT NULL,
    `offense` INTEGER NOT NULL,
    `perksId` INTEGER NOT NULL,
    `perksDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `PerkStatsDTO_perksDTOId_unique`(`perksDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PerkStyleDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(191) NOT NULL,
    `style` INTEGER NOT NULL,
    `perksDTOId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PerkStyleSelectionDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `perk` INTEGER NOT NULL,
    `var1` INTEGER NOT NULL,
    `var2` INTEGER NOT NULL,
    `var3` INTEGER NOT NULL,
    `perkStyleDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `PerkStyleSelectionDTO_perkStyleDTOId_unique`(`perkStyleDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TeamDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `teamId` INTEGER NOT NULL,
    `win` BOOLEAN NOT NULL,
    `matchInfoDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `TeamDTO_matchInfoDTOId_unique`(`matchInfoDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TeamBanDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `championId` INTEGER NOT NULL,
    `pickTurn` INTEGER NOT NULL,
    `teamDTOId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TeamObjectivesDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `teamDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `TeamObjectivesDTO_teamDTOId_unique`(`teamDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ObjectiveDTO` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first` BOOLEAN NOT NULL,
    `kills` INTEGER NOT NULL,
    `baronDTOId` INTEGER NOT NULL,
    `championDTOId` INTEGER NOT NULL,
    `dragonDTOId` INTEGER NOT NULL,
    `inhibitorDTOId` INTEGER NOT NULL,
    `riftHeraldDTOId` INTEGER NOT NULL,
    `towerDTOId` INTEGER NOT NULL,

    UNIQUE INDEX `ObjectiveDTO_baronDTOId_unique`(`baronDTOId`),
    UNIQUE INDEX `ObjectiveDTO_championDTOId_unique`(`championDTOId`),
    UNIQUE INDEX `ObjectiveDTO_dragonDTOId_unique`(`dragonDTOId`),
    UNIQUE INDEX `ObjectiveDTO_inhibitorDTOId_unique`(`inhibitorDTOId`),
    UNIQUE INDEX `ObjectiveDTO_riftHeraldDTOId_unique`(`riftHeraldDTOId`),
    UNIQUE INDEX `ObjectiveDTO_towerDTOId_unique`(`towerDTOId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_MatchMetadataDTOToSummonerDTO` (
    `A` VARCHAR(191) NOT NULL,
    `B` CHAR(63) NOT NULL,

    UNIQUE INDEX `_MatchMetadataDTOToSummonerDTO_AB_unique`(`A`, `B`),
    INDEX `_MatchMetadataDTOToSummonerDTO_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MatchMetadataDTO` ADD FOREIGN KEY (`matchDTOId`) REFERENCES `MatchDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MatchInfoDTO` ADD FOREIGN KEY (`matchDTOId`) REFERENCES `MatchDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ParticipantDTO` ADD FOREIGN KEY (`matchInfoDTOId`) REFERENCES `MatchInfoDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerksDTO` ADD FOREIGN KEY (`participantDTOId`) REFERENCES `ParticipantDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStatsDTO` ADD FOREIGN KEY (`perksDTOId`) REFERENCES `PerksDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStyleDTO` ADD FOREIGN KEY (`perksDTOId`) REFERENCES `PerksDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStyleSelectionDTO` ADD FOREIGN KEY (`perkStyleDTOId`) REFERENCES `PerkStyleDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamDTO` ADD FOREIGN KEY (`matchInfoDTOId`) REFERENCES `MatchInfoDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamBanDTO` ADD FOREIGN KEY (`teamDTOId`) REFERENCES `TeamDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamObjectivesDTO` ADD FOREIGN KEY (`teamDTOId`) REFERENCES `TeamDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`baronDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`championDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`dragonDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`inhibitorDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`riftHeraldDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD FOREIGN KEY (`towerDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_MatchMetadataDTOToSummonerDTO` ADD FOREIGN KEY (`A`) REFERENCES `MatchMetadataDTO`(`matchId`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_MatchMetadataDTOToSummonerDTO` ADD FOREIGN KEY (`B`) REFERENCES `SummonerDTO`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

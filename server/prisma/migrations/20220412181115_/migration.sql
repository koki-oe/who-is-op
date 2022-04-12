-- DropForeignKey
ALTER TABLE `matchinfodto` DROP FOREIGN KEY `matchinfodto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `matchmetadatadto` DROP FOREIGN KEY `matchmetadatadto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_2`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_3`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_4`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_5`;

-- DropForeignKey
ALTER TABLE `objectivedto` DROP FOREIGN KEY `objectivedto_ibfk_6`;

-- DropForeignKey
ALTER TABLE `participantdto` DROP FOREIGN KEY `participantdto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `perksdto` DROP FOREIGN KEY `perksdto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `perkstatsdto` DROP FOREIGN KEY `perkstatsdto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `perkstyledto` DROP FOREIGN KEY `perkstyledto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `perkstyleselectiondto` DROP FOREIGN KEY `perkstyleselectiondto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `teambandto` DROP FOREIGN KEY `teambandto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `teamdto` DROP FOREIGN KEY `teamdto_ibfk_1`;

-- DropForeignKey
ALTER TABLE `teamobjectivesdto` DROP FOREIGN KEY `teamobjectivesdto_ibfk_1`;

-- AddForeignKey
ALTER TABLE `MatchMetadataDTO` ADD CONSTRAINT `MatchMetadataDTO_matchDTOId_fkey` FOREIGN KEY (`matchDTOId`) REFERENCES `MatchDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MatchInfoDTO` ADD CONSTRAINT `MatchInfoDTO_matchDTOId_fkey` FOREIGN KEY (`matchDTOId`) REFERENCES `MatchDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ParticipantDTO` ADD CONSTRAINT `ParticipantDTO_matchInfoDTOId_fkey` FOREIGN KEY (`matchInfoDTOId`) REFERENCES `MatchInfoDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerksDTO` ADD CONSTRAINT `PerksDTO_participantDTOId_fkey` FOREIGN KEY (`participantDTOId`) REFERENCES `ParticipantDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStatsDTO` ADD CONSTRAINT `PerkStatsDTO_perksDTOId_fkey` FOREIGN KEY (`perksDTOId`) REFERENCES `PerksDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStyleDTO` ADD CONSTRAINT `PerkStyleDTO_perksDTOId_fkey` FOREIGN KEY (`perksDTOId`) REFERENCES `PerksDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PerkStyleSelectionDTO` ADD CONSTRAINT `PerkStyleSelectionDTO_perkStyleDTOId_fkey` FOREIGN KEY (`perkStyleDTOId`) REFERENCES `PerkStyleDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamDTO` ADD CONSTRAINT `TeamDTO_matchInfoDTOId_fkey` FOREIGN KEY (`matchInfoDTOId`) REFERENCES `MatchInfoDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamBanDTO` ADD CONSTRAINT `TeamBanDTO_teamDTOId_fkey` FOREIGN KEY (`teamDTOId`) REFERENCES `TeamDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TeamObjectivesDTO` ADD CONSTRAINT `TeamObjectivesDTO_teamDTOId_fkey` FOREIGN KEY (`teamDTOId`) REFERENCES `TeamDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_baronDTOId_fkey` FOREIGN KEY (`baronDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_championDTOId_fkey` FOREIGN KEY (`championDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_dragonDTOId_fkey` FOREIGN KEY (`dragonDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_inhibitorDTOId_fkey` FOREIGN KEY (`inhibitorDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_riftHeraldDTOId_fkey` FOREIGN KEY (`riftHeraldDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ObjectiveDTO` ADD CONSTRAINT `ObjectiveDTO_towerDTOId_fkey` FOREIGN KEY (`towerDTOId`) REFERENCES `TeamObjectivesDTO`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- RenameIndex
ALTER TABLE `matchinfodto` RENAME INDEX `MatchInfoDTO_matchDTOId_unique` TO `MatchInfoDTO_matchDTOId_key`;

-- RenameIndex
ALTER TABLE `matchmetadatadto` RENAME INDEX `MatchMetadataDTO_matchDTOId_unique` TO `MatchMetadataDTO_matchDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_baronDTOId_unique` TO `ObjectiveDTO_baronDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_championDTOId_unique` TO `ObjectiveDTO_championDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_dragonDTOId_unique` TO `ObjectiveDTO_dragonDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_inhibitorDTOId_unique` TO `ObjectiveDTO_inhibitorDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_riftHeraldDTOId_unique` TO `ObjectiveDTO_riftHeraldDTOId_key`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_towerDTOId_unique` TO `ObjectiveDTO_towerDTOId_key`;

-- RenameIndex
ALTER TABLE `perksdto` RENAME INDEX `PerksDTO_participantDTOId_unique` TO `PerksDTO_participantDTOId_key`;

-- RenameIndex
ALTER TABLE `perkstatsdto` RENAME INDEX `PerkStatsDTO_perksDTOId_unique` TO `PerkStatsDTO_perksDTOId_key`;

-- RenameIndex
ALTER TABLE `perkstyleselectiondto` RENAME INDEX `PerkStyleSelectionDTO_perkStyleDTOId_unique` TO `PerkStyleSelectionDTO_perkStyleDTOId_key`;

-- RenameIndex
ALTER TABLE `teamdto` RENAME INDEX `TeamDTO_matchInfoDTOId_unique` TO `TeamDTO_matchInfoDTOId_key`;

-- RenameIndex
ALTER TABLE `teamobjectivesdto` RENAME INDEX `TeamObjectivesDTO_teamDTOId_unique` TO `TeamObjectivesDTO_teamDTOId_key`;

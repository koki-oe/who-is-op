-- DropForeignKey
ALTER TABLE `customsummoner` DROP FOREIGN KEY `customsummoner_ibfk_1`;

-- AddForeignKey
ALTER TABLE `CustomSummoner` ADD CONSTRAINT `CustomSummoner_teamId_fkey` FOREIGN KEY (`teamId`) REFERENCES `CustomTeam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

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

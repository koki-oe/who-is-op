-- RenameIndex
ALTER TABLE `matchinfodto` RENAME INDEX `MatchInfoDTO_matchDTOId_key` TO `MatchInfoDTO_matchDTOId_unique`;

-- RenameIndex
ALTER TABLE `matchmetadatadto` RENAME INDEX `MatchMetadataDTO_matchDTOId_key` TO `MatchMetadataDTO_matchDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_baronDTOId_key` TO `ObjectiveDTO_baronDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_championDTOId_key` TO `ObjectiveDTO_championDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_dragonDTOId_key` TO `ObjectiveDTO_dragonDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_inhibitorDTOId_key` TO `ObjectiveDTO_inhibitorDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_riftHeraldDTOId_key` TO `ObjectiveDTO_riftHeraldDTOId_unique`;

-- RenameIndex
ALTER TABLE `objectivedto` RENAME INDEX `ObjectiveDTO_towerDTOId_key` TO `ObjectiveDTO_towerDTOId_unique`;

-- RenameIndex
ALTER TABLE `perksdto` RENAME INDEX `PerksDTO_participantDTOId_key` TO `PerksDTO_participantDTOId_unique`;

-- RenameIndex
ALTER TABLE `perkstatsdto` RENAME INDEX `PerkStatsDTO_perksDTOId_key` TO `PerkStatsDTO_perksDTOId_unique`;

-- RenameIndex
ALTER TABLE `perkstyleselectiondto` RENAME INDEX `PerkStyleSelectionDTO_perkStyleDTOId_key` TO `PerkStyleSelectionDTO_perkStyleDTOId_unique`;

-- RenameIndex
ALTER TABLE `teamdto` RENAME INDEX `TeamDTO_matchInfoDTOId_key` TO `TeamDTO_matchInfoDTOId_unique`;

-- RenameIndex
ALTER TABLE `teamobjectivesdto` RENAME INDEX `TeamObjectivesDTO_teamDTOId_key` TO `TeamObjectivesDTO_teamDTOId_unique`;

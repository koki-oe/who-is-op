-- CreateTable
CREATE TABLE `CustomTeam` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CustomSummoner` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `summonerName` VARCHAR(191) NOT NULL,
    `tier` VARCHAR(191) NOT NULL,
    `rank` VARCHAR(191) NOT NULL,
    `teamId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `CustomSummoner` ADD FOREIGN KEY (`teamId`) REFERENCES `CustomTeam`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

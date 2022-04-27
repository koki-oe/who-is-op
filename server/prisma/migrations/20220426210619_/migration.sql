/*
  Warnings:

  - You are about to drop the column `teamId` on the `customsummoner` table. All the data in the column will be lost.
  - The primary key for the `customteam` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `customteam` table. All the data in the column will be lost.
  - Added the required column `teamUUID` to the `CustomSummoner` table without a default value. This is not possible if the table is not empty.
  - Added the required column `uuid` to the `CustomTeam` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `customsummoner` DROP FOREIGN KEY `CustomSummoner_teamId_fkey`;

-- AlterTable
ALTER TABLE `customsummoner` DROP COLUMN `teamId`,
    ADD COLUMN `teamUUID` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `customteam` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `uuid` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`uuid`);

-- AddForeignKey
ALTER TABLE `CustomSummoner` ADD CONSTRAINT `CustomSummoner_teamUUID_fkey` FOREIGN KEY (`teamUUID`) REFERENCES `CustomTeam`(`uuid`) ON DELETE RESTRICT ON UPDATE CASCADE;

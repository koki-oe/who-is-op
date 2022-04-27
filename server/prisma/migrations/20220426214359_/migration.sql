/*
  Warnings:

  - You are about to alter the column `tier` on the `customsummoner` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum("CustomSummoner_tier")`.
  - You are about to alter the column `rank` on the `customsummoner` table. The data in that column could be lost. The data in that column will be cast from `Enum("customsummoner_rank")` to `Int`.

*/
-- AlterTable
ALTER TABLE `customsummoner` MODIFY `tier` ENUM('IRON', 'BRONZE', 'SILVER', 'GOLD', 'PLATINUM', 'DIAMOND', 'MASTER', 'GRAND_MASTER', 'CHALLENGER') NOT NULL,
    MODIFY `rank` INTEGER NOT NULL;

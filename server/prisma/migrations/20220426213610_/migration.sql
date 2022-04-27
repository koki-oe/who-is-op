/*
  Warnings:

  - The primary key for the `customsummoner` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `customsummoner` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `customsummoner` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `order` INTEGER NOT NULL DEFAULT 0,
    ADD PRIMARY KEY (`teamUUID`, `summonerName`);

/*
  Warnings:

  - You are about to alter the column `password` on the `User` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `email` on the `User` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `nama_lengkap` on the `User` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `alamat` on the `User` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.

*/
-- AlterTable
ALTER TABLE "User" ALTER COLUMN "password" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "email" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "nama_lengkap" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "alamat" SET DATA TYPE VARCHAR(255);

/*
  Warnings:

  - A unique constraint covering the columns `[id_user_education]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id_job_history]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "User" ALTER COLUMN "id_user_education" DROP NOT NULL,
ALTER COLUMN "id_job_history" DROP NOT NULL;

-- CreateTable
CREATE TABLE "UserEducationHistory" (
    "id" SERIAL NOT NULL,
    "pendidikan_terakhir" VARCHAR(50) NOT NULL,
    "tahun_mulai" DATE NOT NULL,
    "tahun_selesai" DATE NOT NULL,
    "nilai" DOUBLE PRECISION NOT NULL,
    "organisasi" VARCHAR(50) NOT NULL,

    CONSTRAINT "UserEducationHistory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserJobHistory" (
    "id" SERIAL NOT NULL,
    "pekerjaan_terdahulu" VARCHAR(50) NOT NULL,
    "perusahaan_terdahulu" VARCHAR(50) NOT NULL,
    "tahun_mulai" DATE NOT NULL,
    "tahun_selesai" DATE NOT NULL,
    "pengalaman_kerja" VARCHAR(255) NOT NULL,
    "keahlian" VARCHAR(50) NOT NULL,

    CONSTRAINT "UserJobHistory_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_id_user_education_key" ON "User"("id_user_education");

-- CreateIndex
CREATE UNIQUE INDEX "User_id_job_history_key" ON "User"("id_job_history");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_id_user_education_fkey" FOREIGN KEY ("id_user_education") REFERENCES "UserEducationHistory"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_id_job_history_fkey" FOREIGN KEY ("id_job_history") REFERENCES "UserJobHistory"("id") ON DELETE SET NULL ON UPDATE CASCADE;

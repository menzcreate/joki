-- CreateEnum
CREATE TYPE "JenisKelamin" AS ENUM ('MALE', 'FEMALE', 'OTHER');

-- CreateTable
CREATE TABLE "User" (
    "id_user" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "nama_lengkap" TEXT NOT NULL,
    "alamat" TEXT NOT NULL,
    "no_telp" INTEGER NOT NULL,
    "jenis_kelamin" "JenisKelamin" NOT NULL,
    "tgl_lahir" TIMESTAMP(3) NOT NULL,
    "tgl_gabung" TIMESTAMP(3) NOT NULL,
    "id_user_education" INTEGER NOT NULL,
    "id_job_history" INTEGER NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id_user")
);

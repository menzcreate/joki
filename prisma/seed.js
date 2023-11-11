const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function main() {
    await prisma.user.create({
        data: {
            username: 'xyla',
            password: 'xylapass',
            email: 'xyla@my.com',
            nama_lengkap: 'xyla bla bla',
            alamat: 'solo',
            no_telp: 1234567890,
            jenis_kelamin: 'FEMALE', 
            tgl_lahir: new Date('2002-01-01'),
            educationHistory: {
                create: {
                    pendidikan_terakhir: 'SMA',
                    tahun_mulai: new Date('2018-09-01'),
                    tahun_selesai: new Date('2021-06-30'),
                    nilai: 3.5,
                    organisasi: 'Web Dev'
                }
            },
            jobHistory: {
                create: {
                    pekerjaan_terdahulu: 'Woman Programmer',
                    perusahaan_terdahulu: 'Ayopay',
                    tahun_mulai: new Date('2012-07-01'),
                    tahun_selesai: new Date('2020-08-31'),
                    pengalaman_kerja: 'Building BE',
                    keahlian: 'Node, Express'
                }
            }
        },
    });
}

main()
    .catch(e => {
        console.error(e);
        process.exit(1);
    })
    .finally(async () => {
        await prisma.$disconnect();
    });

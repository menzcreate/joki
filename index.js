// const express = require('express');
// const { PrismaClient } = require('@prisma/client');

// const prisma = new PrismaClient();
// const app = express();
// app.use(express.json());

// // Create 
// app.post('/users', async (req, res) => {
//   try {
//     const user = await prisma.user.create({
//       data: req.body
//     });
//     res.json(user);
//   } catch (error) {
//     res.status(400).json({ error: error.message });
//   }
// });

// // Read
// app.get('/users', async (req, res) => {
//   const users = await prisma.user.findMany();
//   res.json(users);
// });

// // Search 
// app.get('/users/:id', async (req, res) => {
//   const { id } = req.params;
//   const user = await prisma.user.findUnique({
//     where: { id_user: parseInt(id) },
//   });
//   res.json(user);
// });

// // Update
// app.put('/users/:id', async (req, res) => {
//   const { id } = req.params;
//   try {
//     const user = await prisma.user.update({
//       where: { id_user: parseInt(id) },
//       data: req.body,
//     });
//     res.json(user);
//   } catch (error) {
//     res.status(400).json({ error: error.message });
//   }
// });

// // Delete
// app.delete('/users/:id', async (req, res) => {
//   const { id } = req.params;
//   await prisma.user.delete({
//     where: { id_user: parseInt(id) },
//   });
//   res.json({ message: 'User deleted' });
// });

// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//   console.log(`Server is running on port ${PORT}`);
// });

const express = require('express');
const userRoutes = require('./routes/userRoutes');

const app = express();
app.use(express.json());

app.use('/users', userRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

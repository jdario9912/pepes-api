const app = require('./app');
const { dotenv, port } = require('./config');

dotenv.config();

app.listen(port, () => {
  console.log(`Server listening on ${port}...`);
});
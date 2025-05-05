const jwt = require('jsonwebtoken');

const payload = { role: 'staff' };
const secret = 'my-super-secret-key';

const token = jwt.sign(payload, secret, { algorithm: 'HS256' });

console.log(token);

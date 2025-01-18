const request = require('supertest');
const app = require('../app');

describe('Express App', () => {
  it('should return 200 and correct message for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.body).toEqual({ message: 'Hello, DevOps!' });
  });

  it('should return 200 and correct status for GET /health', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
    expect(res.body).toEqual({ status: 'OK' });
  });

  it('should return 404 for non-existent routes', async () => {
    const res = await request(app).get('/non-existent');
    expect(res.statusCode).toBe(404);
  });
});


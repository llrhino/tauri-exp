import cors from 'cors';
import express, { Request, Response } from 'express';
import { Pool } from 'pg';

const app = express();
app.use(cors());
app.use(express.json());

const pool = new Pool({
    host: 'localhost',
    port: 5432,
    user: 'app',
    password: 'app',
    database: 'appdb',
});

app.get('/health', (req: Request, res: Response) => {
    res.json({ ok: true });
});

app.get('/deps', async (req: Request, res: Response) => {
    const result = await pool.query('SELECT * FROM deps'); 
    res.json(result.rows);
});

const port = 3001;
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
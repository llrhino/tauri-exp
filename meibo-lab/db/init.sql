CREATE TABLE deps (
    dep_code text PRIMARY KEY,
    dep_name text NOT NULL
);

INSERT INTO deps (dep_code, dep_name) VALUES
('HR', '人事'),
('DEV', '開発'),
('SALES', '営業'),
('MKT', 'マーケティング');

CREATE TABLE members (
    id bigserial PRIMARY KEY,
    first_name text NOT NULL,
    last_name text NOT NULL,
    dep_code text NOT NULL,     -- 既存が「部署名のみ」想定
    gender text NOT NULL
);

INSERT INTO members (first_name, last_name, dep_code, gender) VALUES
('太郎', '山田', 'HR', 'M'),
('花子', '佐藤', 'DEV', 'F'),
('次郎', '鈴木', 'SALES', 'M'),
('美咲', '高橋', 'MKT', 'F');

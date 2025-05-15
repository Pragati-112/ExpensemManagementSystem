CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(100) UNIQUE NOT NULL,
  password TEXT NOT NULL,
  email TEXT,
  role VARCHAR(20)
);

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  amount DECIMAL NOT NULL,
  category VARCHAR(50),
  description TEXT,
  date DATE,
  status VARCHAR(20) DEFAULT 'PENDING',
  invoice_url TEXT
);

CREATE TABLE audit_log (
  id SERIAL PRIMARY KEY,
  action TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER
);

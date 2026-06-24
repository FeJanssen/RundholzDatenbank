-- Tabelle für Holz-Einträge erstellen
CREATE TABLE holz_eintraege (
  id BIGSERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  stammnummer TEXT NOT NULL,
  datum_von DATE,
  datum_bis DATE,
  paketnummer TEXT,
  saeger TEXT,
  holzart TEXT,
  kategorie TEXT,
  qualitaet TEXT,
  staerke NUMERIC,
  laenge NUMERIC,
  breite NUMERIC,
  stueck INTEGER,
  quadratmeter NUMERIC,
  kubikmeter NUMERIC
);

-- Row Level Security (RLS) aktivieren
ALTER TABLE holz_eintraege ENABLE ROW LEVEL SECURITY;

-- Policy: Jeder kann lesen
CREATE POLICY "Enable read access for all users" ON holz_eintraege
  FOR SELECT USING (true);

-- Policy: Jeder kann einfügen
CREATE POLICY "Enable insert access for all users" ON holz_eintraege
  FOR INSERT WITH CHECK (true);

-- Policy: Jeder kann löschen
CREATE POLICY "Enable delete access for all users" ON holz_eintraege
  FOR DELETE USING (true);

-- Policy: Jeder kann updaten
CREATE POLICY "Enable update access for all users" ON holz_eintraege
  FOR UPDATE USING (true);

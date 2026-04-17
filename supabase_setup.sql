-- 1. Create Settings table for global configuration
CREATE TABLE settings (
    singleton_key TEXT PRIMARY KEY,
    company JSONB,
    bank JSONB,
    pricing JSONB,
    warranty JSONB,
    terms JSONB,
    bom_templates JSONB,
    product_descriptions JSONB,
    product_column_widths JSONB,
    bom_column_widths JSONB,
    users JSONB,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Create Quotations table
CREATE TABLE quotations (
    id TEXT PRIMARY KEY,
    customer_name TEXT,
    customer_details JSONB,
    data JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 3. (Optional) Setup RLS or just enable for simplicity if prototyping
-- ALTER TABLE settings ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE quotations ENABLE ROW LEVEL SECURITY;

-- Create policy for public access if needed (NOT RECOMMENDED FOR PRODUCTION)
-- CREATE POLICY "Public Access" ON settings FOR ALL USING (true);
-- CREATE POLICY "Public Access" ON quotations FOR ALL USING (true);

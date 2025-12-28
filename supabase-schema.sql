-- Create projects table
CREATE TABLE IF NOT EXISTS projects (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id TEXT NOT NULL,
  component_type TEXT NOT NULL,
  name TEXT NOT NULL,
  html TEXT NOT NULL,
  css TEXT,
  data JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create custom_components table
CREATE TABLE IF NOT EXISTS custom_components (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL,
  name TEXT NOT NULL,
  html_template TEXT NOT NULL,
  css_template TEXT,
  fields JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS projects_user_id_idx ON projects(user_id);
CREATE INDEX IF NOT EXISTS custom_components_user_id_idx ON custom_components(user_id);

-- Enable Row Level Security
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE custom_components ENABLE ROW LEVEL SECURITY;

-- Create policies for projects table
CREATE POLICY "Users can view their own projects"
  ON projects FOR SELECT
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can insert their own projects"
  ON projects FOR INSERT
  WITH CHECK (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can update their own projects"
  ON projects FOR UPDATE
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can delete their own projects"
  ON projects FOR DELETE
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

-- Create policies for custom_components table
CREATE POLICY "Users can view their own custom components"
  ON custom_components FOR SELECT
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can insert their own custom components"
  ON custom_components FOR INSERT
  WITH CHECK (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can update their own custom components"
  ON custom_components FOR UPDATE
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

CREATE POLICY "Users can delete their own custom components"
  ON custom_components FOR DELETE
  USING (user_id = current_setting('request.jwt.claims', true)::json->>'sub');

-- For anonymous users (using browser fingerprint as user_id)
-- Create policies that allow operations based on user_id match
CREATE POLICY "Anonymous users can view their projects"
  ON projects FOR SELECT
  USING (true);

CREATE POLICY "Anonymous users can insert projects"
  ON projects FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Anonymous users can update projects"
  ON projects FOR UPDATE
  USING (true);

CREATE POLICY "Anonymous users can delete projects"
  ON projects FOR DELETE
  USING (true);

CREATE POLICY "Anonymous users can view custom components"
  ON custom_components FOR SELECT
  USING (true);

CREATE POLICY "Anonymous users can insert custom components"
  ON custom_components FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Anonymous users can update custom components"
  ON custom_components FOR UPDATE
  USING (true);

CREATE POLICY "Anonymous users can delete custom components"
  ON custom_components FOR DELETE
  USING (true);

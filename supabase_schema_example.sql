-- 실제 운영용 Supabase 테이블 구조 예시

create table prizes (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  total_quantity integer not null default 0,
  remaining_quantity integer not null default 0,
  weight integer not null default 1,
  is_active boolean not null default true,
  contents jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create table participants (
  id uuid primary key default gen_random_uuid(),
  instagram_id text not null,
  instagram_id_normalized text generated always as (lower(regexp_replace(instagram_id, '^@+', ''))) stored,
  status text not null default 'registered',
  clicked_handles jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now(),
  verified_at timestamptz,
  drawn_at timestamptz
);

create unique index one_draw_per_instagram
on participants (instagram_id_normalized);

create table draw_logs (
  id uuid primary key default gen_random_uuid(),
  participant_id uuid references participants(id),
  instagram_id text not null,
  prize_id uuid references prizes(id),
  prize_name text not null,
  result_code text not null unique,
  clicked_handles jsonb not null default '[]'::jsonb,
  claimed boolean not null default false,
  created_at timestamptz not null default now(),
  claimed_at timestamptz
);

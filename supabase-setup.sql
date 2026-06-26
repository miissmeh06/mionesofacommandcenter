create table if not exists public.orders (
  id text primary key,
  name text not null,
  product text not null,
  color text default '',
  size text default 'Standard',
  delivery text default '',
  deliverydate text default '',
  landmark text default '',
  payment text default 'COD',
  notes text default '',
  status text not null default 'new'
    check (status in ('new', 'producing', 'ready', 'delivered', 'cancelled')),
  time text default '',
  created_at timestamptz not null default now()
);

alter table public.orders enable row level security;

drop policy if exists "public read orders" on public.orders;
drop policy if exists "public insert orders" on public.orders;
drop policy if exists "public update orders" on public.orders;
drop policy if exists "public delete orders" on public.orders;

create policy "public read orders"
on public.orders for select
to anon
using (true);

create policy "public insert orders"
on public.orders for insert
to anon
with check (true);

create policy "public update orders"
on public.orders for update
to anon
using (true)
with check (true);

create policy "public delete orders"
on public.orders for delete
to anon
using (true);

-- AURA FOR CARS: إضافات ضرورية بعد تنفيذ SQL الأساسي
-- 1) تأكد أن جداول الطلبات يمكن قراءتها/تعديلها من الأدمن فقط عبر RLS.
-- 2) إتاحة قراءة المنتجات العامة وإدارة المنتجات للأدمن.
grant select on public.products to anon, authenticated;
grant insert, update, delete on public.products to authenticated;
grant select, insert, update, delete on public.orders to authenticated;
grant select, insert, update, delete on public.order_items to authenticated;
grant select on public.admin_users to authenticated;
-- status values used by the admin dashboard
alter table public.orders alter column status set default 'new';

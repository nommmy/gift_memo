-- insert into auth.users (instance_id, id, aud, role, email, encrypted_password, raw_app_meta_data, raw_user_meta_data, email_confirmed_at, created_at, confirmation_token, recovery_token, email_change_token_new, email_change, last_sign_in_at, confirmation_sent_at)
--   values ('00000000-0000-0000-0000-000000000000', '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'authenticated', 'authenticated', 'my@email.com', crypt('password', gen_salt('bf')), '{"provider":"email","providers":["email"]}', '{}', timezone('utc'::text, now()), timezone('utc'::text, now()), '','' ,'', '',timezone('utc'::text, now()),timezone('utc'::text, now()));

-- insert into auth.identities (id, user_id, identity_data, provider, provider_id, created_at)
--   values ('137721e9-e199-a3d1-3e92-df3dc23a07fc', '137721e9-e199-a3d1-3e92-df3dc23a07fc',	'{"sub": "137721e9-e199-a3d1-3e92-df3dc23a07fc"}', 'email', '137721e9-e199-a3d1-3e92-df3dc23a07fc', timezone('utc'::text, now()));

insert into public.t_user (id) values
('137721e9-e199-a3d1-3e92-df3dc23a07fc');

insert into public.t_gift (name, price, user_id, category, shop) values
('せんべいせんべい煎餅煎餅せんべいせんべいせんべいせんべいせんべいせんべいせんべいせんべいせんべいせんべい', 1000, '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'しょっぱいお菓子', '千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋千疋屋'), 
('チーズケーキ', 1000, '137721e9-e199-a3d1-3e92-df3dc23a07fc', '甘いお菓子', 'パティスリー東京'), 
('ワイン', 1000, '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'お酒', 'ワインショップ東京');

insert into public.t_anniversary (name, date, user_id, is_annually) values 
('母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日母誕生日', '2024/10/22', '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'true'),
('父誕生日', '2024/02/20', '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'true'),
('母の日', '2024/10/22', '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'true'),
('友人結婚式', '2024/11/22', '137721e9-e199-a3d1-3e92-df3dc23a07fc', 'false');

insert into public.t_recipient (name, icon, relationship, user_id) values 
('由美子', 'cow', '母', '137721e9-e199-a3d1-3e92-df3dc23a07fc'),
('竜一', 'lion', '父', '137721e9-e199-a3d1-3e92-df3dc23a07fc'),
('友人', 'sheep', '友達', '137721e9-e199-a3d1-3e92-df3dc23a07fc');

insert into public.rel_anniversary_gift (anniversary_id, gift_id) values 
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 3);

insert into public.rel_present_for (recipient_id, gift_id) values 
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 3);

insert into public.rel_whose_anniversary (recipient_id, anniversary_id) values 
(1, 1),
(3, 1),
(2, 2),
(1, 3),
(3, 4);


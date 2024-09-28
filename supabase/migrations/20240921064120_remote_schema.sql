drop trigger if exists "auto_handle_updated_at" on "public"."mst_category";

drop trigger if exists "auto_handle_updated_at" on "public"."rel_gift_categorization";

drop policy "Enable read access for all users" on "public"."mst_category";

drop policy "Only records related to own" on "public"."rel_gift_categorization";

revoke delete on table "public"."mst_category" from "anon";

revoke insert on table "public"."mst_category" from "anon";

revoke references on table "public"."mst_category" from "anon";

revoke select on table "public"."mst_category" from "anon";

revoke trigger on table "public"."mst_category" from "anon";

revoke truncate on table "public"."mst_category" from "anon";

revoke update on table "public"."mst_category" from "anon";

revoke delete on table "public"."mst_category" from "authenticated";

revoke insert on table "public"."mst_category" from "authenticated";

revoke references on table "public"."mst_category" from "authenticated";

revoke select on table "public"."mst_category" from "authenticated";

revoke trigger on table "public"."mst_category" from "authenticated";

revoke truncate on table "public"."mst_category" from "authenticated";

revoke update on table "public"."mst_category" from "authenticated";

revoke delete on table "public"."mst_category" from "service_role";

revoke insert on table "public"."mst_category" from "service_role";

revoke references on table "public"."mst_category" from "service_role";

revoke select on table "public"."mst_category" from "service_role";

revoke trigger on table "public"."mst_category" from "service_role";

revoke truncate on table "public"."mst_category" from "service_role";

revoke update on table "public"."mst_category" from "service_role";

revoke delete on table "public"."rel_gift_categorization" from "anon";

revoke insert on table "public"."rel_gift_categorization" from "anon";

revoke references on table "public"."rel_gift_categorization" from "anon";

revoke select on table "public"."rel_gift_categorization" from "anon";

revoke trigger on table "public"."rel_gift_categorization" from "anon";

revoke truncate on table "public"."rel_gift_categorization" from "anon";

revoke update on table "public"."rel_gift_categorization" from "anon";

revoke delete on table "public"."rel_gift_categorization" from "authenticated";

revoke insert on table "public"."rel_gift_categorization" from "authenticated";

revoke references on table "public"."rel_gift_categorization" from "authenticated";

revoke select on table "public"."rel_gift_categorization" from "authenticated";

revoke trigger on table "public"."rel_gift_categorization" from "authenticated";

revoke truncate on table "public"."rel_gift_categorization" from "authenticated";

revoke update on table "public"."rel_gift_categorization" from "authenticated";

revoke delete on table "public"."rel_gift_categorization" from "service_role";

revoke insert on table "public"."rel_gift_categorization" from "service_role";

revoke references on table "public"."rel_gift_categorization" from "service_role";

revoke select on table "public"."rel_gift_categorization" from "service_role";

revoke trigger on table "public"."rel_gift_categorization" from "service_role";

revoke truncate on table "public"."rel_gift_categorization" from "service_role";

revoke update on table "public"."rel_gift_categorization" from "service_role";

alter table "public"."rel_gift_categorization" drop constraint "rel_gift_categorization_category_id_fkey";

alter table "public"."rel_gift_categorization" drop constraint "rel_gift_categorization_gift_id_fkey";

alter table "public"."mst_category" drop constraint "mst_category_pkey";

alter table "public"."rel_gift_categorization" drop constraint "rel_gift_categorization_pkey";

drop index if exists "public"."mst_category_pkey";

drop index if exists "public"."rel_gift_categorization_pkey";

drop table "public"."mst_category";

drop table "public"."rel_gift_categorization";

alter table "public"."t_gift" add column "category" text not null;

alter table "public"."t_gift" add column "url" text;



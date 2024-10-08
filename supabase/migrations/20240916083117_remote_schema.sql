

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "moddatetime" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";





SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."mst_category" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."mst_category" OWNER TO "postgres";


ALTER TABLE "public"."mst_category" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."mst_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."t_gift" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "image_url" "text",
    "price" integer,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "user_id" "uuid" DEFAULT "auth"."uid"() NOT NULL
);


ALTER TABLE "public"."t_gift" OWNER TO "postgres";


ALTER TABLE "public"."t_gift" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."mst_gift_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."rel_anniversary_gift" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "anniversary_id" bigint NOT NULL,
    "gift_id" bigint NOT NULL
);


ALTER TABLE "public"."rel_anniversary_gift" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."rel_gift_categorization" (
    "gift_id" bigint NOT NULL,
    "category_id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."rel_gift_categorization" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."rel_present_for" (
    "gift_id" bigint NOT NULL,
    "recipient_id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "is_already_gifted" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."rel_present_for" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."rel_whose_anniversary" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "anniversary_id" bigint NOT NULL,
    "recipient_id" bigint NOT NULL
);


ALTER TABLE "public"."rel_whose_anniversary" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."t_anniversary" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "date" "date" NOT NULL,
    "is_gift_reminder_enabled" boolean DEFAULT false NOT NULL,
    "is_anniv_reminder_enabled" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "is_annually" boolean DEFAULT true NOT NULL,
    "user_id" "uuid" DEFAULT "auth"."uid"() NOT NULL
);


ALTER TABLE "public"."t_anniversary" OWNER TO "postgres";


ALTER TABLE "public"."t_anniversary" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."t_anniversary_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."t_recipient" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL,
    "icon" "text" NOT NULL,
    "relationship" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "user_id" "uuid" DEFAULT "auth"."uid"() NOT NULL
);


ALTER TABLE "public"."t_recipient" OWNER TO "postgres";


ALTER TABLE "public"."t_recipient" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."t_recipient_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."t_user" (
    "id" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "isPremium" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."t_user" OWNER TO "postgres";


ALTER TABLE ONLY "public"."mst_category"
    ADD CONSTRAINT "mst_category_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."t_gift"
    ADD CONSTRAINT "mst_gift_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."rel_anniversary_gift"
    ADD CONSTRAINT "rel_anniversary_gift_pkey" PRIMARY KEY ("anniversary_id", "gift_id");



ALTER TABLE ONLY "public"."rel_gift_categorization"
    ADD CONSTRAINT "rel_gift_categorization_pkey" PRIMARY KEY ("gift_id", "category_id");



ALTER TABLE ONLY "public"."rel_present_for"
    ADD CONSTRAINT "rel_present_for_pkey" PRIMARY KEY ("gift_id", "recipient_id");



ALTER TABLE ONLY "public"."rel_whose_anniversary"
    ADD CONSTRAINT "rel_whose_anniversary_pkey" PRIMARY KEY ("anniversary_id", "recipient_id");



ALTER TABLE ONLY "public"."t_anniversary"
    ADD CONSTRAINT "t_anniversary_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."t_recipient"
    ADD CONSTRAINT "t_recipient_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."t_user"
    ADD CONSTRAINT "t_user_pkey" PRIMARY KEY ("id");



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."mst_category" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."rel_anniversary_gift" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."rel_gift_categorization" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."rel_present_for" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."rel_whose_anniversary" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."t_anniversary" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."t_gift" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."t_recipient" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



CREATE OR REPLACE TRIGGER "auto_handle_updated_at" BEFORE UPDATE ON "public"."t_user" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');



ALTER TABLE ONLY "public"."rel_anniversary_gift"
    ADD CONSTRAINT "rel_anniversary_gift_anniversary_id_fkey" FOREIGN KEY ("anniversary_id") REFERENCES "public"."t_anniversary"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_anniversary_gift"
    ADD CONSTRAINT "rel_anniversary_gift_gift_id_fkey" FOREIGN KEY ("gift_id") REFERENCES "public"."t_gift"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_gift_categorization"
    ADD CONSTRAINT "rel_gift_categorization_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."mst_category"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_gift_categorization"
    ADD CONSTRAINT "rel_gift_categorization_gift_id_fkey" FOREIGN KEY ("gift_id") REFERENCES "public"."t_gift"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_present_for"
    ADD CONSTRAINT "rel_present_for_gift_id_fkey" FOREIGN KEY ("gift_id") REFERENCES "public"."t_gift"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_present_for"
    ADD CONSTRAINT "rel_present_for_recipient_id_fkey" FOREIGN KEY ("recipient_id") REFERENCES "public"."t_recipient"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_whose_anniversary"
    ADD CONSTRAINT "rel_whose_anniversary_anniversary_id_fkey" FOREIGN KEY ("anniversary_id") REFERENCES "public"."t_anniversary"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."rel_whose_anniversary"
    ADD CONSTRAINT "rel_whose_anniversary_recipient_id_fkey" FOREIGN KEY ("recipient_id") REFERENCES "public"."t_recipient"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."t_anniversary"
    ADD CONSTRAINT "t_anniversary_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."t_user"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."t_gift"
    ADD CONSTRAINT "t_gift_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."t_user"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."t_recipient"
    ADD CONSTRAINT "t_recipient_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."t_user"("id") ON DELETE CASCADE;



CREATE POLICY "Enable read access for all users" ON "public"."mst_category" FOR SELECT USING (true);



CREATE POLICY "Only records related to own" ON "public"."rel_anniversary_gift" USING ((("anniversary_id" IN ( SELECT "t_anniversary"."id"
   FROM "public"."t_anniversary"
  WHERE ("auth"."uid"() = "t_anniversary"."user_id"))) AND ("gift_id" IN ( SELECT "t_gift"."id"
   FROM "public"."t_gift"
  WHERE ("auth"."uid"() = "t_gift"."user_id")))));



CREATE POLICY "Only records related to own" ON "public"."rel_gift_categorization" USING (("gift_id" IN ( SELECT "t_gift"."id"
   FROM "public"."t_gift"
  WHERE ("auth"."uid"() = "t_gift"."user_id"))));



CREATE POLICY "Only records related to own" ON "public"."rel_present_for" USING ((("gift_id" IN ( SELECT "t_gift"."id"
   FROM "public"."t_gift"
  WHERE ("auth"."uid"() = "t_gift"."user_id"))) AND ("recipient_id" IN ( SELECT "t_recipient"."id"
   FROM "public"."t_recipient"
  WHERE ("auth"."uid"() = "t_recipient"."user_id")))));



CREATE POLICY "Only records related to own" ON "public"."rel_whose_anniversary" USING ((("anniversary_id" IN ( SELECT "t_anniversary"."id"
   FROM "public"."t_anniversary"
  WHERE ("auth"."uid"() = "t_anniversary"."user_id"))) AND ("recipient_id" IN ( SELECT "t_recipient"."id"
   FROM "public"."t_recipient"
  WHERE ("auth"."uid"() = "t_recipient"."user_id")))));



CREATE POLICY "Only the owner can operate the own anniv" ON "public"."t_anniversary" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Only the owner can operate the own gift" ON "public"."t_gift" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Only the owner can operate the own recipient" ON "public"."t_recipient" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Only the owner can operate the own user settings" ON "public"."t_user" USING (("auth"."uid"() = "id"));



ALTER TABLE "public"."mst_category" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."rel_anniversary_gift" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."rel_gift_categorization" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."rel_present_for" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."rel_whose_anniversary" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."t_anniversary" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."t_gift" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."t_recipient" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."t_user" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";





GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";



























































































































































































































GRANT ALL ON TABLE "public"."mst_category" TO "anon";
GRANT ALL ON TABLE "public"."mst_category" TO "authenticated";
GRANT ALL ON TABLE "public"."mst_category" TO "service_role";



GRANT ALL ON SEQUENCE "public"."mst_category_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."mst_category_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."mst_category_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."t_gift" TO "anon";
GRANT ALL ON TABLE "public"."t_gift" TO "authenticated";
GRANT ALL ON TABLE "public"."t_gift" TO "service_role";



GRANT ALL ON SEQUENCE "public"."mst_gift_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."mst_gift_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."mst_gift_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."rel_anniversary_gift" TO "anon";
GRANT ALL ON TABLE "public"."rel_anniversary_gift" TO "authenticated";
GRANT ALL ON TABLE "public"."rel_anniversary_gift" TO "service_role";



GRANT ALL ON TABLE "public"."rel_gift_categorization" TO "anon";
GRANT ALL ON TABLE "public"."rel_gift_categorization" TO "authenticated";
GRANT ALL ON TABLE "public"."rel_gift_categorization" TO "service_role";



GRANT ALL ON TABLE "public"."rel_present_for" TO "anon";
GRANT ALL ON TABLE "public"."rel_present_for" TO "authenticated";
GRANT ALL ON TABLE "public"."rel_present_for" TO "service_role";



GRANT ALL ON TABLE "public"."rel_whose_anniversary" TO "anon";
GRANT ALL ON TABLE "public"."rel_whose_anniversary" TO "authenticated";
GRANT ALL ON TABLE "public"."rel_whose_anniversary" TO "service_role";



GRANT ALL ON TABLE "public"."t_anniversary" TO "anon";
GRANT ALL ON TABLE "public"."t_anniversary" TO "authenticated";
GRANT ALL ON TABLE "public"."t_anniversary" TO "service_role";



GRANT ALL ON SEQUENCE "public"."t_anniversary_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."t_anniversary_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."t_anniversary_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."t_recipient" TO "anon";
GRANT ALL ON TABLE "public"."t_recipient" TO "authenticated";
GRANT ALL ON TABLE "public"."t_recipient" TO "service_role";



GRANT ALL ON SEQUENCE "public"."t_recipient_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."t_recipient_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."t_recipient_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."t_user" TO "anon";
GRANT ALL ON TABLE "public"."t_user" TO "authenticated";
GRANT ALL ON TABLE "public"."t_user" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;

--
-- Dumped schema changes for auth and storage
--


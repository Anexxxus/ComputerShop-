PGDMP  .    /                |            pgnull    16.0    16.0 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42114    pgnull    DATABASE     z   CREATE DATABASE pgnull WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE pgnull;
                postgres    false            �            1259    42115    Заказы    TABLE     w  CREATE TABLE public."Заказы" (
    "Код_заказа" integer NOT NULL,
    "Номер_заказа" character varying(50) NOT NULL,
    "ФИО_клиента" character varying(255) NOT NULL,
    "Код_товара" integer,
    "Количество" integer NOT NULL,
    "Цена" numeric(10,2) NOT NULL,
    "Общая_цена" numeric(10,2) NOT NULL
);
 "   DROP TABLE public."Заказы";
       public         heap    postgres    false            �            1259    42118 $   Заказы_Код_заказа_seq    SEQUENCE     �   CREATE SEQUENCE public."Заказы_Код_заказа_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Заказы_Код_заказа_seq";
       public          postgres    false    215                       0    0 $   Заказы_Код_заказа_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Заказы_Код_заказа_seq" OWNED BY public."Заказы"."Код_заказа";
          public          postgres    false    216            �            1259    42119    История_заказов    TABLE     �  CREATE TABLE public."История_заказов" (
    "Код_заказа" integer NOT NULL,
    "Номер_заказа" character varying(50) NOT NULL,
    "ФИО_клиента" character varying(255) NOT NULL,
    "Статус" character varying(20) NOT NULL,
    "Дата" date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "Код_товара" integer,
    "Количество" integer NOT NULL,
    "Цена" numeric(10,2) NOT NULL,
    "Общая_цена" numeric(10,2) NOT NULL
);
 3   DROP TABLE public."История_заказов";
       public         heap    postgres    false            �            1259    42123    Клиенты    TABLE     �   CREATE TABLE public."Клиенты" (
    "Код_клиента" integer NOT NULL,
    "ФИО" character varying(255) NOT NULL,
    "Телеграм_id" integer
);
 $   DROP TABLE public."Клиенты";
       public         heap    postgres    false            �            1259    42126 (   Клиенты_Код_клиента_seq    SEQUENCE     �   CREATE SEQUENCE public."Клиенты_Код_клиента_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."Клиенты_Код_клиента_seq";
       public          postgres    false    218                       0    0 (   Клиенты_Код_клиента_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."Клиенты_Код_клиента_seq" OWNED BY public."Клиенты"."Код_клиента";
          public          postgres    false    219            �            1259    42127    Номер_клиента_seq    SEQUENCE     �   CREATE SEQUENCE public."Номер_клиента_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Номер_клиента_seq";
       public          postgres    false            �            1259    42128    Сотрудники    TABLE       CREATE TABLE public."Сотрудники" (
    "Код_сотрудника" integer NOT NULL,
    "ФИО" character varying(255) NOT NULL,
    "Телефон" character varying(20),
    "Адрес" character varying(255),
    "Дата_рождения" date
);
 *   DROP TABLE public."Сотрудники";
       public         heap    postgres    false            �            1259    42133 4   Сотрудники_Код_сотрудника_seq    SEQUENCE     �   CREATE SEQUENCE public."Сотрудники_Код_сотрудника_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public."Сотрудники_Код_сотрудника_seq";
       public          postgres    false    221                       0    0 4   Сотрудники_Код_сотрудника_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Сотрудники_Код_сотрудника_seq" OWNED BY public."Сотрудники"."Код_сотрудника";
          public          postgres    false    222            �            1259    42134    Товары    TABLE     5  CREATE TABLE public."Товары" (
    "Код_товара" integer,
    "Наименование" character varying(255),
    "Категория" character varying(100),
    "Описание" text,
    "Цена" numeric(10,2),
    "Количество" integer,
    "Изображение" bytea
);
 "   DROP TABLE public."Товары";
       public         heap    postgres    false            �            1259    42139 $   Товары_Код_товара_seq    SEQUENCE     �   CREATE SEQUENCE public."Товары_Код_товара_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Товары_Код_товара_seq";
       public          postgres    false    223                       0    0 $   Товары_Код_товара_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Товары_Код_товара_seq" OWNED BY public."Товары"."Код_товара";
          public          postgres    false    224            d           2604    42143     Заказы Код_заказа    DEFAULT     �   ALTER TABLE ONLY public."Заказы" ALTER COLUMN "Код_заказа" SET DEFAULT nextval('public."Заказы_Код_заказа_seq"'::regclass);
 S   ALTER TABLE public."Заказы" ALTER COLUMN "Код_заказа" DROP DEFAULT;
       public          postgres    false    216    215            f           2604    42144 $   Клиенты Код_клиента    DEFAULT     �   ALTER TABLE ONLY public."Клиенты" ALTER COLUMN "Код_клиента" SET DEFAULT nextval('public."Клиенты_Код_клиента_seq"'::regclass);
 W   ALTER TABLE public."Клиенты" ALTER COLUMN "Код_клиента" DROP DEFAULT;
       public          postgres    false    219    218            g           2604    42145 0   Сотрудники Код_сотрудника    DEFAULT     �   ALTER TABLE ONLY public."Сотрудники" ALTER COLUMN "Код_сотрудника" SET DEFAULT nextval('public."Сотрудники_Код_сотрудника_seq"'::regclass);
 c   ALTER TABLE public."Сотрудники" ALTER COLUMN "Код_сотрудника" DROP DEFAULT;
       public          postgres    false    222    221            h           2604    42146     Товары Код_товара    DEFAULT     �   ALTER TABLE ONLY public."Товары" ALTER COLUMN "Код_товара" SET DEFAULT nextval('public."Товары_Код_товара_seq"'::regclass);
 S   ALTER TABLE public."Товары" ALTER COLUMN "Код_товара" DROP DEFAULT;
       public          postgres    false    224    223                       0    42115    Заказы 
   TABLE DATA           �   COPY public."Заказы" ("Код_заказа", "Номер_заказа", "ФИО_клиента", "Код_товара", "Количество", "Цена", "Общая_цена") FROM stdin;
    public          postgres    false    215   �1                 0    42119    История_заказов 
   TABLE DATA           �   COPY public."История_заказов" ("Код_заказа", "Номер_заказа", "ФИО_клиента", "Статус", "Дата", "Код_товара", "Количество", "Цена", "Общая_цена") FROM stdin;
    public          postgres    false    217   �1                 0    42123    Клиенты 
   TABLE DATA           d   COPY public."Клиенты" ("Код_клиента", "ФИО", "Телеграм_id") FROM stdin;
    public          postgres    false    218   �1                 0    42128    Сотрудники 
   TABLE DATA           �   COPY public."Сотрудники" ("Код_сотрудника", "ФИО", "Телефон", "Адрес", "Дата_рождения") FROM stdin;
    public          postgres    false    221   2                 0    42134    Товары 
   TABLE DATA           �   COPY public."Товары" ("Код_товара", "Наименование", "Категория", "Описание", "Цена", "Количество", "Изображение") FROM stdin;
    public          postgres    false    223   12                  0    0 $   Заказы_Код_заказа_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Заказы_Код_заказа_seq"', 7, true);
          public          postgres    false    216                       0    0 (   Клиенты_Код_клиента_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Клиенты_Код_клиента_seq"', 82, true);
          public          postgres    false    219                       0    0    Номер_клиента_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Номер_клиента_seq"', 3, true);
          public          postgres    false    220                       0    0 4   Сотрудники_Код_сотрудника_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."Сотрудники_Код_сотрудника_seq"', 1, true);
          public          postgres    false    222                       0    0 $   Товары_Код_товара_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Товары_Код_товара_seq"', 7, true);
          public          postgres    false    224            j           2606    42150    Заказы Заказы_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Заказы"
    ADD CONSTRAINT "Заказы_pkey" PRIMARY KEY ("Код_заказа");
 L   ALTER TABLE ONLY public."Заказы" DROP CONSTRAINT "Заказы_pkey";
       public            postgres    false    215            l           2606    42152 @   История_заказов История_заказов_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."История_заказов"
    ADD CONSTRAINT "История_заказов_pkey" PRIMARY KEY ("Код_заказа");
 n   ALTER TABLE ONLY public."История_заказов" DROP CONSTRAINT "История_заказов_pkey";
       public            postgres    false    217            n           2606    42154 "   Клиенты Клиенты_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."Клиенты"
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("Код_клиента");
 P   ALTER TABLE ONLY public."Клиенты" DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    218            p           2606    42156 .   Сотрудники Сотрудники_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудники"
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("Код_сотрудника");
 \   ALTER TABLE ONLY public."Сотрудники" DROP CONSTRAINT "Сотрудники_pkey";
       public            postgres    false    221                   x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     
PGDMP     3                
    u            SISLIC    10.0    10.0 O    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            T           1262    24583    SISLIC    DATABASE     �   CREATE DATABASE "SISLIC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "SISLIC";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            U           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            V           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24636 	   categoria    TABLE     �   CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    nome character varying(45) NOT NULL,
    descricao character varying(65)
);
    DROP TABLE public.categoria;
       public         postgres    false    3            �            1259    24662    categoria_fornecedor    TABLE     �   CREATE TABLE categoria_fornecedor (
    id_catetogia_fornecedor integer NOT NULL,
    id_categoria integer NOT NULL,
    id_fornecedor integer
);
 (   DROP TABLE public.categoria_fornecedor;
       public         postgres    false    3            �            1259    24634    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public       postgres    false    3    205            W           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE categoria_id_categoria_seq OWNED BY categoria.id_categoria;
            public       postgres    false    204            �            1259    24660 0   catetogia_fornecedor_id_catetogia_fornecedor_seq    SEQUENCE     �   CREATE SEQUENCE catetogia_fornecedor_id_catetogia_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.catetogia_fornecedor_id_catetogia_fornecedor_seq;
       public       postgres    false    3    209            X           0    0 0   catetogia_fornecedor_id_catetogia_fornecedor_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE catetogia_fornecedor_id_catetogia_fornecedor_seq OWNED BY categoria_fornecedor.id_catetogia_fornecedor;
            public       postgres    false    208            �            1259    24586 
   fornecedor    TABLE     5  CREATE TABLE fornecedor (
    id_fornecedor integer NOT NULL,
    razao_social character varying(50) NOT NULL,
    telefone character varying(20),
    pontuacao integer,
    login character varying(30) NOT NULL,
    senha character varying NOT NULL,
    cnpj character varying,
    email character varying
);
    DROP TABLE public.fornecedor;
       public         postgres    false    3            �            1259    24584    fornecedor_id_fornecedor_seq    SEQUENCE     �   CREATE SEQUENCE fornecedor_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.fornecedor_id_fornecedor_seq;
       public       postgres    false    197    3            Y           0    0    fornecedor_id_fornecedor_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE fornecedor_id_fornecedor_seq OWNED BY fornecedor.id_fornecedor;
            public       postgres    false    196            �            1259    24594    funcionario    TABLE     �   CREATE TABLE funcionario (
    id_funcionario integer NOT NULL,
    nome character varying(45) NOT NULL,
    telefone character varying(45),
    cargo character varying(45) NOT NULL
);
    DROP TABLE public.funcionario;
       public         postgres    false    3            �            1259    24592    funcionario_id_funcionario_seq    SEQUENCE     �   CREATE SEQUENCE funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_id_funcionario_seq;
       public       postgres    false    3    199            Z           0    0    funcionario_id_funcionario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE funcionario_id_funcionario_seq OWNED BY funcionario.id_funcionario;
            public       postgres    false    198            �            1259    24644    item_pedido    TABLE     �   CREATE TABLE item_pedido (
    id_item_pedido integer NOT NULL,
    quantidade integer,
    preco_unitario double precision,
    id_produto integer NOT NULL,
    id_pedido integer NOT NULL
);
    DROP TABLE public.item_pedido;
       public         postgres    false    3            �            1259    24642    item_pedido_id_item_pedido_seq    SEQUENCE     �   CREATE SEQUENCE item_pedido_id_item_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.item_pedido_id_item_pedido_seq;
       public       postgres    false    207    3            [           0    0    item_pedido_id_item_pedido_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE item_pedido_id_item_pedido_seq OWNED BY item_pedido.id_item_pedido;
            public       postgres    false    206            �            1259    24680    lance    TABLE     �   CREATE TABLE lance (
    id_lance integer NOT NULL,
    valor_total double precision NOT NULL,
    id_pedido integer NOT NULL,
    id_fornecedor integer NOT NULL,
    data date
);
    DROP TABLE public.lance;
       public         postgres    false    3            �            1259    24678    lance_id_lance_seq    SEQUENCE     �   CREATE SEQUENCE lance_id_lance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.lance_id_lance_seq;
       public       postgres    false    3    211            \           0    0    lance_id_lance_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE lance_id_lance_seq OWNED BY lance.id_lance;
            public       postgres    false    210            �            1259    24698    log_penalidade    TABLE     5  CREATE TABLE log_penalidade (
    id_log_pontuacao integer NOT NULL,
    id_fornecedor integer NOT NULL,
    id_funcionario integer NOT NULL,
    descricao character varying(45),
    valor integer,
    motivo character varying,
    id_pedido integer,
    data_penal date,
    nome_pedido character varying
);
 "   DROP TABLE public.log_penalidade;
       public         postgres    false    3            �            1259    24696 #   log_penalidade_id_log_pontuacao_seq    SEQUENCE     �   CREATE SEQUENCE log_penalidade_id_log_pontuacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.log_penalidade_id_log_pontuacao_seq;
       public       postgres    false    3    213            ]           0    0 #   log_penalidade_id_log_pontuacao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE log_penalidade_id_log_pontuacao_seq OWNED BY log_penalidade.id_log_pontuacao;
            public       postgres    false    212            �            1259    24602    pedido    TABLE     �   CREATE TABLE pedido (
    id_pedido integer NOT NULL,
    data_lancamento date NOT NULL,
    data_limite date NOT NULL,
    id_funcionario integer,
    nome character varying,
    descricao character varying
);
    DROP TABLE public.pedido;
       public         postgres    false    3            �            1259    24600    pedido_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedido_id_pedido_seq;
       public       postgres    false    201    3            ^           0    0    pedido_id_pedido_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pedido_id_pedido_seq OWNED BY pedido.id_pedido;
            public       postgres    false    200            �            1259    24623    produto    TABLE     �   CREATE TABLE produto (
    id_produto integer NOT NULL,
    nome character varying(45) NOT NULL,
    descricao character varying(45),
    id_categoria integer
);
    DROP TABLE public.produto;
       public         postgres    false    3            �            1259    24621    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_id_produto_seq;
       public       postgres    false    3    203            _           0    0    produto_id_produto_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE produto_id_produto_seq OWNED BY produto.id_produto;
            public       postgres    false    202            �
           2604    24639    categoria id_categoria    DEFAULT     r   ALTER TABLE ONLY categoria ALTER COLUMN id_categoria SET DEFAULT nextval('categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    24665 ,   categoria_fornecedor id_catetogia_fornecedor    DEFAULT     �   ALTER TABLE ONLY categoria_fornecedor ALTER COLUMN id_catetogia_fornecedor SET DEFAULT nextval('catetogia_fornecedor_id_catetogia_fornecedor_seq'::regclass);
 [   ALTER TABLE public.categoria_fornecedor ALTER COLUMN id_catetogia_fornecedor DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    24589    fornecedor id_fornecedor    DEFAULT     v   ALTER TABLE ONLY fornecedor ALTER COLUMN id_fornecedor SET DEFAULT nextval('fornecedor_id_fornecedor_seq'::regclass);
 G   ALTER TABLE public.fornecedor ALTER COLUMN id_fornecedor DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    24597    funcionario id_funcionario    DEFAULT     z   ALTER TABLE ONLY funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('funcionario_id_funcionario_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN id_funcionario DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    24647    item_pedido id_item_pedido    DEFAULT     z   ALTER TABLE ONLY item_pedido ALTER COLUMN id_item_pedido SET DEFAULT nextval('item_pedido_id_item_pedido_seq'::regclass);
 I   ALTER TABLE public.item_pedido ALTER COLUMN id_item_pedido DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    24683    lance id_lance    DEFAULT     b   ALTER TABLE ONLY lance ALTER COLUMN id_lance SET DEFAULT nextval('lance_id_lance_seq'::regclass);
 =   ALTER TABLE public.lance ALTER COLUMN id_lance DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    24701    log_penalidade id_log_pontuacao    DEFAULT     �   ALTER TABLE ONLY log_penalidade ALTER COLUMN id_log_pontuacao SET DEFAULT nextval('log_penalidade_id_log_pontuacao_seq'::regclass);
 N   ALTER TABLE public.log_penalidade ALTER COLUMN id_log_pontuacao DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    24605    pedido id_pedido    DEFAULT     f   ALTER TABLE ONLY pedido ALTER COLUMN id_pedido SET DEFAULT nextval('pedido_id_pedido_seq'::regclass);
 ?   ALTER TABLE public.pedido ALTER COLUMN id_pedido DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    24626    produto id_produto    DEFAULT     j   ALTER TABLE ONLY produto ALTER COLUMN id_produto SET DEFAULT nextval('produto_id_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN id_produto DROP DEFAULT;
       public       postgres    false    202    203    203            G          0    24636 	   categoria 
   TABLE DATA               ;   COPY categoria (id_categoria, nome, descricao) FROM stdin;
    public       postgres    false    205   �[       K          0    24662    categoria_fornecedor 
   TABLE DATA               ]   COPY categoria_fornecedor (id_catetogia_fornecedor, id_categoria, id_fornecedor) FROM stdin;
    public       postgres    false    209   n\       ?          0    24586 
   fornecedor 
   TABLE DATA               j   COPY fornecedor (id_fornecedor, razao_social, telefone, pontuacao, login, senha, cnpj, email) FROM stdin;
    public       postgres    false    197   �\       A          0    24594    funcionario 
   TABLE DATA               E   COPY funcionario (id_funcionario, nome, telefone, cargo) FROM stdin;
    public       postgres    false    199   �\       I          0    24644    item_pedido 
   TABLE DATA               a   COPY item_pedido (id_item_pedido, quantidade, preco_unitario, id_produto, id_pedido) FROM stdin;
    public       postgres    false    207   :]       M          0    24680    lance 
   TABLE DATA               O   COPY lance (id_lance, valor_total, id_pedido, id_fornecedor, data) FROM stdin;
    public       postgres    false    211   �]       O          0    24698    log_penalidade 
   TABLE DATA               �   COPY log_penalidade (id_log_pontuacao, id_fornecedor, id_funcionario, descricao, valor, motivo, id_pedido, data_penal, nome_pedido) FROM stdin;
    public       postgres    false    213   �]       C          0    24602    pedido 
   TABLE DATA               c   COPY pedido (id_pedido, data_lancamento, data_limite, id_funcionario, nome, descricao) FROM stdin;
    public       postgres    false    201   &^       E          0    24623    produto 
   TABLE DATA               E   COPY produto (id_produto, nome, descricao, id_categoria) FROM stdin;
    public       postgres    false    203   �^       `           0    0    categoria_id_categoria_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('categoria_id_categoria_seq', 6, true);
            public       postgres    false    204            a           0    0 0   catetogia_fornecedor_id_catetogia_fornecedor_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('catetogia_fornecedor_id_catetogia_fornecedor_seq', 20, true);
            public       postgres    false    208            b           0    0    fornecedor_id_fornecedor_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('fornecedor_id_fornecedor_seq', 1, true);
            public       postgres    false    196            c           0    0    funcionario_id_funcionario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('funcionario_id_funcionario_seq', 2, true);
            public       postgres    false    198            d           0    0    item_pedido_id_item_pedido_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('item_pedido_id_item_pedido_seq', 12, true);
            public       postgres    false    206            e           0    0    lance_id_lance_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('lance_id_lance_seq', 1, false);
            public       postgres    false    210            f           0    0 #   log_penalidade_id_log_pontuacao_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('log_penalidade_id_log_pontuacao_seq', 2, true);
            public       postgres    false    212            g           0    0    pedido_id_pedido_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('pedido_id_pedido_seq', 5, true);
            public       postgres    false    200            h           0    0    produto_id_produto_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('produto_id_produto_seq', 4, true);
            public       postgres    false    202            �
           2606    24641    categoria categoria_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public         postgres    false    205            �
           2606    24667 .   categoria_fornecedor catetogia_fornecedor_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY categoria_fornecedor
    ADD CONSTRAINT catetogia_fornecedor_pkey PRIMARY KEY (id_catetogia_fornecedor);
 X   ALTER TABLE ONLY public.categoria_fornecedor DROP CONSTRAINT catetogia_fornecedor_pkey;
       public         postgres    false    209            �
           2606    24591    fornecedor fornecedor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public         postgres    false    197            �
           2606    24599    funcionario funcionario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public         postgres    false    199            �
           2606    24649    item_pedido item_pedido_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY item_pedido
    ADD CONSTRAINT item_pedido_pkey PRIMARY KEY (id_item_pedido);
 F   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT item_pedido_pkey;
       public         postgres    false    207            �
           2606    24685    lance lance_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY lance
    ADD CONSTRAINT lance_pkey PRIMARY KEY (id_lance);
 :   ALTER TABLE ONLY public.lance DROP CONSTRAINT lance_pkey;
       public         postgres    false    211            �
           2606    24703 "   log_penalidade log_penalidade_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY log_penalidade
    ADD CONSTRAINT log_penalidade_pkey PRIMARY KEY (id_log_pontuacao);
 L   ALTER TABLE ONLY public.log_penalidade DROP CONSTRAINT log_penalidade_pkey;
       public         postgres    false    213            �
           2606    24607    pedido pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public         postgres    false    201            �
           2606    24628    produto produto_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         postgres    false    203            �
           2606    24655 !   item_pedido fk_itemPedido_pedido1    FK CONSTRAINT     ~   ALTER TABLE ONLY item_pedido
    ADD CONSTRAINT "fk_itemPedido_pedido1" FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);
 M   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT "fk_itemPedido_pedido1";
       public       postgres    false    2735    207    201            �
           2606    24668 !   categoria_fornecedor id_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY categoria_fornecedor
    ADD CONSTRAINT id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
 K   ALTER TABLE ONLY public.categoria_fornecedor DROP CONSTRAINT id_categoria;
       public       postgres    false    209    2739    205            �
           2606    24673 "   categoria_fornecedor id_fornecedor    FK CONSTRAINT     �   ALTER TABLE ONLY categoria_fornecedor
    ADD CONSTRAINT id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor);
 L   ALTER TABLE ONLY public.categoria_fornecedor DROP CONSTRAINT id_fornecedor;
       public       postgres    false    2731    197    209            �
           2606    24691    lance id_fornecedor    FK CONSTRAINT     z   ALTER TABLE ONLY lance
    ADD CONSTRAINT id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor);
 =   ALTER TABLE ONLY public.lance DROP CONSTRAINT id_fornecedor;
       public       postgres    false    211    2731    197            �
           2606    24704    log_penalidade id_fornecedor    FK CONSTRAINT     �   ALTER TABLE ONLY log_penalidade
    ADD CONSTRAINT id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor);
 F   ALTER TABLE ONLY public.log_penalidade DROP CONSTRAINT id_fornecedor;
       public       postgres    false    197    213    2731            �
           2606    24608    pedido id_funcionario    FK CONSTRAINT        ALTER TABLE ONLY pedido
    ADD CONSTRAINT id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario);
 ?   ALTER TABLE ONLY public.pedido DROP CONSTRAINT id_funcionario;
       public       postgres    false    199    201    2733            �
           2606    24709    log_penalidade id_funcionario    FK CONSTRAINT     �   ALTER TABLE ONLY log_penalidade
    ADD CONSTRAINT id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario);
 G   ALTER TABLE ONLY public.log_penalidade DROP CONSTRAINT id_funcionario;
       public       postgres    false    199    213    2733            �
           2606    24686    lance id_pedido    FK CONSTRAINT     j   ALTER TABLE ONLY lance
    ADD CONSTRAINT id_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);
 9   ALTER TABLE ONLY public.lance DROP CONSTRAINT id_pedido;
       public       postgres    false    211    2735    201            �
           2606    24650    item_pedido id_produto    FK CONSTRAINT     t   ALTER TABLE ONLY item_pedido
    ADD CONSTRAINT id_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto);
 @   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT id_produto;
       public       postgres    false    2737    203    207            G   �   x�M�=
1��S� ��]�baa�v6c2��@&�;y/f�׼ޏ�w-����Du�݊�[G]�L�����Z4KP�%��Idu\Np��~���RoHl���(?�p�G�������|����!i�^�G?y�n�u�<      K      x�34�4�4�22�4R1z\\\ wx      ?   B   x�3�J�K��U�)II䴴��460��44�L�/M�I,�442�4� ��Cznbf�^r~.W� ���      A   A   x�3���/N崴4�42�0��LO-J�+I�2B�H,����L,RHL����,.)J,�,������ �J�      I   F   x�=���0��0nPva�9p��ߝ|r@�0��B��	�9xo^�s8��=
�E�-���wm)�����H      M      x������ � �      O   i   x�3�4�Ē���|��D�Լ����DN#,��@aCs]CC]�t��Xs�Bn~iq�BaijRQ~�B�BQ~Jf^ؐ��̊D�TbNfJbJ*�S�`}�\1z\\\ �"&�      C   �   x����
�0���)�"I�h���b[ikq	�B�h||�"89	7|w��&��-�Iq�`JQ�佛��p��<�n��iFM��N��y9��u�bqFP!�R�LC�U���x��n~J��k�� ��rAY$�����G����;��EC�+J��D�      E   p   x�3�����,�/��
)�
FF
�9��)��:
)�
��Eɉ@��NC.���\/'N���
��B1D@!9#�(=U��Ә�h`iq*��h5�2�,IM�ILɇ�0�=... B�*�     
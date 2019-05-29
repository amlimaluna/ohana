CREATE TABLE public.usuario (
    email character varying NOT NULL,
    nome character varying NOT NULL,
    senha character varying NOT NULL,
    core integer
);

CREATE TABLE public.administrador (
    login character varying NOT NULL,
    nome character varying NOT NULL,
    senha character varying NOT NULL
);

CREATE TABLE public.doacao (
id integer NOT NULL,
usuario_email character varying NOT NULL,
agendar date NOT NULL
);

CREATE TABLE public.item (
id integer NOT NULL,
descricao character varying NOT NULL,
categoria_id integer NOT NULL
);

CREATE TABLE public.instituicao (
id integer NOT NULL,
nome character varying NOT NULL,
endereco character varying NOT NULL
);

CREATE TABLE public.categoria(
id integer NOT NULL,
descricao character varying NOT NULL
);

CREATE TABLE public.doacao_item (
doacao_id integer NOT NULL,
item_id integer NOT NULL,
quantidade integer NOT NULL
);



CREATE SEQUENCE public.categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE public.item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE public.doacao_id_seq
	START WITH 1
	INCREMENT BY 1
	NO MINVALUE
	NO MAXVALUE
	CACHE 1;



ALTER TABLE public.categoria_id_seq OWNER TO postgres;
ALTER TABLE public.item_id_seq OWNER TO postgres;
ALTER TABLE public.doacao_id_seq OWNER TO postgres;

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
ALTER SEQUENCE public.doacao_id_seq OWNED BY public.doacao.id;


ALTER TABLE public.usuario OWNER TO postgres;
ALTER TABLE public.administrador OWNER TO postgres;
ALTER TABLE public.doacao OWNER TO postgres;
ALTER TABLE public.item OWNER TO postgres;
ALTER TABLE public.instituicao OWNER TO postgres;
ALTER TABLE public.categoria OWNER TO postgres;


ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
ALTER TABLE ONLY public.doacao ALTER COLUMN id SET DEFAULT nextval('public.doacao_id_seq'::regclass);


CREATE INDEX fki_item_categoria_id_fk ON public.item USING btree (categoria_id);

CREATE INDEX fki_doacao_usuario_email_fk ON public.doacao USING btree (usuario_email);



ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (email);

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pk PRIMARY KEY (login);

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.doacao
    ADD CONSTRAINT doacao_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY (id);

ALTER TABLE ONLY public.doacao_item
    ADD CONSTRAINT doacao_item_pk PRIMARY KEY (doacao_id,item_id);


ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_categoria_id_fk FOREIGN KEY (categoria_id) REFERENCES public.categoria(id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.doacao
    ADD CONSTRAINT doacao_usuario_email_fk FOREIGN KEY (usuario_email) REFERENCES public.usuario(email) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.doacao_item
    ADD CONSTRAINT doacao_item_item_id_fk FOREIGN KEY (item_id) REFERENCES public.item(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
-- Completed on 2018-09-18 19:45:14

ALTER TABLE ONLY public.doacao_item
    ADD CONSTRAINT doacao_item_doacao_id_fk FOREIGN KEY (doacao_id) REFERENCES public.doacao(id) ON UPDATE RESTRICT ON DELETE RESTRICT;

--
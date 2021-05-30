CREATE TABLE productos (
    id      INTEGER NOT NULL,
    nombre  VARCHAR2(50) NOT NULL,
    precio  NUMBER(6, 2) NOT NULL,
    stock   INTEGER NOT NULL
)
TABLESPACE MY_STORE;

ALTER TABLE productos ADD CONSTRAINT productos_pk PRIMARY KEY ( id );

CREATE TABLE ventas (
    id      INTEGER NOT NULL,
    codigo  INTEGER NOT NULL,
    fecha   DATE NOT NULL
)
TABLESPACE MY_STORE;

ALTER TABLE ventas ADD CONSTRAINT ventas_pk PRIMARY KEY ( id );

CREATE TABLE ventas_detalle (
    id            INTEGER NOT NULL,
    cantidad      INTEGER,
    productos_id  INTEGER NOT NULL,
    ventas_id     INTEGER NOT NULL
)
TABLESPACE MY_STORE;

ALTER TABLE ventas_detalle ADD CONSTRAINT ventas_detalle_pk PRIMARY KEY ( id );

ALTER TABLE ventas_detalle
    ADD CONSTRAINT ventas_detalle_productos_fk FOREIGN KEY ( productos_id )
        REFERENCES productos ( id );

ALTER TABLE ventas_detalle
    ADD CONSTRAINT ventas_detalle_ventas_fk FOREIGN KEY ( ventas_id )
        REFERENCES ventas ( id );
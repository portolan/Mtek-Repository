/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:24:38                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE MARCAS (
    MARC_CODIGO     INTEGER NOT NULL,
    MARC_DESCRICAO  VARCHAR(60),
    MARC_OBS        VARCHAR(100)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE MARCAS ADD CONSTRAINT PK_MARCAS PRIMARY KEY (MARC_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/


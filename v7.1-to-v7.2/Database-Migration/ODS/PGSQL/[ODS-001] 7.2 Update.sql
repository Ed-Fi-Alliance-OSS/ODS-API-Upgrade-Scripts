-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

BEGIN;

    CREATE TABLE IF NOT EXISTS edfi.busroutedescriptor
    (
        busroutedescriptorid integer NOT NULL,
        CONSTRAINT busroutedescriptor_pk PRIMARY KEY (busroutedescriptorid),
        CONSTRAINT fk_a6f0ea_descriptor FOREIGN KEY (busroutedescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.busroutedescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.transportationpublicexpenseeligibilitytypedescriptor
    (
        transportationpublicexpenseeligibilitytypedescriptorid integer NOT NULL,
        CONSTRAINT transportationpublicexpenseeligibilitytypedescriptor_pk PRIMARY KEY (transportationpublicexpenseeligibilitytypedescriptorid),
        CONSTRAINT fk_10b9e1_descriptor FOREIGN KEY (transportationpublicexpenseeligibilitytypedescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.transportationpublicexpenseeligibilitytypedescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.transportationtypedescriptor
    (
        transportationtypedescriptorid integer NOT NULL,
        CONSTRAINT transportationtypedescriptor_pk PRIMARY KEY (transportationtypedescriptorid),
        CONSTRAINT fk_4a805b_descriptor FOREIGN KEY (transportationtypedescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.transportationtypedescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenttransportation
    (
        studentusi integer NOT NULL,
        transportationeducationorganizationid bigint NOT NULL,
        specialaccomodationrequirements character varying(1024) COLLATE pg_catalog."default",
        transportationpublicexpenseeligibilitytypedescriptorid integer,
        transportationtypedescriptorid integer,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        lastmodifieddate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        CONSTRAINT studenttransportation_pk PRIMARY KEY (studentusi, transportationeducationorganizationid),
        CONSTRAINT fk_68afad_educationorganization FOREIGN KEY (transportationeducationorganizationid)
            REFERENCES edfi.educationorganization (educationorganizationid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_68afad_student FOREIGN KEY (studentusi)
            REFERENCES edfi.student (studentusi) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_68afad_transportationpublicexpenseeligibilitytypedescriptor FOREIGN KEY (transportationpublicexpenseeligibilitytypedescriptorid)
            REFERENCES edfi.transportationpublicexpenseeligibilitytypedescriptor (transportationpublicexpenseeligibilitytypedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_68afad_transportationtypedescriptor FOREIGN KEY (transportationtypedescriptorid)
            REFERENCES edfi.transportationtypedescriptor (transportationtypedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenttransportation
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_68afad_educationorganization
        ON edfi.studenttransportation USING btree
        (transportationeducationorganizationid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS fk_68afad_student
        ON edfi.studenttransportation USING btree
        (studentusi ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS fk_68afad_transportationpublicexpenseeligibilitytypedescriptor
        ON edfi.studenttransportation USING btree
        (transportationpublicexpenseeligibilitytypedescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS fk_68afad_transportationtypedescriptor
        ON edfi.studenttransportation USING btree
        (transportationtypedescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE UNIQUE INDEX IF NOT EXISTS ux_68afad_id
        ON edfi.studenttransportation USING btree
        (id ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.studenttransportationstudentbusdetails
    (
        studentusi integer NOT NULL,
        transportationeducationorganizationid bigint NOT NULL,
        busnumber character varying(36) COLLATE pg_catalog."default" NOT NULL,
        busroutedescriptorid integer NOT NULL,
        mileage numeric(5,2),
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenttransportationstudentbusdetails_pk PRIMARY KEY (studentusi, transportationeducationorganizationid),
        CONSTRAINT fk_192a22_busroutedescriptor FOREIGN KEY (busroutedescriptorid)
            REFERENCES edfi.busroutedescriptor (busroutedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_192a22_studenttransportation FOREIGN KEY (studentusi, transportationeducationorganizationid)
            REFERENCES edfi.studenttransportation (studentusi, transportationeducationorganizationid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenttransportationstudentbusdetails
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_192a22_busroutedescriptor
        ON edfi.studenttransportationstudentbusdetails USING btree
        (busroutedescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.traveldayofweekdescriptor
    (
        traveldayofweekdescriptorid integer NOT NULL,
        CONSTRAINT traveldayofweekdescriptor_pk PRIMARY KEY (traveldayofweekdescriptorid),
        CONSTRAINT fk_e4eb2b_descriptor FOREIGN KEY (traveldayofweekdescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.traveldayofweekdescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenttransportationstudentbusdetailstraveldayofweek
    (
        studentusi integer NOT NULL,
        transportationeducationorganizationid bigint NOT NULL,
        traveldayofweekdescriptorid integer NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenttransportationstudentbusdetailstraveldayofweek_pk PRIMARY KEY (studentusi, transportationeducationorganizationid, traveldayofweekdescriptorid),
        CONSTRAINT fk_c175dc_studenttransportationstudentbusdetails FOREIGN KEY (studentusi, transportationeducationorganizationid)
            REFERENCES edfi.studenttransportationstudentbusdetails (studentusi, transportationeducationorganizationid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE,
        CONSTRAINT fk_c175dc_traveldayofweekdescriptor FOREIGN KEY (traveldayofweekdescriptorid)
            REFERENCES edfi.traveldayofweekdescriptor (traveldayofweekdescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenttransportationstudentbusdetailstraveldayofweek
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_c175dc_traveldayofweekdescriptor
        ON edfi.studenttransportationstudentbusdetailstraveldayofweek USING btree
        (traveldayofweekdescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.nonmedicalimmunizationexemptiondescriptor
    (
        nonmedicalimmunizationexemptiondescriptorid integer NOT NULL,
        CONSTRAINT nonmedicalimmunizationexemptiondescriptor_pk PRIMARY KEY (nonmedicalimmunizationexemptiondescriptorid),
        CONSTRAINT fk_690b5f_descriptor FOREIGN KEY (nonmedicalimmunizationexemptiondescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.nonmedicalimmunizationexemptiondescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.traveldirectiondescriptor
    (
        traveldirectiondescriptorid integer NOT NULL,
        CONSTRAINT traveldirectiondescriptor_pk PRIMARY KEY (traveldirectiondescriptorid),
        CONSTRAINT fk_6a3bc0_descriptor FOREIGN KEY (traveldirectiondescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.traveldirectiondescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenttransportationstudentbusdetailstraveldirection
    (
        studentusi integer NOT NULL,
        transportationeducationorganizationid bigint NOT NULL,
        traveldirectiondescriptorid integer NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenttransportationstudentbusdetailstraveldirection_pk PRIMARY KEY (studentusi, transportationeducationorganizationid, traveldirectiondescriptorid),
        CONSTRAINT fk_e21270_studenttransportationstudentbusdetails FOREIGN KEY (studentusi, transportationeducationorganizationid)
            REFERENCES edfi.studenttransportationstudentbusdetails (studentusi, transportationeducationorganizationid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE,
        CONSTRAINT fk_e21270_traveldirectiondescriptor FOREIGN KEY (traveldirectiondescriptorid)
            REFERENCES edfi.traveldirectiondescriptor (traveldirectiondescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenttransportationstudentbusdetailstraveldirection
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_e21270_traveldirectiondescriptor
        ON edfi.studenttransportationstudentbusdetailstraveldirection USING btree
        (traveldirectiondescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.displacedstudentstatusdescriptor
    (
        displacedstudentstatusdescriptorid integer NOT NULL,
        CONSTRAINT displacedstudentstatusdescriptor_pk PRIMARY KEY (displacedstudentstatusdescriptorid),
        CONSTRAINT fk_fa1717_descriptor FOREIGN KEY (displacedstudentstatusdescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.displacedstudentstatusdescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.immunizationtypedescriptor
    (
        immunizationtypedescriptorid integer NOT NULL,
        CONSTRAINT immunizationtypedescriptor_pk PRIMARY KEY (immunizationtypedescriptorid),
        CONSTRAINT fk_5a441e_descriptor FOREIGN KEY (immunizationtypedescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.immunizationtypedescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenthealth
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        asofdate date NOT NULL,
        nonmedicalimmunizationexemptiondate date,
        nonmedicalimmunizationexemptiondescriptorid integer,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        lastmodifieddate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        CONSTRAINT studenthealth_pk PRIMARY KEY (educationorganizationid, studentusi),
        CONSTRAINT fk_12f7e6_educationorganization FOREIGN KEY (educationorganizationid)
            REFERENCES edfi.educationorganization (educationorganizationid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_12f7e6_nonmedicalimmunizationexemptiondescriptor FOREIGN KEY (nonmedicalimmunizationexemptiondescriptorid)
            REFERENCES edfi.nonmedicalimmunizationexemptiondescriptor (nonmedicalimmunizationexemptiondescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_12f7e6_student FOREIGN KEY (studentusi)
            REFERENCES edfi.student (studentusi) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenthealth
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_12f7e6_nonmedicalimmunizationexemptiondescriptor
        ON edfi.studenthealth USING btree
        (nonmedicalimmunizationexemptiondescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS fk_12f7e6_student
        ON edfi.studenthealth USING btree
        (studentusi ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS ix_studenthealth_educationorganizationid
        ON edfi.studenthealth USING btree
        (educationorganizationid ASC NULLS LAST)
        INCLUDE(id)
        TABLESPACE pg_default;

    CREATE UNIQUE INDEX IF NOT EXISTS ux_12f7e6_id
        ON edfi.studenthealth USING btree
        (id ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.studenthealthrequiredimmunization
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        immunizationtypedescriptorid integer NOT NULL,
        medicalexemption character varying(1024) COLLATE pg_catalog."default",
        medicalexemptiondate date,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenthealthrequiredimmunization_pk PRIMARY KEY (educationorganizationid, studentusi, immunizationtypedescriptorid),
        CONSTRAINT fk_a6b792_immunizationtypedescriptor FOREIGN KEY (immunizationtypedescriptorid)
            REFERENCES edfi.immunizationtypedescriptor (immunizationtypedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_a6b792_studenthealth FOREIGN KEY (educationorganizationid, studentusi)
            REFERENCES edfi.studenthealth (educationorganizationid, studentusi) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenthealthrequiredimmunization
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_a6b792_immunizationtypedescriptor
        ON edfi.studenthealthrequiredimmunization USING btree
        (immunizationtypedescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.studenthealthrequiredimmunizationdate
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        immunizationtypedescriptorid integer NOT NULL,
        immunizationdate date NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenthealthrequiredimmunizationdate_pk PRIMARY KEY (educationorganizationid, studentusi, immunizationtypedescriptorid, immunizationdate),
        CONSTRAINT fk_1fb50c_studenthealthrequiredimmunization FOREIGN KEY (educationorganizationid, studentusi, immunizationtypedescriptorid)
            REFERENCES edfi.studenthealthrequiredimmunization (educationorganizationid, studentusi, immunizationtypedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenthealthrequiredimmunizationdate
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenthealthadditionalimmunization
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        immunizationname character varying(100) COLLATE pg_catalog."default" NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenthealthadditionalimmunization_pk PRIMARY KEY (educationorganizationid, studentusi, immunizationname),
        CONSTRAINT fk_e7bdaa_studenthealth FOREIGN KEY (educationorganizationid, studentusi)
            REFERENCES edfi.studenthealth (educationorganizationid, studentusi) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenthealthadditionalimmunization
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.studenthealthadditionalimmunizationdate
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        immunizationname character varying(100) COLLATE pg_catalog."default" NOT NULL,
        immunizationdate date NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenthealthadditionalimmunizationdate_pk PRIMARY KEY (educationorganizationid, studentusi, immunizationname, immunizationdate),
        CONSTRAINT fk_8355b1_studenthealthadditionalimmunization FOREIGN KEY (educationorganizationid, studentusi, immunizationname)
            REFERENCES edfi.studenthealthadditionalimmunization (educationorganizationid, studentusi, immunizationname) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenthealthadditionalimmunizationdate
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.crisistypedescriptor
    (
        crisistypedescriptorid integer NOT NULL,
        CONSTRAINT crisistypedescriptor_pk PRIMARY KEY (crisistypedescriptorid),
        CONSTRAINT fk_391527_descriptor FOREIGN KEY (crisistypedescriptorid)
            REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.crisistypedescriptor
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS edfi.crisisevent
    (
        crisiseventname character varying(100) COLLATE pg_catalog."default" NOT NULL,
        crisisdescription character varying(1024) COLLATE pg_catalog."default",
        crisisenddate date,
        crisisstartdate date,
        crisistypedescriptorid integer NOT NULL,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        lastmodifieddate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        CONSTRAINT crisisevent_pk PRIMARY KEY (crisiseventname),
        CONSTRAINT fk_f1bbb4_crisistypedescriptor FOREIGN KEY (crisistypedescriptorid)
            REFERENCES edfi.crisistypedescriptor (crisistypedescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.crisisevent
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_f1bbb4_crisistypedescriptor
        ON edfi.crisisevent USING btree
        (crisistypedescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE UNIQUE INDEX IF NOT EXISTS ux_f1bbb4_id
        ON edfi.crisisevent USING btree
        (id ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS edfi.studenteducationorganizationassociationdisplacedstudent
    (
        educationorganizationid bigint NOT NULL,
        studentusi integer NOT NULL,
        crisiseventname character varying(100) COLLATE pg_catalog."default" NOT NULL,
        crisishomelessnessindicator boolean,
        displacedstudentenddate date,
        displacedstudentstartdate date,
        displacedstudentstatusdescriptorid integer NOT NULL,
        createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT studenteducationorganizationassociationdisplacedstudent_pk PRIMARY KEY (educationorganizationid, studentusi, crisiseventname),
        CONSTRAINT fk_7b1764_crisisevent FOREIGN KEY (crisiseventname)
            REFERENCES edfi.crisisevent (crisiseventname) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_7b1764_displacedstudentstatusdescriptor FOREIGN KEY (displacedstudentstatusdescriptorid)
            REFERENCES edfi.displacedstudentstatusdescriptor (displacedstudentstatusdescriptorid) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT fk_7b1764_studenteducationorganizationassociation FOREIGN KEY (educationorganizationid, studentusi)
            REFERENCES edfi.studenteducationorganizationassociation (educationorganizationid, studentusi) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE CASCADE
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS edfi.studenteducationorganizationassociationdisplacedstudent
        OWNER to postgres;

    CREATE INDEX IF NOT EXISTS fk_7b1764_crisisevent
        ON edfi.studenteducationorganizationassociationdisplacedstudent USING btree
        (crisiseventname COLLATE pg_catalog."default" ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE INDEX IF NOT EXISTS fk_7b1764_displacedstudentstatusdescriptor
        ON edfi.studenteducationorganizationassociationdisplacedstudent USING btree
        (displacedstudentstatusdescriptorid ASC NULLS LAST)
        TABLESPACE pg_default;

    COMMENT ON TABLE edfi.studenthealthadditionalimmunizationdate
        IS 'The year, month and day of the related additional immunization.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunizationdate.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunizationdate.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunizationdate.immunizationname
        IS 'The name of the immunization that the student has received.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunizationdate.immunizationdate
        IS 'The year, month and day of the related additional immunization.';
    COMMENT ON TABLE edfi.studenthealthadditionalimmunization
        IS 'A record of additional immunizations satisfactorily received and reported.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunization.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunization.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenthealthadditionalimmunization.immunizationname
        IS 'The name of the immunization that the student has received.';
    COMMENT ON TABLE edfi.studenthealthrequiredimmunizationdate
        IS 'The year, month and day of the related required immunization.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunizationdate.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunizationdate.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunizationdate.immunizationtypedescriptorid
        IS 'An indication of the type of immunization that the student has received.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunizationdate.immunizationdate
        IS 'The year, month and day of the related required immunization.';
    COMMENT ON TABLE edfi.studenthealthrequiredimmunization
        IS 'A record of the immunizations satisfactorily  received for those recommended to protect the student against vaccine-preventable diseases.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunization.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunization.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunization.immunizationtypedescriptorid
        IS 'An indication of the type of immunization that the student has received.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunization.medicalexemption
        IS 'The medical condition identified by a physician that contraindicates the vaccine.';
    COMMENT ON COLUMN edfi.studenthealthrequiredimmunization.medicalexemptiondate
        IS 'The year, month, and day of the medical exemption by a physician.';
    COMMENT ON TABLE edfi.studenthealth
        IS 'This entity stores the student health records.';
    COMMENT ON COLUMN edfi.studenthealth.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenthealth.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenthealth.asofdate
        IS 'Date of last update of the student''s health record.';
    COMMENT ON COLUMN edfi.studenthealth.nonmedicalimmunizationexemptiondate
        IS 'The year, month and day of the nonmedical exemption from vaccination claimed by the student''s parent or guardian.';
    COMMENT ON COLUMN edfi.studenthealth.nonmedicalimmunizationexemptiondescriptorid
        IS 'The type of nonmedical exemption from vaccination claimed by the student''s parent or guardian.';
    COMMENT ON TABLE edfi.immunizationtypedescriptor
        IS 'An indication of the type of immunization that an individual has satisfactorily received.';
    COMMENT ON COLUMN edfi.immunizationtypedescriptor.immunizationtypedescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.displacedstudentstatusdescriptor
        IS 'Indicates whether a student has been displaced as a result of a crisis event.';
    COMMENT ON COLUMN edfi.displacedstudentstatusdescriptor.displacedstudentstatusdescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.studenttransportationstudentbusdetailstraveldirection
        IS 'Indicates the direction of travel for the student transportation route (e.g., to school, from school).';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldirection.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldirection.transportationeducationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldirection.traveldirectiondescriptorid
        IS 'Indicates the direction of travel for the student transportation route (e.g., to school, from school).';
    COMMENT ON TABLE edfi.traveldirectiondescriptor
        IS 'Indicates the direction of travel for the student transportation route (e.g., to school, from school).';
    COMMENT ON COLUMN edfi.traveldirectiondescriptor.traveldirectiondescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.nonmedicalimmunizationexemptiondescriptor
        IS 'The type of nonmedical exemption from vaccination claimed by the student''s parent or guardian.';
    COMMENT ON COLUMN edfi.nonmedicalimmunizationexemptiondescriptor.nonmedicalimmunizationexemptiondescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.busroutedescriptor
        IS 'Identifies the specific route taken by a bus for student transportation.';
    COMMENT ON COLUMN edfi.busroutedescriptor.busroutedescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.transportationpublicexpenseeligibilitytypedescriptor
        IS 'The primary type of eligibility for transporting a student at public expense.';
    COMMENT ON COLUMN edfi.transportationpublicexpenseeligibilitytypedescriptor.transportationpublicexpenseeligibilitytypedescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.transportationtypedescriptor
        IS 'The mode or type of transportation utilized by a student to commute to and from school';
    COMMENT ON COLUMN edfi.transportationtypedescriptor.transportationtypedescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.studenttransportation
        IS 'This entity captures a student''s specific transportation arrangement.';
    COMMENT ON COLUMN edfi.studenttransportation.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenttransportation.transportationeducationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenttransportation.specialaccomodationrequirements
        IS 'Specific requirements needed to accommodate a student''s physical needs which may include special equipment installed in a vehicle or a special arrangement for transportation.';
    COMMENT ON COLUMN edfi.studenttransportation.transportationpublicexpenseeligibilitytypedescriptorid
        IS 'The primary type of eligibility for transporting a student at public expense.';
    COMMENT ON COLUMN edfi.studenttransportation.transportationtypedescriptorid
        IS 'The mode or type of transportation utilized by a student to commute to and from school';
    COMMENT ON TABLE edfi.studenttransportationstudentbusdetails
        IS 'Stores details associated with student-bus assignment within a transportation system.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetails.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetails.transportationeducationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetails.busnumber
        IS 'The unique identifier assigned to the bus used for transporting the student.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetails.busroutedescriptorid
        IS 'Identifies the specific route taken by a bus for student transportation.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetails.mileage
        IS 'The distance, typically measured in miles, that a student was transported along the route of the bus during a single trip.';
    COMMENT ON TABLE edfi.traveldayofweekdescriptor
        IS 'Specifies the day(s) of the week on which student transportation occurs.';
    COMMENT ON COLUMN edfi.traveldayofweekdescriptor.traveldayofweekdescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON TABLE edfi.studenttransportationstudentbusdetailstraveldayofweek
        IS 'Specifies the day(s) of the week on which student transportation occurs.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldayofweek.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldayofweek.transportationeducationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenttransportationstudentbusdetailstraveldayofweek.traveldayofweekdescriptorid
        IS 'Specifies the day(s) of the week on which student transportation occurs.';
    COMMENT ON TABLE edfi.studenteducationorganizationassociationdisplacedstudent
        IS 'Information about student who was enrolled, or eligible for enrollment, but has temporarily or permanently enrolled in another school or district because of a crisis-related disruption in educational services.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.educationorganizationid
        IS 'The identifier assigned to an education organization.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.studentusi
        IS 'A unique alphanumeric code assigned to a student.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.crisiseventname
        IS 'The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.crisishomelessnessindicator
        IS 'Any student considered homeless (defined by the McKinney-Vento Homeless Education Assistance Act as lacking a fixed, regular, and adequate nighttime residence) as a result of the crisis event.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.displacedstudentenddate
        IS 'The date marking the end of the period during which a student is considered displaced due to a crisis event.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.displacedstudentstartdate
        IS 'The date on which a student is officially identified as displaced due to a crisis event.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationdisplacedstudent.displacedstudentstatusdescriptorid
        IS 'Indicates whether a student has been displaced as a result of a crisis event.';
    COMMENT ON TABLE edfi.crisisevent
        IS 'A natural or man-made event that causes the disruption of school-level activities and the temporary or permanent displacement of students.';
    COMMENT ON COLUMN edfi.crisisevent.crisiseventname
        IS 'The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.';
    COMMENT ON COLUMN edfi.crisisevent.crisisdescription
        IS 'Provides a textual description of the crisis event affecting the student. It may include details such as the nature of the crisis (e.g., natural disaster, conflict, medical emergency), its severity, location, and any other relevant information describing the crisis situation.';
    COMMENT ON COLUMN edfi.crisisevent.crisisenddate
        IS 'The date on which the crisis ceased to affect the student.';
    COMMENT ON COLUMN edfi.crisisevent.crisisstartdate
        IS 'The year, month and day on which the crisis affected the student. This date may not be the same as the date the crisis occurred if evacuation orders are implemented in anticipation of a crisis.';
    COMMENT ON COLUMN edfi.crisisevent.crisistypedescriptorid
        IS 'The type or category of crisis.';
    COMMENT ON TABLE edfi.crisistypedescriptor
        IS 'The type or category of crisis.';
    COMMENT ON COLUMN edfi.crisistypedescriptor.crisistypedescriptorid
        IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';
    COMMENT ON COLUMN edfi.organizationdepartment.organizationdepartmentid
        IS 'The unique identification code for the organization department. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.calendardate.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.reportcard.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.school.localeducationagencyid
        IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
    COMMENT ON COLUMN edfi.school.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.calendargradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineincidentbehavior.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.gradelearningstandardgrade.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.courseofferingcourselevelcharacteristic.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffschoolassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineincident.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.schoolcategory.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.location.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentdisciplineincidentnonoffenderassociationdisciplin_4c979a.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentsectionassociationprogram.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffschoolassociationacademicsubject.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineincidentexternalparticipant.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffdisciplineincidentassociationdisciplineincidentpart_7fa4be.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentschoolassociationeducationplan.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.educationorganizationnetwork.educationorganizationnetworkid
        IS 'The identifier assigned to a network of education organizations. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sessionacademicweek.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.reportcardgrade.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.reportcardgrade.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.gradingperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentsectionassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.reportcardstudentcompetencyobjective.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.classperiodmeetingtime.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.assessmentsection.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.stateeducationagencyaccountability.stateeducationagencyid
        IS 'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentassessment.reportedschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentcohortassociationsection.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.survey.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sectionprogram.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentdisciplineincidentbehaviorassociationdisciplinein_ae6a21.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentschoolassociationalternativegraduationplan.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.stateeducationagency.stateeducationagencyid
        IS 'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentdisciplineincidentnonoffenderassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentdisciplineincidentbehaviorassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.postsecondaryevent.postsecondaryinstitutionid
        IS 'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.restrainteventprogram.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagencyaccountability.localeducationagencyid
        IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
    COMMENT ON COLUMN edfi.restraintevent.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.educationservicecenter.educationservicecenterid
        IS 'The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.educationservicecenter.stateeducationagencyid
        IS 'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.section.locationschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.section.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentacademicrecordreportcard.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sectionofferedgradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.restrainteventreason.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineaction.assignmentschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineaction.responsibilityschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';
    COMMENT ON COLUMN edfi.coursetranscriptsection.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.bellscheduledate.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.courseoffering.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentsectionattendanceevent.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.session.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentcompetencyobjective.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffschoolassociationgradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.courseofferingofferedgradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentcompetencyobjectivestudentsectionassociation.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentcompetencyobjectivestudentsectionassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagencyfederalfunds.localeducationagencyid
        IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffeducationorganizationcontactassociationaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';
    COMMENT ON COLUMN edfi.studenteducationorganizationassociationaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';
    COMMENT ON COLUMN edfi.disciplineincidentweapon.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.grade.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.bellschedulegradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.classperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.stateeducationagencyfederalfunds.stateeducationagencyid
        IS 'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.courseofferingcurriculumused.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentcompetencyobjectivegeneralstudentprogramassociation.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.bellschedule.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.educationorganizationnetworkassociation.educationorganizationnetworkid
        IS 'The identifier assigned to a network of education organizations. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.schoolgradelevel.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffsectionassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.bellscheduleclassperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.staffdisciplineincidentassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.communityorganization.communityorganizationid
        IS 'The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sectionattendancetakenevent.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.postsecondaryinstitutionmediumofinstruction.postsecondaryinstitutionid
        IS 'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.surveysectionassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentschoolassociation.nextyearschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentschoolassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.communityproviderlicense.communityproviderid
        IS 'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.academicweek.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sectioncharacteristic.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.studentschoolattendanceevent.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.communityprovider.communityorganizationid
        IS 'The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.communityprovider.communityproviderid
        IS 'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.reportcardgradepointaverage.gradingperiodschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.disciplineactionstudentdisciplineincidentbehaviorassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.calendar.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.postsecondaryinstitution.postsecondaryinstitutionid
        IS 'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagency.educationservicecenterid
        IS 'The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagency.localeducationagencyid
        IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagency.parentlocaleducationagencyid
        IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
    COMMENT ON COLUMN edfi.localeducationagency.stateeducationagencyid
        IS 'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.feederschoolassociation.feederschoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.feederschoolassociation.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.sectioncourselevelcharacteristic.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.gradebookentry.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.calendardatecalendarevent.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.educationorganizationaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';
    COMMENT ON COLUMN edfi.sectionclassperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN edfi.contactaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';
    COMMENT ON COLUMN edfi.sessiongradingperiod.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';

    CREATE OR REPLACE FUNCTION util.getedfistandardversion()
        RETURNS character varying
        LANGUAGE 'plpgsql'
        VOLATILE
        PARALLEL UNSAFE
        COST 100
        
    AS $BODY$
    BEGIN	
    RETURN '5.1';
    END;
    $BODY$;
    CREATE OR REPLACE FUNCTION util.getedfiodsversion()
        RETURNS character varying
        LANGUAGE 'plpgsql'
        VOLATILE
        PARALLEL UNSAFE
        COST 100
        
    AS $BODY$
    BEGIN	
    RETURN '7.2';
    END;
    $BODY$;

END;

BEGIN;

    delete from public."DeployJournal";

    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (1, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0010-Schemas.sql', '2024-05-10 20:49:55.761467');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (2, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0011-Extensions.sql', '2024-05-10 20:49:55.790990');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (3, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0020-Tables.sql', '2024-05-10 20:49:56.535275');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (4, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0030-ForeignKeys.sql', '2024-05-10 20:49:58.141493');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (5, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0040-IdColumnUniqueIndexes.sql', '2024-05-10 20:49:58.222528');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (6, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0050-ExtendedProperties.sql', '2024-05-10 20:49:58.279807');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (7, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1002-AuthViews.sql', '2024-05-10 20:49:58.294327');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (8, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1003-CompositesHierarchicalViews.sql', '2024-05-10 20:49:58.299686');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (9, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1020-Interoperability-Extension.sql', '2024-05-10 20:49:58.310634');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (10, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1021-OperationalContextView.sql', '2024-05-10 20:49:58.314138');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (11, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1022-SetVersion.sql', '2024-05-10 20:49:58.316067');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (12, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1030-AddSessionCascadeSupport.sql', '2024-05-10 20:49:58.322208');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (13, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1031-Create-SetSchoolYear-stored-procedure.sql', '2024-05-10 20:49:58.323380');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (14, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1040-MissingSecurityViews.sql', '2024-05-10 20:49:58.325210');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (15, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1100-AddMoreContextToEducationIdentifiersView.sql', '2024-05-10 20:49:58.329629');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (16, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1100-CorrectCommunityOrganizationAuthViews.sql', '2024-05-10 20:49:58.331726');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (17, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1120-RemoveCompositesHierarchicalViews.sql', '2024-05-10 20:49:58.334015');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (18, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1150-UpdatedAuthViewsToPreventDuplicatesFromStaffEdOrgAssignmentsAndEmployments.sql', '2024-05-10 20:49:58.338593');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (19, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1160-UpdateVersionTo510.sql', '2024-05-10 20:49:58.339499');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (20, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1170-UpdatedAuthViewsToRemoveJoin.sql', '2024-05-10 20:49:58.341378');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (21, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1180-Add-OrgDeptId-to-EdOrgIdentifiers.sql', '2024-05-10 20:49:58.345943');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (22, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1190-UpdateVersionTo520.sql', '2024-05-10 20:49:58.346930');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (23, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1200-AuthViewsSupportOrgDeptId.sql', '2024-05-10 20:49:58.353768');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (24, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1290-RemoveAllUnusedAuthorizationViews.sql', '2024-05-10 20:49:58.360085');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (25, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1300-CreateEdOrgToEdOrgTable.sql', '2024-05-10 20:49:58.362213');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (26, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1302-CreateEdOrgToEdOrgTriggers.sql', '2024-05-10 20:49:58.371593');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (27, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1303-AuthViewEducationOrganizationIdToStudentUSI.sql', '2024-05-10 20:49:58.372961');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (28, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1304-AuthViewEducationOrganizationIdToContactUSI.sql', '2024-05-10 20:49:58.374576');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (29, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1305-AuthViewsEducationOrganizationIdToStaffUSI.sql', '2024-05-10 20:49:58.375930');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (30, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1306-AuthViewEducationOrganizationIdToStudentUSIThroughResponsibility.sql', '2024-05-10 20:49:58.377022');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (31, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1320-UpdateVersionTo53.sql', '2024-05-10 20:49:58.377881');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (32, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1340-UpdateVersionTo60.sql', '2024-05-10 20:49:58.378832');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (33, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1370-AddEducationOrganizationIdToEducationOrganizationIdIndex.sql', '2024-05-10 20:49:58.380367');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (34, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1380-UpdateVersionTo61.sql', '2024-05-10 20:49:58.381201');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (35, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1390-UpdateVersionTo70.sql', '2024-05-10 20:49:58.382103');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (36, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1400-Alter-EducationOrganizationId-to-bigint.sql', '2024-05-10 20:49:58.391028');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (37, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1410-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', '2024-05-10 20:49:58.448792');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (38, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1420-UpdateEdFiStandardVersionTo50.sql', '2024-05-10 20:49:58.449983');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (39, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1430-UpdateVersionTo71.sql', '2024-05-10 20:49:58.450857');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (40, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1440-UpdateEdFiStandardVersionTo51.sql', '2024-05-10 20:49:58.451702');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (41, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1450-UpdateVersionTo72.sql', '2024-05-10 20:49:58.452620');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (42, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Data.Ods.0020-SchoolYears.sql', '2024-05-10 20:49:58.477488');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (43, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Data.Ods.1010-OperationalContexts.sql', '2024-05-10 20:49:58.478527');
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (44, 'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Data.Ods.1040-Set-Default-SchoolYear.sql', '2024-05-10 20:49:58.480110');

    ALTER SEQUENCE public."DeployJournal_schemaversionsid_seq" RESTART WITH 45;
END;
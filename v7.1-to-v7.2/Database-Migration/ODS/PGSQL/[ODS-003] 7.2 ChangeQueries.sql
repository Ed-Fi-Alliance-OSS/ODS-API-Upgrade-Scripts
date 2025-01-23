-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

BEGIN;

    ALTER TABLE edfi.studenthealth ADD COLUMN changeversion bigint NOT NULL DEFAULT nextval('changes.changeversionsequence'::regclass);

    CREATE INDEX IF NOT EXISTS ux_12f7e6_changeversion
        ON edfi.studenthealth USING btree
        (changeversion ASC NULLS LAST)
        TABLESPACE pg_default;

    ALTER TABLE edfi.crisisevent ADD COLUMN changeversion bigint NOT NULL DEFAULT nextval('changes.changeversionsequence'::regclass);

    CREATE INDEX IF NOT EXISTS ux_f1bbb4_changeversion
        ON edfi.crisisevent USING btree
        (changeversion ASC NULLS LAST)
        TABLESPACE pg_default;

    ALTER TABLE edfi.studenttransportation ADD COLUMN changeversion bigint NOT NULL DEFAULT nextval('changes.changeversionsequence'::regclass);
    
    CREATE INDEX IF NOT EXISTS ux_68afad_changeversion
        ON edfi.studenttransportation USING btree
        (changeversion ASC NULLS LAST)
        TABLESPACE pg_default;

    CREATE TABLE IF NOT EXISTS tracked_changes_edfi.studenthealth
    (
        oldeducationorganizationid bigint NOT NULL,
        oldstudentusi integer NOT NULL,
        oldstudentuniqueid character varying(32) COLLATE pg_catalog."default" NOT NULL,
        neweducationorganizationid bigint,
        newstudentusi integer,
        newstudentuniqueid character varying(32) COLLATE pg_catalog."default",
        id uuid NOT NULL,
        changeversion bigint NOT NULL,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT now(),
        CONSTRAINT studenthealth_pk PRIMARY KEY (changeversion)
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS tracked_changes_edfi.studenthealth
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS tracked_changes_edfi.crisisevent
    (
        oldcrisiseventname character varying(100) COLLATE pg_catalog."default" NOT NULL,
        newcrisiseventname character varying(100) COLLATE pg_catalog."default",
        id uuid NOT NULL,
        changeversion bigint NOT NULL,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT now(),
        CONSTRAINT crisisevent_pk PRIMARY KEY (changeversion)
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS tracked_changes_edfi.crisisevent
        OWNER to postgres;

    CREATE TABLE IF NOT EXISTS tracked_changes_edfi.studenttransportation
    (
        oldstudentusi integer NOT NULL,
        oldstudentuniqueid character varying(32) COLLATE pg_catalog."default" NOT NULL,
        oldtransportationeducationorganizationid bigint NOT NULL,
        newstudentusi integer,
        newstudentuniqueid character varying(32) COLLATE pg_catalog."default",
        newtransportationeducationorganizationid bigint,
        id uuid NOT NULL,
        changeversion bigint NOT NULL,
        discriminator character varying(128) COLLATE pg_catalog."default",
        createdate timestamp without time zone NOT NULL DEFAULT now(),
        CONSTRAINT studenttransportation_pk PRIMARY KEY (changeversion)
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS tracked_changes_edfi.studenttransportation
        OWNER to postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.nonmedicalimmunizationexemptiondescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.NonMedicalImmunizationExemptionDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.NonMedicalImmunizationExemptionDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.NonMedicalImmunizationExemptionDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.nonmedicalimmunizationexemptiondescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.immunizationtypedescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.ImmunizationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.ImmunizationTypeDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.ImmunizationTypeDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.immunizationtypedescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.transportationpublicexpenseeligibilitytypedescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.TransportationPublicExpenseEligibilityTypeDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.TransportationPublicExpenseEligibilityTypeDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.TransportationPublicExpenseEligibilityTypeDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.transportationpublicexpenseeligibilitytypedescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.displacedstudentstatusdescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.DisplacedStudentStatusDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.DisplacedStudentStatusDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.DisplacedStudentStatusDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.displacedstudentstatusdescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.busroutedescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.BusRouteDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.BusRouteDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.BusRouteDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.busroutedescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.traveldirectiondescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.TravelDirectionDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.TravelDirectionDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.TravelDirectionDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.traveldirectiondescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.crisistypedescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.CrisisTypeDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.CrisisTypeDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.CrisisTypeDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.crisistypedescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.transportationtypedescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.TransportationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.TransportationTypeDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.TransportationTypeDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.transportationtypedescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.studenttransportation_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    DECLARE
        dj0 edfi.student%ROWTYPE;
    BEGIN
        SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

        INSERT INTO tracked_changes_edfi.studenttransportation(
            oldstudentusi, oldstudentuniqueid, oldtransportationeducationorganizationid,
            id, discriminator, changeversion)
        VALUES (
            OLD.studentusi, dj0.studentuniqueid, OLD.transportationeducationorganizationid, 
            OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.studenttransportation_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.crisisevent_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.crisisevent(
            oldcrisiseventname,
            id, discriminator, changeversion)
        VALUES (
            OLD.crisiseventname, 
            OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.crisisevent_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.traveldayofweekdescriptor_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    BEGIN
        INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
        SELECT OLD.TravelDayofWeekDescriptorId, b.codevalue, b.namespace, b.id, 'edfi.TravelDayofWeekDescriptor', nextval('changes.ChangeVersionSequence')
        FROM edfi.descriptor b WHERE old.TravelDayofWeekDescriptorId = b.descriptorid ;

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.traveldayofweekdescriptor_deleted()
        OWNER TO postgres;

    CREATE OR REPLACE FUNCTION tracked_changes_edfi.studenthealth_deleted()
        RETURNS trigger
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE NOT LEAKPROOF
    AS $BODY$
    DECLARE
        dj0 edfi.student%ROWTYPE;
    BEGIN
        SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

        INSERT INTO tracked_changes_edfi.studenthealth(
            oldeducationorganizationid, oldstudentusi, oldstudentuniqueid,
            id, discriminator, changeversion)
        VALUES (
            OLD.educationorganizationid, OLD.studentusi, dj0.studentuniqueid, 
            OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

        RETURN NULL;
    END;
    $BODY$;

    ALTER FUNCTION tracked_changes_edfi.studenthealth_deleted()
        OWNER TO postgres;

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.transportationpublicexpenseeligibilitytypedescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.transportationpublicexpenseeligibilitytypedescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.nonmedicalimmunizationexemptiondescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.nonmedicalimmunizationexemptiondescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.displacedstudentstatusdescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.displacedstudentstatusdescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.busroutedescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.busroutedescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.traveldirectiondescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.traveldirectiondescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.studenthealth
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.studenthealth_deleted();

    CREATE TRIGGER updatechangeversion
        BEFORE UPDATE 
        ON edfi.studenthealth
        FOR EACH ROW
        EXECUTE FUNCTION changes.updatechangeversion();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.crisisevent
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.crisisevent_deleted();

    CREATE TRIGGER updatechangeversion
        BEFORE UPDATE 
        ON edfi.crisisevent
        FOR EACH ROW
        EXECUTE FUNCTION changes.updatechangeversion();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.crisistypedescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.crisistypedescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.transportationtypedescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.transportationtypedescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.studenttransportation
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.studenttransportation_deleted();

    CREATE TRIGGER updatechangeversion
        BEFORE UPDATE 
        ON edfi.studenttransportation
        FOR EACH ROW
        EXECUTE FUNCTION changes.updatechangeversion();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.traveldayofweekdescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.traveldayofweekdescriptor_deleted();

    CREATE TRIGGER trackdeletes
        AFTER DELETE
        ON edfi.immunizationtypedescriptor
        FOR EACH ROW
        EXECUTE FUNCTION tracked_changes_edfi.immunizationtypedescriptor_deleted();
END;

BEGIN;

    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql', '2024-05-10 20:49:58.495323');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql', '2024-05-10 20:49:58.496835');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql', '2024-05-10 20:49:58.800328');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql', '2024-05-10 20:49:58.885746');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0110-AddSnapshot-Tables.sql', '2024-05-10 20:49:58.887928');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0120-AddSnapshotIdColumnUniqueIndexes.sql', '2024-05-10 20:49:58.889412');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0130-AddSnapshotExtendedProperties.sql', '2024-05-10 20:49:58.890293');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0200-CreateTrackedChangeTables.sql', '2024-05-10 20:49:59.138678');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0210-CreateTriggersForChangeVersionAndKeyChanges.sql', '2024-05-10 20:49:59.206133');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0220-CreateTriggersForDeleteTracking.sql', '2024-05-10 20:49:59.417545');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.1010-CreateGetMaxChangeVersionFunction.sql', '2024-05-10 20:49:59.419020');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.1020-AuthViewsIncludingDeletes.sql', '2024-05-10 20:49:59.425286');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.1030-DropSnapshot-Table.sql', '2024-05-10 20:49:59.427775');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('EdFi.Ods.Standard.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.1040-AuthViewStudentResponsibilityIncludingDeletes.sql', '2024-05-10 20:49:59.429588');

END;
create table PUBLIC.CONFERENCE_ROOM
(
    MAX_CAPACITY INTEGER                                                                               not null,
    ID           BIGINT auto_increment
        primary key,
    LOCATION     CHARACTER VARYING(255)                                                                not null,
    NAME         CHARACTER VARYING(255)                                                                not null,
    STATUS       ENUM ('FEMALE', 'AVAILABLE', 'MALE', 'CLOSED', 'OTHER', 'FULL', 'UNDER_CONSTRUCTION') not null
);

create table PUBLIC.CONFERENCE
(
    CONFERENCE_ROOM_ID BIGINT not null,
    END_CONFERENCE     TIMESTAMP,
    ID                 BIGINT auto_increment
        primary key,
    START_CONFERENCE   TIMESTAMP,
    NAME               CHARACTER VARYING(255),
    constraint FKGY8OU0I3FHIQJBTW4VP69O9DV
        foreign key (CONFERENCE_ROOM_ID) references PUBLIC.CONFERENCE_ROOM
);

create table PUBLIC.PARTICIPANT
(
    DATE_OF_BIRTH DATE,
    ID            BIGINT auto_increment
        primary key,
    EMAIL         CHARACTER VARYING(255),
    FULL_NAME     CHARACTER VARYING(255),
    GENDER        ENUM ('FEMALE', 'AVAILABLE', 'MALE', 'CLOSED', 'OTHER', 'FULL', 'UNDER_CONSTRUCTION') not null
);

create table PUBLIC.REGISTRATION_CONFERENCE
(
    CONFERENCE_ID     BIGINT,
    ID                BIGINT auto_increment
        primary key,
    PARTICIPANT_ID    BIGINT,
    REGISTRATION_CODE CHARACTER VARYING(255),
    constraint FK2TR85ESX6F5SOWO2RREBBEXLW
        foreign key (PARTICIPANT_ID) references PUBLIC.PARTICIPANT,
    constraint FKPM2REHIAL9LRL9SEPRJMHRM41
        foreign key (CONFERENCE_ID) references PUBLIC.CONFERENCE
);

create table PUBLIC.FEEDBACK
(
    DATE_CREATED               TIMESTAMP,
    ID                         BIGINT auto_increment
        primary key,
    REGISTRATION_CONFERENCE_ID BIGINT not null,
    CONTENT                    CHARACTER VARYING(255),
    constraint FKJVI2FW2TUJAS2UHWDS7UBOGHW
        foreign key (REGISTRATION_CONFERENCE_ID) references PUBLIC.REGISTRATION_CONFERENCE
);


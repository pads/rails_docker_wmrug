#!/bin/bash
set -e

psql template1 -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create user wmrug_app with password '';
    create database wmrug_development;
    create database wmrug_test;
    grant all privileges on database wmrug_development to wmrug_app;
    grant all privileges on database wmrug_test to wmrug_app;
EOSQL

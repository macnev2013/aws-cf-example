## Data migration using DMS: RDS - Kinesis

This project is a demonstration of migrating data from RDS to kinesis using AWS DMS service.

## Usage
**Note: Make sure to update AWS profile and AWS region in deploy.sh and update.sh scripts before using**
- To deploy the stack run `deploy,sh` script.
- To update the stack make the required changes in the stack and run `update.sh`.

## To test the functionality
- Create a schema named `testschema` in RDS
- Create a table named `testtable` in RDS
- Add a row in `testtable`
- Run the migration task created by Cloudformation template
    - This will migrate data from RDS to kinesis
- List the records in Kinesis stream
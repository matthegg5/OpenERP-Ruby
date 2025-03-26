An Enterprise Resource Planning system (incomplete, of course) written in Ruby on Rails.

So far:

- Authentication
- Very basic nav menu
- First pass at a Part Maintenance screen

Phase 1:-

- parts
- part revisions
- warehouses
- warehouse bins
- bill of material
- operations and routing
- jobs (quick job)
- labour booking against operations (MES)
- user administration


Phase 2:-

- job operations scheduling
- Manufacturing Delays during labour booking (MES)
- sales orders
- purchase orders
- firm demand

Phase 3:-

- Source to Pay
- Customer Relationship Management

Technical Details and useful commands

    - Ruby version 3.3.6

    - System dependencies -- Sqlite3 version 3.45.2

    Configuration
    
    - Create a new entity/database table migration: rails g resource <case_sensitive_table_name>

    Database creation \
    rails db:create

    Database initialization \
    rails db:migrate \
    rails db:seed

(rails db:drop to start over)


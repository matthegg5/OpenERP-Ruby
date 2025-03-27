An Enterprise Resource Planning system (incomplete, of course) written in Ruby on Rails.

So far:

- Authentication
- Very basic nav menu
- First pass at a Part Maintenance screen

Phase 1:-

- Parts - WIP
- Part Revisions - Database Table and Active Record in place
- Warehouses
- Warehouse bins
- Bill of Material (BOM) Management
- Operations and Routing
- Jobs (quick job)
- Labour booking against operations (MES)
- User Administration


Phase 2:-

- Job operations scheduling
- Manufacturing Delays during labour booking (MES)
- Sales Orders
- Purchase Orders
- Firm Demand (from Job Materials)

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


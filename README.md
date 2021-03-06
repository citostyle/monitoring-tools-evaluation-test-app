# Monitoring Tool Evaluation Test App

In order to evaluate the current state of the art of monitoring tools in PaaS, we created a sample application in Ruby on Rails to be deployed in a cloud platform. We enabled different monitoring solutions (focusing on application level metrics) and stress tested the application, in order to inspect the monitoring and measurement capabilities of the tools. 

The application consists merely of a list of contact entries (contact name and number) saved in a relational database (PostgreSQL). The contacts table in the database is seeded with 10000 randomly generated entries in order to generate higher load on the database level. The application consists of 3 methods:

* _index_: List all contact entries
* _duplicates_: Find duplicates within all entries while hitting the database at least 500 times within the algorithm
* _crawl_: Extracts items from a third party web application

The application was stress tested multiple times over a period of 60 seconds with 30 different clients using loader.io.



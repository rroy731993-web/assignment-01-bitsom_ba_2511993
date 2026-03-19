## Storage Systems

In this design, different storage systems are used for different purposes to make the system efficient and scalable. MySQL (OLTP) is used to handle transactional data coming from the EHR and billing systems. This is because it is fast and reliable for day-to-day operations like updating patient records or processing payments.
A Data Lake is used to store raw data, especially from ICU devices. Since this data can be large, fast, and sometimes unstructured, the data lake allows us to store everything without needing to organize it immediately. This makes it flexible for future use.
The Data Warehouse (OLAP) is used for structured and cleaned data. Data from MySQL and the Data Lake is processed through the ETL pipeline before being stored here. This makes it easier to run reports, dashboards, and analysis.
Finally, a Vector Database is used for AI-related tasks. It stores embeddings (numerical representations of data), which helps the AI chatbot find relevant information quickly and improve search accuracy.

## OLTP vs OLAP Boundary

The system clearly separates transactional and analytical workloads. The OLTP part ends at MySQL, where real-time data is created and updated. This part focuses on handling fast and frequent operations.
The OLAP part begins at the ETL pipeline, where data is taken from MySQL and the Data Lake, cleaned, and moved into the Data Warehouse. From here, the data is used for analysis, reporting, and machine learning.
This separation is important because it ensures that heavy analytical queries do not slow down the main system operations.

## Trade-offs

One major trade-off in this design is delay (latency) caused by batch processing in the ETL pipeline. Since data is not moved instantly to the Data Warehouse, there can be a short delay before it is available for reporting.
To solve this, a stream processing system is included. This allows real-time data, especially from ICU devices, to be processed immediately and used for alerts or machine learning predictions.
Another trade-off is that using many systems makes the architecture more complex. However, this is managed by giving each component a clear role, which helps keep the system organized and scalable.
## Architecture Recommendation

I would recommend using a Data Lakehouse for this system.
A food delivery startup deals with different types of data like GPS logs, customer reviews, payment details and menu images. A data warehouse is not ideal because it mainly handles structured data, while a data lake alone can store everything but lacks strong performance and reliability for analysis.
A data lakehouse combines the advantages of both. It can store all types of data (structured and unstructured) in one place, making it suitable for text, images and logs. At the same time, it supports fast and reliable analytics, which helps in understanding customer behavior, tracking deliveries and analyzing sales.
It also ensures better data consistency for important data like payments, while still being flexible and scalable as the company grows. Because of this balance between flexibility and performance, a data lakehouse is the best choice for this scenario.
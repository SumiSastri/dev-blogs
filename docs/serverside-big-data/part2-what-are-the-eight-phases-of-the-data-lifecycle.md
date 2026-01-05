# What are the eight phases of the data-lifecycle?

The data life cycle is a comprehensive framework describing the eight stages data undergoes in an organization—from generation, collection, processing, storage, and management to analysis, visualization/interpretation, and eventual disposal. The data life cycle increasingly is guided by governance, quality, and security controls to ensure accuracy, usability, and compliance.

- Data-mining involves the early stages in the data-life cycle - data generation, collection.
- Information Technology or IT systems fall into the middle of the data-lifecycle pattern after generation and collection, when data is processed, stored and managed.
- KDD  or Knowledge Discovery in Databases, involves the last steps of the data lifecycle - analysis, visualisation, interpretation.

## What is data mining?

Data mining is the process of gathering data to extract valuable information, often for financial gain. The data is organised into information systems that help organisations to extract value from the data they collect.

Common use cases include:

- Education: Digital text books, student and organisational information
- Industry: Market and competitor analysis
- Retail: Predicting customer sentiment and buying behaviors
- Finance: Detecting fraud (e.g., credit card fraud) or identifying illegal activities such as money laundering and tax evasion
- Science and healthcare: Analyzing disease causes, prevention, and cures
- Meteorology: Discovering and forecasting weather patterns
- Government: Maintaining and organising citizen data

Not all data that is generated is collected. Data-mining, in some cases may only involve collection of some of the data that is generated. Mining sifts data generated into what is useful to collect and compatible with the information systems used to process, store and manage the data.

Storage is in binary, so software needs

## What is the difference between information systems and data mining?

Data represents raw, unstructured and disorganised facts. When data is structured, transformed, processed and contextualised it becomes information.

Data mining merely collects this raw data, but an information system transforms this data into information to help the management of this data, gaining insights into trends and analysing how the data could improve organisation efflicency - from acquisition and retention of customers, to management of finances and operations.

Increasingly this data is being stored digitally making digital information systems and their operations essential in the data-mining and processing to create robust information systems.

Data must be cleaned, formatted, structured, compressed, encrypted and then stored. This process is known as data-wrangling, defined by IBM as the process of "enriching raw data" for further use in machine learning (ML) and artificial intelligence (AI), or any other information system organisations use.

During the final stages when data is ready to store it must be compressed for storage into binary. Compression can result in data losses and this data may not be able to be restored to its orginal format - this is referred to as "lossy compression". Images, for example may be stored in lower formats such as jpgs, with lower resolution versus the generated tiff format. Images, audio and video files often have to go through lossy-compression to be stored.

Loss-less compression is the process where a file can be compressed without losing information - zip files, for example can compress data and the original formats can be restored. With images tiff formats result in loss-less compression, ALAC or FLAC formats with audio can be used where the underlying integrity of the raw data must be restored on retrieval. The disadvantage of loss-less compression is although file-size is reduced, it is not reduced as significantly as lossy-compression where some of the data is deleted permanently and can not be restored resulting in lower file sizes.

Lossless compression uses algorithms to identify and eliminate statistical redundancy. Algorithms scan the data for repeated elements and replace them with shorter representations. For instance, a phrase that appears multiple times in a text file might be replaced with a single character as a key. During decompression, these shorter representations are replaced with their original elements, ensuring that the original data is perfectly reconstructed.

## What is KDD?

KDD, refers to the process of discovering trends and patterns in gathered data. It is focused on the analytics of information systems. Data may be visualised for easy understanding of trends and patterns that are revealed from the underlying data sets.

Information systems have three key components - the raw data collected, hardware used to store the data and software used to gain insights into the databases. Software is also used to create and update databases as well as retrieve data from data storage centres.

Hardware for data storage varies from cloud-based storage, on-premise servers, computer-mobile or other digital device hardware. Digital data is stored in the form of data-types - numbers, characters, symbols on the hardware. For effective KDD, analytics software queries the data in the databases and interacts with the hardware where the data is stored.

Alogrithms query the data and structure them into meaningful patterns. These patterns may be visualised for ease of understanding or provide an intepretative explaination for end-uses through data-visualisation tools or analysts who provide the data interpretation via statistical inference or ML and AI tools.

## Conclusion

IT systems enable organizations to uncover valuable insights and make data-driven decisions. By leveraging these technologies, industries can improve efficiency, enhance customer experiences, and address complex challenges in various domains.

### Further Reading

- [What is the Data Lifecycle - Knime](https://www.knime.com/blog/the-data-lifecycle)
- [Advantages of managing the Data Life Cyle - Airbyte]( https://airbyte.com/data-engineering-resources/data-life-cycle)
- [What is Data Wrangling IBM](https://www.ibm.com/think/topics/data-wrangling)
- [Data Wrangling - Wikipedia](https://en.wikipedia.org/wiki/Data_wrangling)
- [Compression lossy and loss-less - Restream](https://restream.io/learn/what-is/lossless-compression/)

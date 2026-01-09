
# Data security and privacy risk mitigation require a combination of human and tech solutions

Organisational resilience against threats to unauthorised data access whether from cyber-attacks or unintentional actions from authorised users is a risk that needs to be continuously monitored.

Organisations need to protect themselves effectively from such actions as the consequences include financial and reputational loss, costly system downtime which may need to be restored from back-ups, supply-chain disruptions and where governments are concerned can result in a national security risk.

Comprehensive cybersecurity strategies that combine technological, organisational, and human-focused measures are required for effective risk mitigation.

This could mean robust access controls, monitoring, insider threat management, incident response planning, staff training, and legal compliance. Furthermore, organisations must recognise the broader implications of cybercrime, including ethical considerations, psychological harm, and regulatory accountability.

The landscape of digital threats demonstrates that security cannot be an afterthought. Protecting sensitive data, maintaining system integrity, and fostering trust are essential not only for operational continuity but also for preserving organisational reputation and societal confidence in digital infrastructures.

## Actors in the data security and privacy landscape

Data actors are involved in both: data privacy (responsible individuals who protect data and inform data subjects) and data security (tools, technologies, and controls used to prevent unauthorized access).

_Data subjects:_ A data subject is any person or organisation whose data is being collected. Data subjects have joint responsibilities in setting passwords, accessing systems and rules and guidelines on password and information sharing restrictions. The data subject must provide "informed" consent and therefore make it their responsibility to read consent options, control privacy settings and give access to their data in a lawful manner. They have the right by law to privacy, the accuracy of the data stored about them, access to processed data and a request to have all data erased permanently.

Data subjects may be further categories into vulnerable groups - children, adults with special needs, the elderly or disabled where informed consent cannot be assumed. A parent, teacher or guardian assumes responsibility and consent. For example, in a school, the teacher may have digital information from learning platforms that they need to share with students, the parent and teacher may have to provided informed consent on behalf of the pupil.

_Data controllers:_ A data controller determines what, how, when and where data can and will be processed. They may act on their own or with other entities - individuals that they may employ or report to them in an organisation or external agencies, organisations, governments or individuals. It is the data controller’s responsibility to set identification and access management controls - often referred to as IaM or IdaM - of key users making data both secure and available. 

They set read-and-write access controls so that data is only altered by users who can write code for data stored, while most users may have read access. They also determine which department reads what data, for example the marketing department may need web and mobile traffic data but not payroll data which the finance department will need. 

They determine levels of access on the principle of minimisation in data protection which determines only the minimum amount of data required to conduct business is required to be shared. In the case of a data processor who is printing labels for invitation to a book launch that the marketing department is running, the printer does not need all the data about the individual - such as weight, height, reading preferences, etc., that the marketing department may collect for targeted marketing purposes.

_Data processors:_ The data processor acts on the rules set by the data controller accessing and processing data with the data controller's authorisation. The processor may be from the same department as the data controller but usually is from a different department or organisation from the data controller. Processors can bd individuals, organisations, service agencies, governments or individuals within the organisation, processing customer data.

## A complex map of technical, legislative and organisational choices

Effective risk mitigation starts with a complex map of technical, legislative and organisational choices. In an article titled “Understanding Risk Mitigation: Purpose, Strategies and Best Practices”, a roadmap starting with identifying risks, assessing their impact and prioritising what needs to be addressed is a good way to create appropriate risk mitigation measures.
Once these measures are deployed, continuous monitoring, analysis and reporting is essential for effective control. Rapid response times to threats must be planned and co-ordinated.
To ensure effective security and privacy risk management of data systems, technical risk mitigation solutions abound. In this section, the focus is on some of the key technical risk mitigation strategies, supported by brief descriptions and selected case studies demonstrate the consequences of ignoring technical risk management.

Most of the case studies have been sourced from The London School of Management & Technology's "Top Cyber Security Case Studies in Europe" and related to the key measures outlined in Connolly, & Begg's "Database Systems: A Practical Approach to Design, Implementation, and Management"

- _Cryptography, Data, and Password Management_ Includes encryption and decryption, strong password policies, user education, and multi-factor authentication (MFA/2FA) to protect access to systems and sensitive data. _Case study (KNP Transport, 2025)_
In 2023, KNP, a 158-year-old UK transport company, collapsed after ransomware attackers (Akira) accessed its systems using a guessed employee password.

- _Network Security and Testing_ Uses firewalls, proxy servers, packet filtering, and Secure Sockets Layer (SSL/TLS) encryption to protect networks from unauthorised access and data interception. _Case study (BlackMeta, 2024)_ Hackers BlackMeta launched a series of distributed denial-of-service (DDoS) attacks, one lasted 6 days and was against a financial institution in the Middle East, this set a new benchmark for the duration and intensity of such cyberattacks. It involved ten waves of DDoS attacks, each lasting four to twenty hours. In total, the financial institution faced 100 hours of sustained attack time crippling the institution’s web applications and services. It also exfiltrated 31-million records in the same year from the Internet Archive.

- _Systems Security and Testing_ - Employs application gateways and circuit-level gateways to control traffic between trusted and untrusted systems, reducing exposure to application-level attacks.

- _Data Forensics and Data Lineage Management_ Ensures organisations can trace data usage, detect breaches early, and investigate incidents through logging, auditing, and forensic analysis. _Case study (Dixons Carphone, 2017)_ Malware installed on point of sales terminals in the UK compromised 6.5 million payment cards and 10 million personal records. The breach went undetected for 9 months due to basic security failures, resulting in a £500,000 ICO fine and significant reputational damage.

- _Information and Ethics Management_ Focuses on ethical data handling, staff awareness, and protection against social engineering attacks such as phishing and business email compromise (BEC)._Case study (Norfund, 2020)_ Attackers monitored internal communications and used social engineering to steal approximately $10 million from the Norwegian Government Investment Fund for Developing Countries (Norfund), via a BEC scam. Following the breach, Norfund introduced MFA, improved email filtering, and mandatory staff awareness training.

- _Critical System Review and Management_ Involves regular patching, vulnerability scanning, and lifecycle management of critical systems to prevent exploitation of known weaknesses. _Case study (Equifax, 2017)_ Hackers exploited an unpatched Apache Struts vulnerability, compromising 145 million global records. In the UK, Equifax was fined £500,000 by the ICO and forced to overhaul its patch management processes.

- _System Analysis and Reporting_ Continuous monitoring, logging, and automated threat detection are used to identify suspicious activity and breaches in real time. _Case study (British Airways, 2018)_ Magecart attackers injected malicious JavaScript into BA’s website, stealing customer payment data for months without detection. Poor monitoring contributed to the breach, resulting in a £20 million GDPR fine.

- _Specialised Cybersecurity and Ethical Hacking_ Includes penetration testing, red teaming, and collaboration with external cybersecurity specialists to identify vulnerabilities before attackers do. _Case study (Kawasaki Motors Europe, 2024)_ The RansomHub gang exfiltrated 487GB of data after breaching KME systems. Rapid server isolation and expert consultation allowed restoration of over 90% of systems, limiting operational disruption despite public data leaks.

- _Specialised Big Data Management_ Implements secure authentication and access control mechanisms such as Kerberos to protect credentials and manage large-scale data environments securely.

- _Specialised Emerging Technology Risk Assessment and Management_ Evaluates risks introduced by emerging technologies such as AI, IoT, and cloud platforms, ensuring security controls are embedded early in adoption.

- _System Design and Architecture_ Promotes secure-by-design and privacy-by-design principles, including system segmentation, legacy system replacement, and security reviews during mergers and acquisitions. _Case study (Marriott–Starwood, 2014–2018)_ Hackers accessed outdated Starwood systems for four years, compromising 500 million guest records. Poor system integration and delayed detection led to a $23.8 million GDPR fine and long-term reputational damage.

- _Secure Payment Systems Design_ Uses Secure Electronic Transactions (SET), digital certificates, and digital signatures to ensure confidentiality, integrity, and authenticity of payment data.

- _Secure Payment Systems Security and Testing_ Involves regular penetration testing, compliance checks (e.g., PCI DSS), and monitoring of payment platforms to prevent fraud and data breaches.

## Risk mitigation options through the eight phases of the data life cycle

Security and privacy risks exist at every stage of the data lifecycle. 

Embedding some of the technical controls, outlined above, early and consistently ensures confidentiality, integrity, authenticity, and availability of data while supporting regulatory compliance and ethical data use.

The lifecycle that starts with creation, collection and transmission may have different technical control requirements from the processing, analysing and data destruction phases.

This section provides a helicopter view of how some of these controls can be applied at the different stages of the data lifecycle.

_Data Creation, Collection and Transmission: Extract-Transfer-Load_

At the point of data creation, organisations must ensure that only necessary data is collected and that individuals are informed about how their data will be used. Once the data is collected it must be transferred and loaded safely into a storage system. This process is termed ETL for extract-transfer-load.

During the data generation phase, data may be generated from a variety of sources - web forms, mobile forms and IOT devices, to name a few. The storage could be temporary databases in data lakes or data warehouses. Data must be protected while moving between systems to prevent interception, alteration, or misuse.

Much of the data generated is from front-end platforms which should be protect against link-jacking, session hijacking, replay attacks, and denial-of-service attacks. CSP policies, cookie policies protect users and access controls should be set to ensure only authorised users can create or submit data. This may also require educating users on how to set secure passwords or setting password data structures to ensure complexity. For example, the use of a mixture of characters, numbers and symbols are often set as required data parameters to ensure stronger passwords.

From the generation and creation of data from various platforms, this data is moved via the internet networks and network security. Networks were built for communication, not designed for security and hackers exploit this vulnerability, at the network level, it is crucial to set up traffic monitoring for suspicious behaviour.

Encryption at the Transmission Control Protocol / Internet Protocol (TCP/IP) layer, typically using Transport Layer Security (TLS), should be used to protect data during initial submission. This stage also requires protection against packet sniffing, interception, and man-in-the-middle attacks during transmission.  Secure communication channels using Virtual Private Networks (VPNs), firewalls, proxy servers, and authenticated Application Programming Interfaces (APIs) should be used during the transfer and load process. 

Data validation checks should be in place to prevent data corruption, unauthorised modification, or blocking of data between sender and receiver. Further checks to ensure the authenticity of sender and receiver may be required. Digital certificates and cryptographic mechanisms can be used at this stage. Validation checks should take place both in the frontend and backend systems to ensure data integrity.

Enterprise level storage systems vary from on-premises servers and the cloud. Databases can vary from holding structured or unstructured data in various formats. Stored data must remain secure, accurate, and accessible only to authorised parties. Design databases with security and privacy by default, rather than adding controls later. Encrypt data at rest, including databases, file systems, and backups. Use Atomicity, Consistency, Isolation, and Durability (ACID) compliant transactions to maintain database reliability. Implement Redundant Array of Independent Disks (RAID) configurations to improve resilience and availability. Further protect storage infrastructure using firewalls, proxy servers, and packet-filtering mechanisms. Apply regular patch management, vulnerability scanning, and system hardening. Ensure stored data remains accurate, complete, and up to date.

_Data augmentation and analysis: Transfer-Load-Extract_

For data to be valuable to an organisation, during the data processing phase, data is cleaned, shared and augmented to provide meaningful insights into the data that has been generated, collected and stored. With the volume, velocity and variety of data generated, collected and stored, the process of ELT is now being replaced by TLE where data that is collected is immediately transferred and loaded into data lakes and data warehouses. Only data that is relevant for use is extracted. This more closely segmented data then can be cleaned, augmented and shared with the principles of data minimisation outlined by data-protection regulations. It follows the rule of purpose-limitation where the data extracted is used only for the purpose intended. It also preserves data integrity, confidentiality and accountability.

Increasingly, legislation demands that processing activities are controlled, auditable, and restricted to legitimate purposes. IdaM should be based on the principle of least privilege - which means following the YAGNI principle (you-aint-going-to-need-it). Data should not be used or stored "just in case" the processor needs it. This tighter segmented data sets networks reduces the impact of breaches. Engineers following best practice secure coding practices, runtime application protection, and application-level firewalls should be mandated. When data is extracted for processing, secure APIs using authentication tokens, gateways, and rate-limiting controls should be put in place to 
prevent malicious data alteration that could corrupt data, software, or hardware during processing.

Data sharing at this stage must be controlled, justified, and limited to what is necessary. Data masking, pseudonymisation, or anonymisation techniques where full identification is not required should be instated. If client data is lost, these techniques will water down the impact of theft should it occur. Review access controls for internal staff and third-party recipients when data is shared for augmentation, analysis or reuse on front-end systems. Maintain audit trails showing who accessed or shared data and for what purpose.
Verify that recipients comply with contractual and legal data protection obligations.

_Data retention and destruction_

According to data legislation, user data must not be retained longer than necessary. Data retention schedules should be clearly defined an aligned with legal, regulatory, and business requirements. Stale data should be deleted not archived. This reduces the risk of by limiting long-term storage of sensitive personal data. Reducing the surface of the attack is only one strategy to employ but the KNP Transport case study clearly demonstrates the vector of attack can cause enormous damage from a very small surface of attack - one weak password was all it took to shut down the company.

Removing data securely and permanently is important as a back-door entry from stale data could prove costly. Use secure deletion and data sanitisation techniques appropriate to the storage medium. Destroy encryption keys to ensure data cannot be recovered. Ensure backups, replicas, and archived copies are also securely disposed of. Maintain logs and evidence of destruction activities for audit purposes.

## Security and privacy risk mitigation a continuous process, the stakes are high

Data security and privacy risk mitigation is not a single technical challenge but an ongoing organisational process that requires the integration of technology, governance, and human behaviour.

Resilience against data security and privacy risks depends on treating security as a continuous, organisation-wide responsibility rather than an afterthought. 

By embedding security and privacy by design across the data lifecycle, aligning practices with legal frameworks, and recognising the central role of human behaviour, organisations can better protect sensitive data, maintain trust, and operate securely in an increasingly complex digital environment.

### FURTHER READING AND REFERENCES

- AlertMedia (2025), "10 Risk Mitigation Strategies & Examples for 2026", Accessed: 9 January, [Available at](https://www.alertmedia.com/blog/risk-mitigation-strategies/)
- Atlassian (2025) "What is Risk mitigation? A strategic guide", Accessed: 9 January, [Available at](https://www.atlassian.com/work-management/project-management/risk-mitigation)
- Bilton, R. (2025) "Weak password allowed hackers to sink a 158-year-old company", BBC News, July. Accessed: 9 January, [Available at](https://www.bbc.co.uk/news/articles/cx2gx28815wo)
- Connolly, T.M. and Begg, C.E. (2015/2016) "Database Systems: A Practical Approach to Design, Implementation, and Management", 6th edn. Global Edition. Pearson.
- Cyber Security News (2024) "DDoS attack lasted for 6 days, record created for cyberattack", Accessed: 9 January, [Available at](https://cybersecuritynews.com/ddos-attack-lasted-6-days-record/)
- Hornetsecurity (2026) "Major cybersecurity incidents of 2025", Accessed: 9 January, [Available at](https://www.hornetsecurity.com/en/blog/cybersecurity-incidents/)
- LSMT (2025) "Top cyber security case studies in Europe", Accessed: 9 January, [Available at](https://lsmt.org.uk/blog/top-cyber-security-case-studies-in-europe)
- Sprinto (2025) "Understanding Risk Mitigation: Purpose, Strategies and Best Practices", Accessed: 9 January, [Available at](https://sprinto.com/blog/risk-mitigation/)
- The British Safety Council (2025) "Risk mitigation Explained", Accessed: 9 January, [Available at](https://www.britsafe.org/training-and-learning/informational-resources/risk-mitigation)
- Winder, D. (2025) "Warning — 19 billion compromised passwords have been published online", Forbes, 6 May. Accessed: 9 January, [Available at](https://www.forbes.com/sites/daveywinder/2025/05/06/new-warning---19-billion-compromised-passwords-create-hacking-arsenal/)

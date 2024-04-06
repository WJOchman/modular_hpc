# John the Ripper

John the Ripper is a versatile and fast password-cracking tool compatible with various operating systems, including multiple Unix versions, macOS, Windows, and more. It aims to crack weak Unix passwords and supports different password hash types and encryptions, including Kerberos/AFS, Windows LM hashes, and DES-based tripcodes. The “jumbo” variant further expands its capabilities, covering various hashing and encryption types across different platforms and applications. It is primarily designed for password security checking and recovery. A system-wide installation is typically not required; users can run it directly from the "run" directory after extracting the archive or compiling the source code.

Before using the MPI version of John the Ripper in a cluster environment, an MPI framework such as OpenMPI must be operational. For cluster-wide consistency, all nodes should access a shared directory, ideally via NFS, ensuring file locking works properly. Different CPU architectures can run their own specific binaries, as they are the same version of John. Configuration and session files must be shared over the network. For single and multi-core configurations, a minimal configuration with OpenMPI is sufficient. Use the "./configure --enable-mpi" command to enable MPI during compilation. MPI can coexist with OpenMP, although the latter is disabled when MPI processes exceed one. Advanced settings allow users to change this behaviour.
Running John the Ripper with MPI allows for distributed password cracking across local and remote nodes. Using "mpirun", it can be run in parallel, dividing the workload evenly among the specified hosts. This contrasts with the -fork option, which is limited to local execution. John's MPI integration ensures compatibility between his -fork and MPI features, allowing sessions started in one mode to be resumed in the other. Modes like INCREMENTAL, MARKOV, SINGLE and WORDLIST are optimised for distributed environments, ensuring efficient workload distribution without redundant efforts between nodes. Additionally, it supports on-the-fly synchronisation for cracked passwords between nodes.

# Prometheus
Initially launched by SoundCloud in 2012, Prometheus is a free toolkit for monitoring and alerting, designed to handle metrics as time-series data. This system enables detailed insights into application performance through features like a multi-dimensional data model, a query language called PromQL, and pull and push data collection mechanisms. It operates without needing distributed storage, thanks to autonomous server nodes. The Prometheus ecosystem includes a core server, client libraries, a push gateway, various exporters, an alert manager, and additional tools primarily developed in Go. This setup supports extensive data analysis and visualisation, for instance, through Grafana, enhancing application management and troubleshooting.
Deploying Prometheus can take place on Docker, creating a custom Docker image with a static configuration or dynamically rendering configurations at runtime for greater flexibility between different environments. Given that the system is already equipped with Slurm, it's feasible to integrate Prometheus, as Slurm supports Docker, which can host Prometheus.

# Jaeger
Jaeger, developed by Uber Technologies as an open-source distributed tracing system, aids in monitoring, troubleshooting, and analysing distributed systems. It allows users to monitor workflows, identify performance issues, and understand service dependencies. It features a React-based UI, system topology visualisation, adaptive sampling, and more, with backend components in Go.
It can run via Docker as well.

Jaeger can be integrated with Prometheus as they complement each other. Prometheus can collect metrics providing insights into Jaeger's performance and operational health.

# References
- [John the Ripper password cracker](https://www.openwall.com/john/) [Accessed: 01/04/2024];
- [Installing John the Ripper.](https://www.openwall.com/john/doc/INSTALL.shtml) [Accessed: 01/04/2024];
- [README.mpi](https://github.com/openwall/john/blob/bleeding-jumbo/doc/README.mpi) [Accessed: 01/04/2024];
- [john](https://github.com/openwall/john/tree/bleeding-jumbo) [Accessed: 01/04/2024];
- [What is Prometheus?](https://prometheus.io/docs/introduction/overview/) [Accessed: 01/04/2024];
- [INSTALLATION | Prometheus](https://prometheus.io/docs/prometheus/latest/installation/) [Accessed: 01/04/2024];
- [Jaeger](https://www.jaegertracing.io/docs/1.55/) [Accessed: 01/04/2024];
- [Getting Started | Jaeger](https://www.jaegertracing.io/docs/1.55/getting-started/) [Accessed: 01/04/2024];
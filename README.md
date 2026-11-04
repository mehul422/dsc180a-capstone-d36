# DSC 180A Capstone (D36) - HPC Hardware Benchmarking

## Project Description
This repository contains the benchmarking harnesses and evaluation scripts developed for the DSC 180A Capstone project. The objective of this project is to rigorously evaluate Large Language Model (LLM) serving performance and compound AI system efficiency across diverse HPC architectures (specifically targeting the AMD MI300A APU with 128GB unified memory on the SDSC Cosmos cluster). 

The repository tracks our progression from **Phase 1 (Crawl)**—baseline microbenchmarks for CPU memory bandwidth (STREAM), database transactions (DuckDB), and standalone vLLM throughput—to **Phase 2 (Walk)**, which introduces compound mixed-workload contention. The Phase 2 scripts evaluate LLaMA-3 8B against Agentic workloads, including:
* OS tool-use bash execution (AgentBench)
* Multi-turn Text-to-SQL generation with Execution Accuracy (Spider 2.0-Lite) 
* Multi-turn context prefix caching traces (AgentX/ThunderAgent methodologies)

## AI and Human Contribution Statement
* **Human Contribution:** The human author was entirely responsible for the system architecture design, HPC cluster navigation, Slurm job scheduling (`srun`), Conda environment configurations, debugging ROCm/PyTorch compilation errors, defining the experimental roofline parameters, and executing the workloads on the SDSC Cosmos cluster.
* **AI Contribution:** AI (Google Gemini) was utilized as an advanced pair-programmer to generate boilerplate Python benchmarking loops, write the `sqlite3` execution wrappers and regex parsers for the Spider 2.0 accuracy evaluations, format terminal output logs into Markdown/LaTeX reports, and synthesize standard bash loops for concurrency sweeps. 

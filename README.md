# MolNetEnhancer-CANOPUS

An interactive R Shiny application designed to advance the MolNetEnhancer workflow for **GNPS2** molecular networking data. 

This tool bypasses traditional annotation bottlenecks in untargeted metabolomics by propagating deep-learning-based **CANOPUS (SIRIUS)** chemical class predictions across molecular families. It features a novel consensus algorithm that establishes high-confidence structural "hotspots" via live **NPClassifier API** queries, making it highly effective for annotating "dark matter" in complex biological or marine science samples.

## ✨ Key Features

* **GNPS2 Native Compatibility:** Automatically parses GNPS2 `.graphml` files and calculates missing topological parameters (like `componentindex`) on the fly.
* **SIRIUS / CANOPUS Integration:** Merges and propagates in silico chemical classifications (Superclass, Class, Subclass) across entire molecular families.
* **Empirical Hotspot Weighting:** Extracts `library_SMILES` from GNPS2 matches and queries the NPClassifier API in real-time. These empirical hits are weighted dynamically to anchor the molecular family's consensus.
* **Custom Tie-Breaker Logic:** Resolves classification conflicts in small molecular families (e.g., 2-node networks) by allowing users to choose between a "Classic" structural default or an "Ambiguous/Concatenated" output.
* **Clean Exports:** Generates a lightweight summary `.csv` and injects the new consensus classifications directly into a downloadable, publication-ready `.graphml` file.

---

## 🛠️ Prerequisites & Installation

This application requires **R** and the **Shiny** web framework. 

To easily install all required dependencies, you can run the included `install.R` script, or execute the following in your R console:

```R
install.packages(c("shiny", "igraph", "dplyr", "httr", "jsonlite", "DT"))
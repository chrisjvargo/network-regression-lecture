---
title: "Network Regression Lecture: An Interactive, Offline-First Companion for Quantitative Social Scientists"
tags:
  - network analysis
  - social science
  - pedagogy
  - visualization
  - reproducibility
authors:
  - name: Chris J. Vargo
    affiliation: 1
    orcid: "0000-0003-1733-2506"
affiliations:
  - name: Department of Advertising, Public Relations and Media Design, University of Colorado Boulder
    index: 1
    ror: "02ttsq026"
date: 25 November 2025
bibliography: paper.bib
---

# Summary

The **Network Regression Lecture** is a single-page, offline-first teaching companion that bundles narrative explanations, research case studies, and browser-based labs for graduate students in quantitative social science. The page opens in any modern browser and can be deployed directly to GitHub Pages, letting instructors distribute a stable URL or downloaded handout without external build steps. Interactive panels let learners explore centrality concepts, compare graph representations, generate canonical network models, and paste their own edge lists for instant visualization and descriptive statistics. Embedded R code (via collapsible toggles) mirrors the on-screen walkthroughs so classroom demonstrations can be reproduced, adapted, or ported into homework and lab assignments. The package is intentionally self-contained: HTML, CSS, JavaScript, and all supporting PDFs and images are stored locally to guarantee long-term accessibility in low-connectivity classrooms.

# Statement of need

Methods courses often rely on static slide decks that reference external software environments students have not yet configured. That disconnect is acute in network analysis, where intuition about paths, clustering, and degree distributions usually comes from manipulating visible graphs rather than reading definitions. Existing tutorials frequently assume prior exposure to network packages or provide screenshots instead of live instruments, making it difficult for non-specialists to bridge theory, visualization, and code. The Network Regression Lecture addresses this gap for communication, journalism, and political science cohorts by providing an immediately runnable teaching object: download the repository or open the hosted page, and every concept from node/edge representations to random, small-world, and scale-free models is backed by an explorable widget plus the matching R snippet. The goal is to shorten time-to-practice for first-semester PhD students who are learning regression alongside networks, and to give instructors a turnkey resource that fits into flipped-classroom or lab-heavy formats.

# Design and implementation

The lecture is authored in plain HTML/CSS with lightweight JavaScript to avoid build pipelines. Visualization relies on the `vis-network` library loaded from a CDN and local data objects. Four interactive components anchor the pedagogy:

- **Centrality viewer:** Students can toggle degree, betweenness, and closeness scores on a curated agenda-setting network, with optional highlighting of the two most central nodes and an automatically updating leaderboard.
- **Representation playground:** A fixed toy graph is rendered as an edge list, adjacency matrix, or adjacency list, helping newcomers see how the same structure maps across common storage formats.
- **Model generator:** Parameterized controls produce Erdos-Renyi, Watts-Strogatz, and Barabasi-Albert style graphs [@WattsStrogatz1998; @BarabasiAlbert1999], with live updates of density, path length, and clustering coefficients computed in-browser.
- **Edge-list scratchpad:** Learners paste CSV-formatted edges (with optional weights) to render a directed graph and inspect degree counts immediately, lowering the barrier to experimenting with their own data.

Collapsible callouts pair each activity with minimal R/igraph examples so students can transition from the browser to script-based workflows. A helper script (`deploy_to_github_pages.sh`) publishes the static site to GitHub Pages in one command, ensuring the same artifact used in class is what students access later.

# Research applications

The lecture curates five agenda-setting case studies drawn from communication research - intermedia networks [@VargoGuo2017JMCQ], international news flow [@GuoVargo2017Global], message ownership [@GuoVargo2015], election issue networks [@VargoGuoMcCombsShaw2014], and misinformation ecosystems [@VargoGuoAmazeen2018]. Each vignette links to the underlying publication and displays embedded figures or PDFs so students can compare the textbook metrics to peer-reviewed analyses. Instructors can reuse the scratchpad and model generator to prototype replication exercises or extend the examples to new datasets (e.g., platform data collected during current elections). Because all assets ship with the repository, the material remains stable for long-term archiving while still being easy to fork and localize.

The module is maintained in a public Git repository, with the code (HTML/CSS/JS and helper scripts) released under the MIT License and the instructional prose and figures under CC BY 4.0. Instructors can fork the repository to tailor examples or translate the narrative for their own courses. Contribution, issue-reporting, and support pathways are described in the README so adopters can suggest improvements or request clarifications.

# Acknowledgements

This project packages classroom materials and published figures from network agenda-setting research by Chris J. Vargo, Lei Guo, and collaborators. The site and examples are released under an open-source license to encourage reuse in teaching and research.

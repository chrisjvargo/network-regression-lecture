# Introduction to Network Analysis for Quantitative Social Scientists

This lecture is designed for first-semester PhD students in a Networks & Regression methods course.
Open `network_analysis_phd_lecture.html` in any modern browser to view the single-page lecture linking agenda-setting, network structure, and regression intuition.
Interactive labels such as **TRY IT**, **PLAYGROUND**, **INTERACTIVE**, and **Show R code** signal in-class or lab demonstrations that rely on R scripts or browser-based tools.
Use this file as the downloadable handout students should keep alongside their own regression notes.

## JOSS submission materials
- Paper and bibliography live at `paper.md` and `paper.bib` following the JOSS Markdown format.
- Code (HTML/CSS/JS and scripts) is licensed under the MIT License (`LICENSE`).
- Educational content (lecture narrative, custom diagrams created by the author, and handouts) is licensed under CC BY 4.0 (`LICENSE-content`). Third-party figures or PDFs, where referenced, retain their original licenses and are cited in the lecture and/or `paper.md`.
- To build a PDF draft locally with the Open Journals JOSE toolchain: `docker run --rm --volume $PWD:/data --user $(id -u):$(id -g) --env JOURNAL=jose openjournals/inara -i paper.md`.

## Publish to GitHub Pages
- Install GitHub CLI if you do not have it: `brew install gh` (or see https://cli.github.com/).
- From this folder run `./deploy_to_github_pages.sh my-repo-name` (repo name optional; defaults to `network-regression-lecture`). The script will:
  - Open a browser for GitHub auth if you are not logged in.
  - Initialize git (if needed), commit the lecture files, create a public repo, and push to `main`.
  - Turn on GitHub Pages at the repo root.
- Your site will build at `https://<github-username>.github.io/<repo-name>/` with `index.html` redirecting straight to the lecture.

## Contributing and support

Contributions that improve the lecture content, code, or examples are welcome.

- **How to contribute:** Fork the repository on GitHub, create a feature branch, and open a pull request describing your change and its rationale.
- **Bug reports and issues:** Use the repository’s GitHub Issues to report problems with the lecture, broken examples, or documentation gaps. Please include your browser, operating system, and steps to reproduce the issue.
- **Questions and support:** For questions about adopting or adapting this module in your own teaching, open a GitHub Issue labeled `question` or start a GitHub Discussion if enabled.
- **Code of conduct:** All interactions in issues, pull requests, and discussions should follow the JOSE/JOSS Code of Conduct: be respectful, assume good faith, and focus on improving the materials. Maintain a welcoming environment for contributors of all backgrounds.

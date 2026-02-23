# CashOptimizer
Static site for deploying Cash analysis data resources.

This site is created and managed by another repository called **Cash Analyzer**. It is a collection of mostly bash and Javascript (Node) that scrapes various data sources to create this data.
See: https://github.com/AlienShuffle/CashAnalyzer

The **Cash Analyzer** repository normally runs on an Ubuntu WSL instance on my local PC. There is an automation configured for a Cloudflare Pages site that gets run everytime a push is completed to the repository.
The functional site can be found at: https://cashoptimizer.pages.dev/

BTW, most of the data is published in JSON and CSV format. the CSV is mostly used to import into Google Sheets for more advanced reporting and analysis.

There is a Bogleheads forum that discusses this tool, mostly from a user persective. It is where I publish most announcements about updates, bugs, fixes, etc. See: https://www.bogleheads.org/forum/viewtopic.php?p=7203860

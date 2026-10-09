# CashOptimizer
Static site for deploying Cash analysis data resources.

This site is created and managed by another repository called **Cash Analyzer**. It is a collection of mostly bash and Javascript (Node) that scrapes various data sources to create this data.
See: https://github.com/AlienShuffle/CashAnalyzer

The **Cash Analyzer** repository normally runs on an Ubuntu WSL instance on my local PC. There is an automation configured for a Cloudflare Pages site that gets run everytime a push is completed to the repository.
The functional site can be found at: https://cashoptimizer.pages.dev/

BTW, most of the data is published in JSON and CSV format. the CSV is mostly used to import into Google Sheets for more advanced reporting and analysis.

## October 2026 money-market history recovery

The October 9 recovery restores the JSON and CSV histories of 36 money-market funds damaged on October 6 from commit `a92b1f44c250c177b0dfd7e1a1b75f30ebf44831` (October 6, 02:42:15 AM EDT). Original snapshot records take precedence on overlapping dates; all current records for dates absent from that snapshot are preserved. This includes the original pre-2026 Fidelity.com one-, seven-, and thirty-day yields, rather than the replacement EDGAR/CNBC or gap-filled data.

This restores published data only; it does not fix the generating jobs in Cash Analyzer.

There is a Bogleheads forum that discusses this tool, mostly from a user persective. It is where I publish most announcements about updates, bugs, fixes, etc. See: https://www.bogleheads.org/forum/viewtopic.php?p=7203860

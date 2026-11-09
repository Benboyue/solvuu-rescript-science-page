@module("../../styles/solvuu.css?url")
external solvuuCss: string = "default"

type stylesheet = {
  rel: string,
  href: string,
}

let links = () => [
  {
    rel: "stylesheet",
    href: solvuuCss,
  },
]

// A reusable section for the five scientific areas.
let scienceSection = (~title, ~description, ~image, ~href) => {
  <section className="solvuu-science-section">
    <div className="solvuu-science-image">
      <img src=image alt=title />
    </div>

    <div className="solvuu-science-copy">
      <h2> {React.string(title)} </h2>
      <p> {React.string(description)} </p>
      <a className="solvuu-learn-more" href target="_blank" rel="noopener noreferrer">
        {React.string("Learn More →")}
      </a>
    </div>
  </section>
}

// The route component for /solvuu.
@react.component
let default = () => {
  <main className="solvuu-page">
    <section className="solvuu-hero">
      <div className="solvuu-hero-art" />
      <div className="solvuu-hero-gradient" />

      <div className="solvuu-hero-content">
        <div className="solvuu-logo-row">
          <a className="solvuu-logo-link" href="https://solvuu.com/">
            <img className="solvuu-logo" src="/solvuu-assets/solvuu-logo.svg" alt="Solvuu" />
          </a>

          <nav className="solvuu-top-nav">
            <a href="https://solvuu.com/product"> {React.string("Product")} </a>

            <a href="/solvuu" className="solvuu-nav-active"> {React.string("Science")} </a>

            <a href="https://solvuu.com/company"> {React.string("Company")} </a>
          </nav>
        </div>

        <h1 className="solvuu-hero-title">
          {React.string("Advancing Science Through Software")}
        </h1>
      </div>
    </section>

    <div className="solvuu-container">
      <header className="solvuu-intro">
        <div className="solvuu-intro-columns">
          <p>
            {React.string(
              "Our goal is to help experimental biologists and bioinformatics scientists manage, organize, validate, and interpret all types of biological data in context, towards experimental validation and testable hypothesis. Our flagship data management, organization solution and bioinformatics expertise can help you on small and large data science projects.",
            )}
          </p>

          <p>
            {React.string(
              "Whether you are interested in characterizing mutational landscape of cancer genomes, understanding perturbed pathways in stem cells, studying trait improvement in agricultural crops, dissecting disease susceptibility/resistance in aquaculture, or performing longitudinal studies to understand microbial dysbiosis in human health, our bioinformatics solutions can help you reduce millions of data points to a manageable and biologically meaningful set of target biomarkers. We follow community accepted best practices for data analysis, supported by rich, interactive visualization.",
            )}
          </p>
        </div>
      </header>

      <div className="solvuu-science-list">
        {scienceSection(
          ~title="Microbial Genomics",
          ~description="The development of NGS technologies for assaying microbial genetic material in an environment has become a powerful new approach for rapidly characterizing microbial communities, given a significant percentage of the microbes are uncultivable.",
          ~image="/solvuu-assets/microbial-genomics.png",
          ~href="https://solvuu.com/science/microbial-genomics",
        )}

        {scienceSection(
          ~title="Transcriptomics",
          ~description="RNA-seq with next-generation sequencing (NGS) has become the method of choice for researchers interested in characterizing genome-wide gene and transcript expression in a single experiment.",
          ~image="/solvuu-assets/transcriptomics.png",
          ~href="https://solvuu.com/science/transcriptomics",
        )}

        {scienceSection(
          ~title="Gene Regulation",
          ~description="Eukaryotic gene regulatory mechanisms that induce or repress the expression of a gene include structural and chemical changes to the chromatin and the DNA, binding of proteins to specific DNA elements, or mechanisms that modulate translation of mRNA.",
          ~image="/solvuu-assets/gene-regulation.png",
          ~href="https://solvuu.com/science/gene-regulation",
        )}

        {scienceSection(
          ~title="Variant Discovery",
          ~description="With rapidly falling sequencing costs, whole-exome sequencing (WES) and whole-genome sequencing (WGS) using NGS technologies have become de facto standards to characterize individual genomic landscapes to identify causal genomic variants relevant for understanding disease mechanisms, diagnosis and therapy.",
          ~image="/solvuu-assets/variant-discovery.png",
          ~href="https://solvuu.com/science/variant-discovery",
        )}

        {scienceSection(
          ~title="Single-cell Genomics",
          ~description="High-throughput bulk-omics techniques have advanced our understanding of the molecular states of biological systems. However, they can only capture ensemble averages of cell states and are poorly suited to understand cell types, states, transitions, and locations. Massively parallel single cell genomics assays that can profile hundreds of thousands of individual cells is rapidly emerging as a revolutionary technology.",
          ~image="/solvuu-assets/single-cell-genomics.png",
          ~href="https://solvuu.com/science/single-cell-genomics",
        )}
      </div>
    </div>
    <footer className="solvuu-footer">
      <div className="solvuu-footer-inner">
        <div className="solvuu-footer-brand">
          <a href="https://solvuu.com/">
            <img className="solvuu-footer-logo" src="/solvuu-assets/footer-logo.svg" alt="Solvuu" />
          </a>

          <p className="solvuu-footer-tagline">
            {React.string(
              "Exploration Without Limits. A data science platform for life scientists.",
            )}
          </p>

          <div className="solvuu-footer-social">
            <a
              className="solvuu-footer-social-link"
              href="https://x.com/solvuu"
              target="_blank"
              rel="noopener noreferrer"
              ariaLabel="Twitter"
            >
              <svg className="solvuu-footer-icon" fill="currentColor" viewBox="0 0 24 24">
                <path
                  d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"
                />
              </svg>
            </a>

            <a
              className="solvuu-footer-social-link"
              href="https://www.linkedin.com/company/solvuu"
              target="_blank"
              rel="noopener noreferrer"
              ariaLabel="LinkedIn"
            >
              <svg className="solvuu-footer-icon" fill="currentColor" viewBox="0 0 24 24">
                <path
                  d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"
                />
              </svg>
            </a>
          </div>

          <p className="solvuu-footer-copyright">
            {React.string("© 2026 Solvuu, Inc. All rights reserved.")}
          </p>
        </div>

        <nav className="solvuu-footer-primary">
          <a href="https://solvuu.com/"> {React.string("HOME")} </a>
          <a href="https://solvuu.com/product"> {React.string("PRODUCT")} </a>
          <a href="https://solvuu.com/company"> {React.string("COMPANY")} </a>
          <a href="https://www.scienceexchange.com/companies/solvuu">
            {React.string("SERVICES")}
          </a>
        </nav>

        <nav className="solvuu-footer-science">
          <a className="solvuu-footer-science-title" href="/solvuu"> {React.string("SCIENCE")} </a>

          <a href="https://solvuu.com/science/microbial-genomics">
            {React.string("Microbial Genomics")}
          </a>
          <a href="https://solvuu.com/science/transcriptomics">
            {React.string("Transcriptomics")}
          </a>
          <a href="https://solvuu.com/science/gene-regulation">
            {React.string("Gene Regulation")}
          </a>
          <a href="https://solvuu.com/science/variant-discovery">
            {React.string("Variant Discovery")}
          </a>
          <a href="https://solvuu.com/science/single-cell-genomics">
            {React.string("Single Cell Genomics")}
          </a>

          <div className="solvuu-footer-legal">
            <a href="https://solvuu.com/terms"> {React.string("Terms of Use")} </a>
            <a href="https://solvuu.com/privacy"> {React.string("Privacy")} </a>
          </div>
        </nav>
      </div>
    </footer>
  </main>
}

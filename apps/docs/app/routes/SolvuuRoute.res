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

@react.component
let default = () => {
  <main className="solvuu-page">
    <h1> {React.string("Solvuu Science")} </h1>
    <p> {React.string("My first ReScript page is working!")} </p>
  </main>
}

package main

import (
  "fmt"
  "os"
  "github.com/GutenYe/freedom-routes/routes"
  "github.com/ogier/pflag"
)

func genRoutes(templateName string, outputDir string) {
  ips := routes.FetchIps()
  routes.Generate(templateName, ips, outputDir)
}

var USAGE = `
$ freedom-routes [options] <template>

OPTIONS:
  -o, --output="."                 # output directory
`

func main() {
  pflag.Usage = func() {
    fmt.Fprintf(os.Stderr, USAGE)
  }

  var output = pflag.StringP("output", "o", ".", "output directory")
  pflag.Parse()

  if pflag.NArg() == 1 {
    genRoutes(pflag.Arg(0), *output)
  } else {
    pflag.Usage()
  }
}

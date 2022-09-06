version 1.0

workflow HelloWorld {
  call WriteGreeting
}

task WriteGreeting {
  input {
    String name
  }
  command {
     echo "Hello 2 ${name}!"
  }
  output {
     # Write output to standard out
     File output_greeting = stdout()
  }
}

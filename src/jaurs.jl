module jaurs

using Comonicon

@cast mycmd1(arg; option="Sam") = println("cmd1: arg=", arg, "option=", option)
@cast mycmd2(arg; option="Sam") = println("cmd2: arg=", arg, "option=", option)

@main
end

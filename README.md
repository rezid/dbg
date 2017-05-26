## Synopsise

This project can disassembly any x86 intel windows PE file (not UNIX COFF file for now!). it contains also a debugger to execute the loaded program instruction.

## Code Example

Launch 
```
dbg\bin\x32\dbg.exe
```

Open any x86 windows file (.exe, .dll, .lib, ....) in
```
File -> Open
```

After The program loads the file and show the disassembly window, you can begin the analyse

## How to Analyse the File
You can analyse the file statically by reading the disassembly listings, or you can execute instruction by instruction and read the regiters value.

## Supported functionality (already implemented)
- highlighting (not yet customizable, but really helpful)
- stepping (into, over, n instructions, return from function)
- variables creation and manipulation (exemple: var x)
- basic calculations (exemple: var*@401000+.45^4A)
- breakpoints (partially)

## TODO
- help file (needed for command)
- attach/detach debugger in a running application
- asm command
- advanced readprocessmemory (over multiple pages)
- memcpy
- pe data access
- fpu and mmx support ( x86 regiters very complex -_-)
- find asm
- find memory
- mov [mem],#data#,size
- function creation parameter
- isjumpgonnaexecute (helpful in somme situation)
- plugins
- scripting
- thread support
- tls callbacks
- inject dll
- dump memory
- dump process
- set pe data in memory
- va to offset
- offset to va
- getapiname
- float calculations
- command help
- inject asm code
- and or xor commands
- delete mem breakpoints
- delete hw breakpoints
- udd file format
- analysis
- symbol loader
- getlasterror
- display open handles
- log clear command
- tracing(?)
- display source
- patching
- handle view
- window view
- debug strings
- process privileges
- loaded modules
- strings
- references
- callstack
- stack
- heap
- functions
- TEB/TBI
- PEB/PBI
- debug pause
- cpu filename+thread id
- GetAddrInfo/SetAddrInfo
- shift+f7f8f9
- restart (last process)
- log breakpoints

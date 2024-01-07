[![matrix](/assets/matrix.jpg)](https://unsplash.com/photos/FXFz-sW0uwo?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink)

# Learning Assembly

## Take a look at my [assembly](https://pt.wikipedia.org/wiki/Linguagem_assembly) apprenticeship.

In this respository I'll seeall my tests during my assembly apprenticeship. 
If you want to learn it too, take a look at the following references:

- [Tutorials point](https://www.tutorialspoint.com/assembly_programming/) 
- [The Art of Assembly Language](https://www.ic.unicamp.br/~pannain/mc404/aulas/pdfs/Art%20Of%20Intel%20x86%20Assembly.pdf)

also [google](google.com) and [chatgpt](https://chat.openai.com/) are some pretty good tools to understand better some commands, registers, etc. 

# How to run the code

To test these asm codes, I'll need to have installed:  

* [nasm](https://www.nasm.us/) (assembler)
* [ld](https://manpages.ubuntu.com/manpages/trusty/man1/ld.1.html) (linker)

*Note: I'm using linux here, so maybe you'll need a different compiling and linking command to run this porperly!*

For `debian` based linux distros, you can run: 

```bash
    sudo apt update
    sudo apt upgrade
    sudo apt install binutils nasm
```

To install them.

Also, if you use [asdf](https://asdf-vm.com/), I made a plugin to install `nasm` easily, so go to [my repo](https://github.com/Dpbm/asdf-nasm) and follow the instructions. 

---

After that, You can use the [run bash script](./run) as the following:

```bash
    chmod +x ./run
    ./run arquivo.asm
```

---

Another alternative for it, is using the [make](https://www.gnu.org/software/make/) command.

case you don't have it installed:
```bash
    sudo apt update
    sudo apt upgrade
    sudo apt install build-essential make 
```

and then run:

```bash
    # the filename without the .asm extension
    make filename=filename
```

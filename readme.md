[![matrix](/assets/matrix.jpg)](https://unsplash.com/photos/FXFz-sW0uwo?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink)

# Aprendendo Assembly

## Veja meu aprendizado de [assembly](https://pt.wikipedia.org/wiki/Linguagem_assembly)

Aqui você verá todos os meus testes durante meu aprendizado em `Assembly`. Se você se sentir interessado no assunto, [esta](https://www.tutorialspoint.com/assembly_programming/) é a referência que estou usando neste começo.

# Como rodar

para executar os programas em assembly você precisará de dois utilitários:

* [nasm](https://www.nasm.us/) (assembler)
* [ld](https://manpages.ubuntu.com/manpages/trusty/man1/ld.1.html) (linker)

para instalar em distros baseadas em Debian use: 

```bash
    sudo apt-get install binutils nasm
```

apos instalado, para rodar seus projetos de uma forma fácil, use o script [run](./run), fazendo da seguinte forma

```bash
    chmod +x ./run
    ./run arquivo.asm
```

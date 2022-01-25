# Why?
Alternatives like

- Puppet
- Chef
- Ansible
- Saltstack

promise idempotence and reusability, but underdeliver, because

- all of them work sequentially under the hood
- do you really want to use some module someone wrote 5 years ago that includes
  tons of stuff you do not need, but that you need to read [^audit] anyways?

[^audit]: You do audit all the code that you use, right? 😜

They all undergo the same transformation from declarative to turing complete,
so why not use a
[turing complete language](https://www.gnu.org/software/bash/manual/bash.html#Shell-Syntax)
that is
[deployed on basically all linux boxes out there](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
is made for
[system level scripting](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
and is based on
[a standard from the 80s](https://en.wikipedia.org/wiki/POSIX)
instead?

That's what we do.

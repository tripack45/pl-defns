# `pl-defns`

This repo provides a set of LaTeX packages for writings in programming languages. 
The goal of the project is allow users to use each package independent of other. 
However, since LaTeX does not track dependencies statically, there could be breakage. Please report them when you find them. 

You can find (incomplete) set of examples under `examples`.

(Incomplete) List of packages: 

- [`pfpl-denfs`](https://github.com/RobertHarper/pfpl-defns.git), [`pl-syntax` and `pl-judgments`](https://github.com/RobertHarper/pl-syntax). All originally developed by Bob Harper.
    * `pfpl-defns` contains a collection of definitions intended for typesetting the textbook [Practical Foundations for Programming Languages](https://www.cs.cmu.edu/~rwh/pfpl.html).
    * `pl-syntax` and `pl-judgments` are smaller sets, but modernized definitions achieving similar purposes. 
    * `pfpl-defns` is [forked](git@github.com:tripack45/pfpl-defns.git) to play nice with the two newer packages.
- `prose-abbrev` provides common abbreviations for prose.
- `labelled-rules` provides macros for type-setting rules that come with
  referenceable labels.
- `apx-ref` provides tools to reference to the Appendix.
- `pl-defns-lr` provides definitions useful for defining logical relations.
- `pl-defns-typop` provides definitions useful for defining type operators.

This repo also come with definitions specific to various calculi

- `ctillst-*` collection of packages contains definitions for the `ctillst` language. 
- `pl-defns-adjunctions` for adjoint types.
- `pl-defns-lineary` for linear types.

## Instructions for use

To use the packages in your LaTeX project, follow the following steps. You 
have the option to set it up "globally" (recommended) or "locally".

### Setup the package

1. Clone the entire repository fully, including all its submodules. This step only need to be carried out once per machine.

```
git clone --recursive git@github.com:tripack45/pl-defns.git 
```
2. Suppose the root of the repository is in `$DIR`. 

Perform the following two steps if you with to set it globally. Skip them if not.
You only need to perform these instructions once per machine.

3. Modify the content of `latexmkrc.global` to point to root of the repository. It should like below with `$DIR` replaced with the directory of project root.

```
# Sets up search path for defns
$GLOBAL_PL_DEFNS_ROOT="$DIR";
```

4. Append `latexmkrc.global` to your global `latexmkrc`. Create the file if it doesn't exist already.

```
cat latexmkrc/latexmkrc.global >> ~/.latexmkrc
```

### Setup for a new project

For a LaTeX project whose project root is `$PROJECT_ROOT`:

1. Copy `latexmkrc.project` to your project root.

```
cp latexmkrc/latexmkrc.project >> $PROJECT_ROOT/latexmkrc
```

If you opted to set up globally, this is all you need to do.

2. Other-wise you need to modify the copied over `latexmkrc` for following 
the instructions inside and modify `$PL_DEFNS_ROOT` in the else branch 
to point to `$DIR`.

```perl
if (...) {
    ...
} else {
    $PL_DEFNS_ROOT="$DIR";
}
```

## Contribute

Issue a pull request that:

1. Place your `package.sty` appropriately under `defns/`. 
   If it's a separate collection in its own directory.
2. If you placed them in a separate directory, modify the definition of variable `@PATHS` in `bin/env.pl` to add a line for that directory.

Send the pull request.

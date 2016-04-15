# bulk-maven 1.0

## Description

A small batch file to ease you to build Maven projects via command line.


## Usage

```
$> bulk-maven.bat ["maven-life-cycle-commands"] ["directory-patterns-separated-by-spaces"]
```


## Examples

Suppose you place `bulk-maven.bat` to your workspace and the structure of your workspace consists of several `POM` projects:

```
your-workspace
    |- bulk-maven.bat
    |
    |- super-module
    |- smaller-module
    |- prototyping-projects
    |- my-little-maven-module
```

### Apply to all projects in your workspace

```
$> bulk-maven.bat "clean validate"
```

The above command will run `mvn clean validate` to all sub-projects.


### Apply to only some specific projects

```
$> bulk-maven.bat "clean verify" "smaller-module my-little-maven-module"
```

The above command will run in specified order `mvn clean verify smaller-module` and then `mvn clean verify my-little-maven-module`.

### Apply to projects using wildcards

```
$> bulk-maven.bat "clean install" "*module my-little*"
```

The above command will filter our any project whose name matches with either of the specified pattern and then apply `mvn clean install` to each.
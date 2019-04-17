# PyBuild-dep

PyBuild-dep is a bash script using pipreqs to construct a requirement.txt with import from all ".py" files in a project.
It will look recursively for ".py" files in the specified project directory.
It will exclude all ".py" files contained in "venv" directory.

The goal of the script it's to help you maintain a clean requirements, it's not a magic script, nor perfect.
Always check the result.

## Installation

### Requirements
* Python 3 and up
* pipreqs
* Bash

## 
`$ pip install pipreqs`

## Usage

```bash
./build-dependencies.sh "../../myProject" #Path to your project root
```

## Watch out !
By default we add Django package because it's being developed for django use.
In case of missing dependencies or special cases to handle, you can add dependencies to "add-your-dep.txt" they will be added. 

## License
[GPL-3.0]

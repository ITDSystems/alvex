[![Build Status](https://travis-ci.org/ITDSystems/alvex-meta.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-meta)

Alvex
=====

This repository contains all Alvex components as submodules. This repository may be used for two purposes:
* build all components from source;
* package pre-built jars into a single zip file that contains only required components.

Building all components
-----------------------

To build all components from source use `mvn clean package` to produce *amps* or `mvn -P make-jar clean package` to produce installable *jars*.

Packaging pre-built jars
------------------------

To create zip file that contains only required Alvex components use `mvn -f packaging_pom.xml -P MODULES package`, where `MODULES` is comma-separated list of modules.
At the moment following modules are available:

* [board-collaboration](https://github.com/ITDSystems/alvex-board-collaboration)
* [custom-workflows](https://github.com/ITDSystems/alvex-custom-workflows)
* [orgchart](https://github.com/ITDSystems/alvex-orgchart)

Zip produced during packaging contains two folders `repo` and `share` with jars that are supposed to be installed to corresponding Alfresco war.

Component build status (latest version):

| Component                                                                                                | Status                                                                                                                                                                                |
|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Common](https://github.com/ITDSystems/alvex-common)                                                     | [![Build Status](https://travis-ci.org/ITDSystems/alvex-common.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-common)                                                     |
| [Custom workflows](https://github.com/ITDSystems/alvex-custom-workflows)                                 | [![Build Status](https://travis-ci.org/ITDSystems/alvex-custom-workflows.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-custom-workflows)                                 |
| [Orgchart](https://github.com/ITDSystems/alvex-orgchart)                                                 | [![Build Status](https://travis-ci.org/ITDSystems/alvex-orgchart.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-orgchart)                                                 |
| [Uploader](https://github.com/ITDSystems/alvex-uploader)                                                 | [![Build Status](https://travis-ci.org/ITDSystems/alvex-uploader.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-uploader)                                                 |
| [Project management](https://github.com/ITDSystems/alvex-project-management)                             | [![Build Status](https://travis-ci.org/ITDSystems/alvex-project-management.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-project-management)                             |
| [Reports](https://github.com/ITDSystems/alvex-reports)                                                   | [![Build Status](https://travis-ci.org/ITDSystems/alvex-reports.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-reports)                                                   |
| [Manager dashboard tasks](https://github.com/ITDSystems/alvex-manager-dashboard-tasks)                   | [![Build Status](https://travis-ci.org/ITDSystems/alvex-manager-dashboard-tasks.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-manager-dashboard-tasks)                   |
| [Inform policy](https://github.com/ITDSystems/alvex-inform-policy-extension)                             | [![Build Status](https://travis-ci.org/ITDSystems/alvex-inform-policy-extension.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-inform-policy-extension)                   |
| [Workflow shortcut dashlet](https://github.com/ITDSystems/alvex-workflow-shortcut-dashlet)               | [![Build Status](https://travis-ci.org/ITDSystems/alvex-workflow-shortcut-dashlet.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-workflow-shortcut-dashlet)               |
| [Infavorites document association](https://github.com/ITDSystems/alvex-infavorites-document-association) | [![Build Status](https://travis-ci.org/ITDSystems/alvex-infavorites-document-association.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-infavorites-document-association) |
|                                                                                                          |                                                                                                                                                                                       |
| **Meta**                                                                                                 | [![Build Status](https://travis-ci.org/ITDSystems/alvex-meta.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-meta)                                                         |


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

* [custom-workflows](https://github.com/ITDSystems/alvex-custom-workflows)
* [orgchart](https://github.com/ITDSystems/alvex-orgchart)
* [uploader](https://github.com/ITDSystems/alvex-uploader)
* [project-management](https://github.com/ITDSystems/alvex-project-management)
* [reports](https://github.com/ITDSystems/alvex-reports)
* [manager-dashboard-tasks](https://github.com/ITDSystems/alvex-manager-dashboard-tasks)
* [inform-policy](https://github.com/ITDSystems/alvex-inform-policy-extension)
* [workflow-shortcut-dashlet](https://github.com/ITDSystems/alvex-workflow-shortcut-dashlet)
* [infavorites-document-association](https://github.com/ITDSystems/alvex-infavorites-document-association)
 
Zip produced during packaging contains two folders `repo` and `share` with jars that are supposed to be installed to corresponding Alfresco war.

**Note**: this project requires Maven 3.3.9 at least.

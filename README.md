**This extensions pack for Alfresco is obsolete and unsupported. Use it on your own risk.**

Component build status (latest version):

| Component  | Component State | Build Status |
|----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Utils](https://github.com/ITDSystems/alvex-utils)           | Ready to use                                            | [![Build Status](https://travis-ci.org/ITDSystems/alvex-utils.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-utils)                                                       |
| [Orgchart](https://github.com/ITDSystems/alvex-orgchart)                   | Ready to use                                   | [![Build Status](https://travis-ci.org/ITDSystems/alvex-orgchart.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-orgchart)                                                 |
| [Manager dashboard tasks](https://github.com/ITDSystems/alvex-manager-dashboard-tasks)                | Ready to use        | [![Build Status](https://travis-ci.org/ITDSystems/alvex-manager-dashboard-tasks.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-manager-dashboard-tasks)                   |
| [Uploader](https://github.com/ITDSystems/alvex-uploader)        | Ready to use                                              | [![Build Status](https://travis-ci.org/ITDSystems/alvex-uploader.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-uploader)                                                 |
| [Inform policy](https://github.com/ITDSystems/alvex-inform-policy-extension)       | Ready to use                           | [![Build Status](https://travis-ci.org/ITDSystems/alvex-inform-policy-extension.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-inform-policy-extension)                   |
| [Workflow permissions](https://github.com/ITDSystems/alvex-workflow-permissions)     | Ready to use                         | [![Build Status](https://travis-ci.org/ITDSystems/alvex-workflow-permissions.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-workflow-permissions)                         |
| [Infavorites document association](https://github.com/ITDSystems/alvex-infavorites-document-association) | Ready to use     | [![Build Status](https://travis-ci.org/ITDSystems/alvex-infavorites-document-association.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-infavorites-document-association) |
| [Datagrid](https://github.com/ITDSystems/alvex-datagrid)                                               | Unstable       | [![Build Status](https://travis-ci.org/ITDSystems/alvex-datagrid.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-datagrid)                                                 |
| [Masterdata](https://github.com/ITDSystems/alvex-masterdata)                                           | Unstable  | [![Build Status](https://travis-ci.org/ITDSystems/alvex-masterdata.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-masterdata)                                             |
| [Middle name](https://github.com/ITDSystems/alvex-middle-name)                                        | Ready to use        | [![Build Status](https://travis-ci.org/ITDSystems/alvex-middle-name.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-middle-name)                                           |
| [Business calendar](https://github.com/ITDSystems/alvex-business-calendar)                             | Ready to use       | [![Build Status](https://travis-ci.org/ITDSystems/alvex-business-calendar.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-business-calendar)                               |
| [Aikau Components](https://github.com/ITDSystems/alvex-aikau-components)                             | Ready to use       | [![Build Status](https://travis-ci.org/ITDSystems/alvex-aikau-components.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-aikau-components)                               |
| [Registers](https://github.com/ITDSystems/alvex-registers)                              | In development | [![Build Status](https://travis-ci.org/ITDSystems/alvex-registers.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-registers)                               |
| [Project management (deprecated)](https://github.com/ITDSystems/alvex-project-management)                     | Deprecated        | [![Build Status](https://travis-ci.org/ITDSystems/alvex-project-management.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-project-management)                             |
| [Custom workflows (deprecated)](https://github.com/ITDSystems/alvex-custom-workflows)                         | Deprecated        | [![Build Status](https://travis-ci.org/ITDSystems/alvex-custom-workflows.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex-custom-workflows)                                 |
|                                                                                                          |                                                                                                                                                                                       |
| **Meta**                                                                                 |                 | [![Build Status](https://travis-ci.org/ITDSystems/alvex.svg?branch=master)](https://travis-ci.org/ITDSystems/alvex)                                                                   |


# Alvex

This repository contains all Alvex components as dependencies. This repository is supposed to be used to package 
pre-built jars into a single zip file that contains only required components.

# Build

There are several ways to build Alvex.

**Note**: this project requires Maven 3.3.9 at least.

## RECOMMENDED WAY: Include Alvex to your project via maven configuration

To include Alvex to your Alfresco Maven SDK project, add the following configuration to the repo-side pom.xml:

```
<dependencies>
  <dependency>
    <groupId>com.alvexcore.repo</groupId>
    <artifactId>utils</artifactId> // use here artifactId of the component you want to use
    <version>1.19-SNAPSHOT</version> // chech the current version of the component
    <classifier>installable</classifier>
  </dependency>
  ... // other dependencies
</dependencies>

<repositories>
    <repository>
        <id>alvex-public</id>
        <url>http://nexus.itdhq.com/content/repositories/snapshots/</url>
    </repository>
</repositories>
```

For share-side pom.xml use similar configuration:
```
<dependencies>
  <dependency>
    <groupId>com.alvexcore.share</groupId>
    <artifactId>utils</artifactId> // use here artifactId of the component you want to use
    <version>1.19-SNAPSHOT</version> // chech the current version of the component
    <classifier>installable</classifier>
  </dependency>
  ... // other dependencies
</dependencies>

<repositories>
    <repository>
        <id>alvex-public</id>
        <url>http://nexus.itdhq.com/content/repositories/snapshots/</url>
    </repository>
</repositories>
```

## Build component from source

Although in most cases there is no need to build a **single** component from source, one may use the following steps to do it:

1. Clone desired component repository (e.g. [orgchart](https://github.com/ITDSystems/alvex-orgchart)) and checkout specific release tag (or just HEAD to build latest version).
2. Run `mvn clean install` or `mvn -P make-jar clean install` to build `amp` or `jar` respectively and install it to local repository. Note, that almost every component has `repo` and `share` extension, thus previous command has to be run two times in different folders. Also not that JAR produced by `make-jar` profile **does not** contain all component dependencies (if any) thus usage of such single JAR most probably will break an Alfresco installation.

Since Alvex components use Alfresco Maven SDK 2.x it's possible to use all facilities provided by SDK (e.g. `-P amp-to-war integration-test`).


## Package pre-built jars

The simplest and recomended way to build Alvex is to package pre-built jars from Nexus into single zip archive. One can do it using the following steps:

1. Clone [this](https://github.com/ITDSystems/alvex) repository and checkout specific release tag (or just HEAD to build latest version).
2. Produce single zip file using command `mvn -P <COMPONENTS> clean package`, where `<COMPONENTS>` is a comma-separated list of Alvex components to include into archive. At the moment following components are available:
   * [custom-workflows](https://github.com/ITDSystems/alvex-custom-workflows)
   * [orgchart](https://github.com/ITDSystems/alvex-orgchart)
   * [uploader](https://github.com/ITDSystems/alvex-uploader)
   * [project-management](https://github.com/ITDSystems/alvex-project-management)
   * [manager-dashboard-tasks](https://github.com/ITDSystems/alvex-manager-dashboard-tasks)
   * [inform-policy](https://github.com/ITDSystems/alvex-inform-policy-extension)
   * [workflow-permissions](https://github.com/ITDSystems/alvex-workflow-permissions)
   * [infavorites-document-association](https://github.com/ITDSystems/alvex-infavorites-document-association)
   * [datagrid](https://github.com/ITDSystems/alvex-datagrid)
   * [masterdata](https://github.com/ITDSystems/alvex-masterdata)
   * [middle-name](https://github.com/ITDSystems/alvex-middle-name)
   * [business-calendar](https://github.com/ITDSystems/alvex-business-calendar)
   * [aikau-components](https://github.com/ITDSystems/alvex-aikau-components)
   * [registers](https://github.com/ITDSystems/alvex-registers)

Final zip archive contains two folders `repo` and `share` with jars that should to be copied to `$ALF_DIR/modules/platform` and `$ALF_DIR/modules/share` folders respectively.



# Episode 2: Salesforce Developer Tooling

This episode takes you through the basics of building apps on Salesforce. While there isn't any code in this episode, this knowledge is foundational to developing on Salesforce. 

## Watch
Check out the episode on [Salesforce+](https://www.salesforce.com/plus/series/howtodev_/episode/episode-s1e2) to learn more.

## Salesforce Developer Tooling

In episode two we walk you through the process of building the Dreamhouse app using Salesforce CLI and Visual Studio Code. We delve into querying data with SOQL, analyzing metadata, and harnessing the power of Salesforce APIs to create a seamless and polished user experience. Join me as we unlock the potential of these tools and technologies for your development journey.

### Salesforce CLI
The Salesforce CLI (Command-Line Interface) is a powerful tool provided by Salesforce that allows developers to interact with the Salesforce platform directly from the command line. It provides a set of commands and utilities for various development tasks, such as deploying and retrieving metadata, managing orgs, executing Apex code, running tests, and more. The Salesforce CLI simplifies and streamlines the development process by enabling developers to automate tasks, work efficiently with version control systems, and integrate with other development tools and workflows.

Get the [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)

### Visual Studio Code
also refered to as VS Code is the go-to code editor for Salesforce developers. It's free, open-source, and available for Windows, Linux, and macOS. This editor has easy-to-install extensions for syntax highlighting, code completion, and more.

Get [Visual Studio Code](https://code.visualstudio.com/download)

### Salesforce Extensions
Salesforce extensions for VS Code are a set of tools that enhance the Visual Studio Code editor for Salesforce development. They provide features like code completion, syntax highlighting, and easier deployment, making it more convenient to work with Salesforce code and metadata.

Get the [Salesforce Extensions](https://developer.salesforce.com/tools/vscode)


### SOQL
Salesforce Object Query Language, is a specialized query language used within the Salesforce platform. It allows developers to query and retrieve data from the Salesforce database by specifying the object, fields, and conditions in a structured query syntax. Similar to SQL, SOQL provides powerful capabilities for searching, filtering, and sorting data, enabling developers to efficiently access and manipulate records in their Salesforce org. SOQL plays a crucial role in building data-driven applications and extracting meaningful insights from Salesforce data.

Learn about [SOQL](https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_soql)

### Object Metadata
In the episode we show that all Salesforce objects and fields are stored as metadata. 

This is the metadata representation of the Days on the Market Field. 

```
<?xml version="1.0" encoding="UTF-8"?>
<CustomField xmlns="http://soap.sforce.com/2006/04/metadata">
    <fullName>Days_On_Market__c</fullName>
    <externalId>false</externalId>
    <formula>TODAY() - Date_Listed__c</formula>
    <formulaTreatBlanksAs>BlankAsZero</formulaTreatBlanksAs>
    <label>Days On Market</label>
    <precision>18</precision>
    <required>false</required>
    <scale>0</scale>
    <trackHistory>false</trackHistory>
    <trackTrending>false</trackTrending>
    <type>Number</type>
    <unique>false</unique>
</CustomField>
```

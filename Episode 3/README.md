
# Episode 3: Code in Salesforce with Apex, SOQL, and DML

In episode we explore the power of Apex, Salesforce's programming language. We create an Apex classe, use SOQL to access property records, and use DML to manipulate data. This sets us up to start manipulating the data layer that we have explored in the first two episodes. 
## Watch
Check out the episode on [Salesforce+](https://www.salesforce.com/plus/series/howtodev_/episode/episode-s1e3) to learn more.
## Manipulating the data layer

The episode covers creating Apex classes, utilizing features like SOQL queries and DML operations, and integrating Apex code into the Dreamhouse app, showcasing the basics of Apex development.

### Apex
Apex is a programming language created by Salesforce, used to build custom business logic and automate processes within the platform. It allows developers to create more advanced functionality, like triggers or custom web services, to extend Salesforce beyond its out-of-the-box capabilities.

Get started with [Apex](https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_intro)

### DML
DML, or Data Manipulation Language, is a set of statements in Salesforce used to create, update, delete, and restore data records. In the context of Salesforce, DML is often used with Apex code to perform operations on the database, such as inserting new records or updating existing ones.

Learn about [DML in Apex](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_dml_section.htm)

## Examples

#### Query Records in Apex and return a list

```
public static List < Property__c > getProperties() {
    try {
        // Use SOQL to Query the property records and assign them to a list
        List < Property__c > propertyList = [SELECT Id, Name, Date_Listed__c, Days_On_The_Market__c, Price__c FROM Property__c WITH User_Mode ORDER BY Days_On_The_Market__c];
        return propertyList;
    } catch (Exception ex) {
        throw new AuraHandledException(ex.getMessage());
    }
}
```

#### Create a Property Record

```
public static Property__c createProperty(String propertyName) {
    try {
        // Create a new property record and set the values
        Property__c newProperty = new Property__c();
        newProperty.Name = propertyName;
        newProperty.Date_Listed__c = Date.today();
        // Use the insert keyword to insert the new property record
        insert newProperty;
        return newProperty;
    } catch (Exception ex) {
        throw new AuraHandledException(ex.getMessage());
    }
}
```

#### Update a list of Property Records

```
public static List < Property__c > updateProperties() {
    try {
        // Get the list of properties
        List < Property__c > propertyList = getProperties();
        // Iterate over the property list
        for (Property__c property: propertyList) {
            // Update the existing value to Available
            property.Status__c = 'Available';
        }
        // Update the records
        update propertyList;
        return propertyList;
    } catch (Exception ex) {
        throw new AuraHandledException(ex.getMessage());
    }
}
```

#### Delete a list of Property Records

```
public static void deleteProperties() {
    try {
        // Get the list of properties
        List < Property__c > propertyList = getProperties();
        // Delete the records
        delete propertyList;
    } catch (Exception ex) {
        throw new AuraHandledException(ex.getMessage());
    }
}
```
View the class in the Directory


## Salesforce Postman Collection
The Salesforce API Postman collection is a set of pre-built API requests and configurations designed to be used with the Postman API development tool. It provides a convenient way for developers to interact with and test Salesforce's REST and SOAP APIs, making it easier to authenticate, send requests, and receive responses from the Salesforce platform.

Learn about the [Salesforce API Postman Collection](https://developer.salesforce.com/blogs/2020/03/explore-the-salesforce-apis-with-a-postman-collection)

## Apex Recipes Sample App
Apex Recipes is a library of concise, meaningful examples of code for common use cases utilizing best practices. They reflect enterprise patterns that can be utilized
for real world solutions and should relevant to developers of all skill levels. The code is intended to reflect clarity while trying to maintain brevity. See the Table of Contents for installation options. We recommend using the [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli) and a scratch org for your initial deployment.

<div>
   <img src="https://res.cloudinary.com/hy4kyit2a/f_auto,fl_lossy,q_70/learn/projects/quick-start-explore-the-apex-recipes-sample-app/185b61248727a9711d31e2f54b62e230_badge.png" align="left" alt="Trailhead Badge" height="40px" width="40px"/>
   <p>Learn more about this app by completing the <a href="https://trailhead.salesforce.com/content/learn/projects/quick-start-explore-the-apex-recipes-sample-app">Quick Start: Explore the Apex Recipes Sample App</a> Trailhead project.</p>
</div>
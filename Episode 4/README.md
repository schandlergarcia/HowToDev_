
# Episode 4 - Build Lightning Web Components

In Episode 4, we dive into the world of Lightning Components! We explores the foundation of Lightning Experience and the flexibility it provides in breaking down pages into components. Then we create a PropertyList component using Lightning Web Components, showcase the power of the Salesforce Lightning Design System for styling, and introduces Base Lightning Components for simplified development.





## Watch
Check out the episode on [Salesforce+](https://www.salesforce.com/plus/series/howtodev_/episode/episode-s1e4) to learn more.
## Getting started with Lightning

The episode covers creating Apex classes, utilizing features like SOQL queries and DML operations, and integrating Apex code into the Dreamhouse app, showcasing the basics of Apex development.

### Lightning Experience
Lightning Experience serves as the foundation for the Salesforce user interface. It enables developers to break down pages into components, providing standard design and functionality. Stephan emphasizes the vast functionality available within Lightning, including custom components, standard components, and third-party components.

Get started with [Lightning](https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_intro)

### Understanding Lightning Web Components (LWCs)
Base Lightning Components are like supercharged building blocks that Salesforce provides to developers. They're prebuilt, ready-to-use Lightning Web Components (LWCs) that save you time and effort. With Base Lightning Components, you can quickly add powerful UI elements, data input/output features, and navigation components to your Salesforce applications, giving your users an amazing experience without reinventing the wheel. It's like having a secret stash of developer superpowers at your fingertips.

Learn about [Lightning Web Components](https://trailhead.salesforce.com/content/learn/trails/build-lightning-web-components)

### Simplifying Development with Base Lightning Components
Base Lightning Components are a library of prebuilt Lightning Web Components (LWCs) provided by Salesforce. They offer a set of ready-to-use components that developers can leverage to accelerate development and simplify the implementation of common functionalities in Salesforce applications. These components include UI elements, data input/output components, navigation elements, and more, allowing developers to enhance user experience and productivity without having to build components from scratch.

View the [Lightning Component Library](https://developer.salesforce.com/docs/component-library/overview/components)

### The Salesforce Lightning Design System
The Salesforce Lightning Design System (SLDS) is like a magical toolkit for developers and designers. It's a comprehensive collection of styles, components, and resources that ensure your Salesforce applications have a consistent and visually stunning user interface. With SLDS, you can effortlessly bring a touch of Salesforce's design magic to your apps, creating a seamless and delightful user experience. It's like having a secret recipe for making your apps look and feel amazing, all while saving you precious development time.

View the [Salesforce Lightning Design System](https://getslds.com)


### Examples

#### Use the wire decorator to get the propertyList from Apex

```
import { LightningElement, wire } from 'lwc';
import getProperties from "@salesforce/apex/PropertyService.getProperties";

export default class PropertyList extends LightningElement {
    
    @wire(getProperties) propertyList;

}
```


#### Conditionally render the property list

```
<template if:true={propertyList}>
    <!-- Content -->
</template>
```

#### Iterate over the propertyRecord array
```
<template for:each={propertyList.data} for:item="record">
    <lightning-layout-item key={record.Id} padding="around-small" size="4">
        <lightning-tile label={record.Name}>
            <p><lightning-formatted-number value={record.Price__c} format-style="currency" currency-code="USD"></lightning-formatted-number></p>
            <p class="slds-truncate" title="Days on the Market">Days on the Market: {record.Days_On_The_Market__c}</p>
        </lightning-tile>
    </lightning-layout-item>
</template>
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

View the component in the Directory



## Getting started with Automation

This episode covers the different types of Flows and how they enable developers to build with without code while still enabling them to extend the platform WITH code. We then take a look at how you can create triggers to enrich data by integrating a 3rd party service. 

### Salesforce Flow
Salesforce Flow is a no-code tool for automating business processes. It enables users to design custom workflows with a visual, drag-and-drop interface for streamlined, interactive experiences. 

There are quite a few different types of flows that you need to be aware of. 

* First you have Screen flows,  they are flows that run in the UI...think of them like a wizard made up of multiple screens that users can interact with. 
* Then you have flows that run in the background
    * Autolaunched flows
    * Record Triggered flows
    * Platform Event Triggered flows
    * And more!

Learn more about [Salesforce Flow](https://trailhead.salesforce.com/content/learn/modules/flow-basics/go-with-the-flow-th)

### Apex Triggers
Triggers are pieces of code that execute automatically in response to specific events, like creating, updating, or deleting records in Salesforce. They help ensure data consistency and enforce business rules by performing custom actions before or after these events occur.

There are two types of triggers. 
* Before triggers are used to update or validate record values before they’re saved to the database.
* and After triggers are used to access field values that are set by the system and make changes to other records. 

Learn about [Triggers](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers.htm)

### Queueables
A Queueable is an interface that represents a unit of work that can be added to the Apex job queue. Apex jobs are asynchronous and run in the background, which helps ensure that long-running or resource-intensive processes don't block the execution of other tasks in the application.
Get hands on with [Queueables](https://trailhead.salesforce.com/content/learn/modules/asynchronous_apex/async_apex_queueable)


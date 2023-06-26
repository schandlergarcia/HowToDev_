
# Episode 6 - Completing and Launching Your Salesforce App

Throughout this series, we've delved deep into Salesforce development, exploring a range of topics and techniques to create a powerful app that enhances user experience and efficiency. In this finale, we bring it all together and transform our simple, data-driven interface into a visually polished and intuitive application.
## Watch
Check out the episode on [Salesforce+](https://www.salesforce.com/plus/series/howtodev_/episode/episode-s1e6) to learn more.
## Bringing it All Together

Throughout this series, we've covered a wide range of topics and techniques, each contributing to the creation of our powerful app. Let's briefly recap what we've learned:

* Creating the Property Object: We started by building the foundation of our app, the property object, which serves as the backbone for our data.

* Querying with CLI and VS Code: We harnessed the power of the Command Line Interface (CLI) and Visual Studio Code (VS Code) to perform queries on the property object using SOQL.

* Leveraging Apex: We explored the capabilities of Apex, Salesforce's programming language, to develop the PropertyService Class. This class allowed us to efficiently query property records.

* Lightning Web Component: To provide a user-friendly interface, we created a Lightning Web Component that beautifully displayed the queried property records.

* Automation with Flow and Triggers: We made our app more efficient by implementing automation using Flow and Triggers. This simplified the record creation process and even enhanced data using an API.

## Bringing it All Together

Now, in this final episode, we're excited to reveal the finishing touches that bring our app to life. Let's dive into the exciting new components we've added:

### The Property Filter Component
With this component, users can refine their property searches using various filters. As filters are adjusted, the list of properties dynamically updates, providing real-time results. The implementation of the Lightning Messaging Service enables seamless communication between components, enhancing interactivity.

### The Property Viewer Component
By clicking on a property record, users can access detailed information, including images and property data. Additionally, we integrated a map component to enrich the visual experience and further enhance functionality.

## Distribution and Deployment

Now that our Dreamhouse app is ready to make an impact, it's time to consider distribution. We accomplish this using Permission Sets, which provide access to tools and functions without altering user profiles. Here's the distribution process:

## Permission Sets
By selecting the Dreamhouse Permission Set, we grant comprehensive access to the app's objects, settings, and Apex classes, ensuring a seamless user experience.

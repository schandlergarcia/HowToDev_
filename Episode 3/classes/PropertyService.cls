    
    public static List<Property__c> getProperties() {
        try {
            // Use SOQL to Query the property records and assign them to a list
            List<Property__c> propertyList = [SELECT Id, Name, Date_Listed__c, Days_On_The_Market__c, Price__c FROM Property__c WITH User_Mode ORDER BY Days_On_The_Market__c];
            return propertyList;
        } catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }

    public static Property__c createProperty(String propertyName){
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

    public static List<Property__c> updateProperties(){
        try {
            // Get the list of properties
            List<Property__c> propertyList = getProperties();
            // Iterate over the property list
            for (Property__c property : propertyList) {
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

    public static void deleteProperties(){
        try {
            // Get the list of properties
            List<Property__c> propertyList = getProperties();
            // Delete the records
            delete propertyList;
        } catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }

}
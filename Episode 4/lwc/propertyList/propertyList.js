import { LightningElement, wire } from 'lwc';
import getProperties from "@salesforce/apex/PropertyService.getProperties";

export default class PropertyList extends LightningElement {
    
    @wire(getProperties) propertyList;

}
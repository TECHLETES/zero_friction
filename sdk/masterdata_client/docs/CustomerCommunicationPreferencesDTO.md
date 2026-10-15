# CustomerCommunicationPreferencesDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**culture** | **str** |  | [optional] 
**invoice_communication_preferences** | [**List[InvoiceCommunicationPreferenceDTO]**](InvoiceCommunicationPreferenceDTO.md) |  | [optional] 
**annual_statement_communication_preference** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**prepayment_statement_communication_preference** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**collection_flow_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.customer_communication_preferences_dto import CustomerCommunicationPreferencesDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerCommunicationPreferencesDTO from a JSON string
customer_communication_preferences_dto_instance = CustomerCommunicationPreferencesDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerCommunicationPreferencesDTO.to_json())

# convert the object into a dict
customer_communication_preferences_dto_dict = customer_communication_preferences_dto_instance.to_dict()
# create an instance of CustomerCommunicationPreferencesDTO from a dict
customer_communication_preferences_dto_from_dict = CustomerCommunicationPreferencesDTO.from_dict(customer_communication_preferences_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



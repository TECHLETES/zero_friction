# CustomerMandateDTO

Represents a mandate associated with a customer's bank account.  This DTO contains information about the mandate's status, type, and relevant dates.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **str** | The unique mandate number. | [optional] 
**signed_date_time** | **datetime** | The date and time when the mandate was signed. | [optional] 
**cancelled_date_time** | **datetime** | The date and time when the mandate was cancelled, if applicable. | [optional] 
**type** | [**MandateType**](MandateType.md) | The type of mandate (e.g., SEPA, B2B). | [optional] 
**status** | [**MandateStatus**](MandateStatus.md) | The current status of the mandate. | [optional] 

## Example

```python
from billing_client.models.customer_mandate_dto import CustomerMandateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerMandateDTO from a JSON string
customer_mandate_dto_instance = CustomerMandateDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerMandateDTO.to_json())

# convert the object into a dict
customer_mandate_dto_dict = customer_mandate_dto_instance.to_dict()
# create an instance of CustomerMandateDTO from a dict
customer_mandate_dto_from_dict = CustomerMandateDTO.from_dict(customer_mandate_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



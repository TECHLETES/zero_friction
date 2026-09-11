# CustomerMandateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **str** |  | [optional]
**signed_date_time** | **datetime** |  | [optional]
**cancelled_date_time** | **datetime** |  | [optional]
**type** | [**MandateType**](MandateType.md) |  | [optional]
**status** | [**MandateStatus**](MandateStatus.md) |  | [optional]
**company_bank_account_id** | **str** |  | [optional]

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

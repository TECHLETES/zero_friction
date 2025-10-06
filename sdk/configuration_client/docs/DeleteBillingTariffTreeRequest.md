# DeleteBillingTariffTreeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**billing_tariff_ids** | **List[str]** |  | [optional] 

## Example

```python
from configuration_client.models.delete_billing_tariff_tree_request import DeleteBillingTariffTreeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteBillingTariffTreeRequest from a JSON string
delete_billing_tariff_tree_request_instance = DeleteBillingTariffTreeRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteBillingTariffTreeRequest.to_json())

# convert the object into a dict
delete_billing_tariff_tree_request_dict = delete_billing_tariff_tree_request_instance.to_dict()
# create an instance of DeleteBillingTariffTreeRequest from a dict
delete_billing_tariff_tree_request_from_dict = DeleteBillingTariffTreeRequest.from_dict(delete_billing_tariff_tree_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# UpdateBillingTariffTreeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**activity_period** | [**DateRange**](DateRange.md) |  | [optional] 
**deleted_billing_tariff_ids** | **List[str]** |  | [optional] 
**nodes** | [**List[BillingTariffNodeDTO]**](BillingTariffNodeDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_billing_tariff_tree_request import UpdateBillingTariffTreeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBillingTariffTreeRequest from a JSON string
update_billing_tariff_tree_request_instance = UpdateBillingTariffTreeRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBillingTariffTreeRequest.to_json())

# convert the object into a dict
update_billing_tariff_tree_request_dict = update_billing_tariff_tree_request_instance.to_dict()
# create an instance of UpdateBillingTariffTreeRequest from a dict
update_billing_tariff_tree_request_from_dict = UpdateBillingTariffTreeRequest.from_dict(update_billing_tariff_tree_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



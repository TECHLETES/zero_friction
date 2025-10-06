# CreateBillingTariffTreeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**product_id** | **str** |  | [optional] 
**activity_period** | [**DateRange**](DateRange.md) |  | [optional] 
**nodes** | [**List[CreateBillingTariffNodeRequest]**](CreateBillingTariffNodeRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_billing_tariff_tree_request import CreateBillingTariffTreeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateBillingTariffTreeRequest from a JSON string
create_billing_tariff_tree_request_instance = CreateBillingTariffTreeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateBillingTariffTreeRequest.to_json())

# convert the object into a dict
create_billing_tariff_tree_request_dict = create_billing_tariff_tree_request_instance.to_dict()
# create an instance of CreateBillingTariffTreeRequest from a dict
create_billing_tariff_tree_request_from_dict = CreateBillingTariffTreeRequest.from_dict(create_billing_tariff_tree_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



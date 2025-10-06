# CreateBillingTariffNodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calculation_parameters** | [**BaseTariffCalculationTypeParametersDTO**](BaseTariffCalculationTypeParametersDTO.md) |  | [optional] 
**condition** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.create_billing_tariff_node_request import CreateBillingTariffNodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateBillingTariffNodeRequest from a JSON string
create_billing_tariff_node_request_instance = CreateBillingTariffNodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateBillingTariffNodeRequest.to_json())

# convert the object into a dict
create_billing_tariff_node_request_dict = create_billing_tariff_node_request_instance.to_dict()
# create an instance of CreateBillingTariffNodeRequest from a dict
create_billing_tariff_node_request_from_dict = CreateBillingTariffNodeRequest.from_dict(create_billing_tariff_node_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



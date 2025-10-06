# UpdateMeteringParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**validation_rules** | [**List[BaseMeteringValidationRuleDTO]**](BaseMeteringValidationRuleDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_metering_parameters_request import UpdateMeteringParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMeteringParametersRequest from a JSON string
update_metering_parameters_request_instance = UpdateMeteringParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMeteringParametersRequest.to_json())

# convert the object into a dict
update_metering_parameters_request_dict = update_metering_parameters_request_instance.to_dict()
# create an instance of UpdateMeteringParametersRequest from a dict
update_metering_parameters_request_from_dict = UpdateMeteringParametersRequest.from_dict(update_metering_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



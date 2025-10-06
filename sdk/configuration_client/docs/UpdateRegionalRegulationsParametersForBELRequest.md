# UpdateRegionalRegulationsParametersForBELRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**social_tariff_parameters** | [**SocialTariffParametersRequest**](SocialTariffParametersRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_regional_regulations_parameters_for_bel_request import UpdateRegionalRegulationsParametersForBELRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRegionalRegulationsParametersForBELRequest from a JSON string
update_regional_regulations_parameters_for_bel_request_instance = UpdateRegionalRegulationsParametersForBELRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateRegionalRegulationsParametersForBELRequest.to_json())

# convert the object into a dict
update_regional_regulations_parameters_for_bel_request_dict = update_regional_regulations_parameters_for_bel_request_instance.to_dict()
# create an instance of UpdateRegionalRegulationsParametersForBELRequest from a dict
update_regional_regulations_parameters_for_bel_request_from_dict = UpdateRegionalRegulationsParametersForBELRequest.from_dict(update_regional_regulations_parameters_for_bel_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



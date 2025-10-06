# BillingCompletenessInsightsResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**BillingCompletenessInsightsResponseDTO**](BillingCompletenessInsightsResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.billing_completeness_insights_response_dto_api_response_dto import BillingCompletenessInsightsResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCompletenessInsightsResponseDTOApiResponseDTO from a JSON string
billing_completeness_insights_response_dto_api_response_dto_instance = BillingCompletenessInsightsResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCompletenessInsightsResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
billing_completeness_insights_response_dto_api_response_dto_dict = billing_completeness_insights_response_dto_api_response_dto_instance.to_dict()
# create an instance of BillingCompletenessInsightsResponseDTOApiResponseDTO from a dict
billing_completeness_insights_response_dto_api_response_dto_from_dict = BillingCompletenessInsightsResponseDTOApiResponseDTO.from_dict(billing_completeness_insights_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



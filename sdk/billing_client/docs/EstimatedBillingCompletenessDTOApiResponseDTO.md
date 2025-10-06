# EstimatedBillingCompletenessDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**EstimatedBillingCompletenessDTO**](EstimatedBillingCompletenessDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.estimated_billing_completeness_dto_api_response_dto import EstimatedBillingCompletenessDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedBillingCompletenessDTOApiResponseDTO from a JSON string
estimated_billing_completeness_dto_api_response_dto_instance = EstimatedBillingCompletenessDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedBillingCompletenessDTOApiResponseDTO.to_json())

# convert the object into a dict
estimated_billing_completeness_dto_api_response_dto_dict = estimated_billing_completeness_dto_api_response_dto_instance.to_dict()
# create an instance of EstimatedBillingCompletenessDTOApiResponseDTO from a dict
estimated_billing_completeness_dto_api_response_dto_from_dict = EstimatedBillingCompletenessDTOApiResponseDTO.from_dict(estimated_billing_completeness_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



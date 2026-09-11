# ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfBillingRelationDTO**](PagedResponseModelDTOOfBillingRelationDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_paged_response_model_dtoof_billing_relation_dto import ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_billing_relation_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_billing_relation_dto_dict = api_response_dtoof_paged_response_model_dtoof_billing_relation_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO from a dict
api_response_dtoof_paged_response_model_dtoof_billing_relation_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfBillingRelationDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_billing_relation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

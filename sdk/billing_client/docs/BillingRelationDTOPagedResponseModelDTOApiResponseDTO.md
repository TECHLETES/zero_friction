# BillingRelationDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**BillingRelationDTOPagedResponseModelDTO**](BillingRelationDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.billing_relation_dto_paged_response_model_dto_api_response_dto import BillingRelationDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingRelationDTOPagedResponseModelDTOApiResponseDTO from a JSON string
billing_relation_dto_paged_response_model_dto_api_response_dto_instance = BillingRelationDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BillingRelationDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
billing_relation_dto_paged_response_model_dto_api_response_dto_dict = billing_relation_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of BillingRelationDTOPagedResponseModelDTOApiResponseDTO from a dict
billing_relation_dto_paged_response_model_dto_api_response_dto_from_dict = BillingRelationDTOPagedResponseModelDTOApiResponseDTO.from_dict(billing_relation_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



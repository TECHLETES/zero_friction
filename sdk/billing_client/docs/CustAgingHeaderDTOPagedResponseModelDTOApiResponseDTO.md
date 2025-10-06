# CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CustAgingHeaderDTOPagedResponseModelDTO**](CustAgingHeaderDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.cust_aging_header_dto_paged_response_model_dto_api_response_dto import CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO from a JSON string
cust_aging_header_dto_paged_response_model_dto_api_response_dto_instance = CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
cust_aging_header_dto_paged_response_model_dto_api_response_dto_dict = cust_aging_header_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO from a dict
cust_aging_header_dto_paged_response_model_dto_api_response_dto_from_dict = CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO.from_dict(cust_aging_header_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



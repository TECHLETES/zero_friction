# ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfCustAgingHeaderDTO**](PagedResponseModelDTOOfCustAgingHeaderDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto import ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto_dict = api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO from a dict
api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfCustAgingHeaderDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_cust_aging_header_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CustomerBankAccountDTOPagedResponseModelDTO**](CustomerBankAccountDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.customer_bank_account_dto_paged_response_model_dto_api_response_dto import CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO from a JSON string
customer_bank_account_dto_paged_response_model_dto_api_response_dto_instance = CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
customer_bank_account_dto_paged_response_model_dto_api_response_dto_dict = customer_bank_account_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO from a dict
customer_bank_account_dto_paged_response_model_dto_api_response_dto_from_dict = CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO.from_dict(customer_bank_account_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



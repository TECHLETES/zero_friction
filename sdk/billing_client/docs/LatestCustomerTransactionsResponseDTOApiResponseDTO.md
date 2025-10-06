# LatestCustomerTransactionsResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**LatestCustomerTransactionsResponseDTO**](LatestCustomerTransactionsResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.latest_customer_transactions_response_dto_api_response_dto import LatestCustomerTransactionsResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of LatestCustomerTransactionsResponseDTOApiResponseDTO from a JSON string
latest_customer_transactions_response_dto_api_response_dto_instance = LatestCustomerTransactionsResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(LatestCustomerTransactionsResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
latest_customer_transactions_response_dto_api_response_dto_dict = latest_customer_transactions_response_dto_api_response_dto_instance.to_dict()
# create an instance of LatestCustomerTransactionsResponseDTOApiResponseDTO from a dict
latest_customer_transactions_response_dto_api_response_dto_from_dict = LatestCustomerTransactionsResponseDTOApiResponseDTO.from_dict(latest_customer_transactions_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



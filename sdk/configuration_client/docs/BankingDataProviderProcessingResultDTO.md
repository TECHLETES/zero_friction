# BankingDataProviderProcessingResultDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_bank_account_id** | **str** |  | [optional]
**last_processed_date_time** | **datetime** |  | [optional]
**last_processed_incoming_date_time** | **datetime** |  | [optional]
**last_processed_outgoing_date_time** | **datetime** |  | [optional]

## Example

```python
from configuration_client.models.banking_data_provider_processing_result_dto import BankingDataProviderProcessingResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankingDataProviderProcessingResultDTO from a JSON string
banking_data_provider_processing_result_dto_instance = BankingDataProviderProcessingResultDTO.from_json(json)
# print the JSON string representation of the object
print(BankingDataProviderProcessingResultDTO.to_json())

# convert the object into a dict
banking_data_provider_processing_result_dto_dict = banking_data_provider_processing_result_dto_instance.to_dict()
# create an instance of BankingDataProviderProcessingResultDTO from a dict
banking_data_provider_processing_result_dto_from_dict = BankingDataProviderProcessingResultDTO.from_dict(banking_data_provider_processing_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

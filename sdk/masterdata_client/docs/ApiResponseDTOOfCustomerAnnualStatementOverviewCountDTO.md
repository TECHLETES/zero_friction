# ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CustomerAnnualStatementOverviewCountDTO**](CustomerAnnualStatementOverviewCountDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.api_response_dtoof_customer_annual_statement_overview_count_dto import ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO from a JSON string
api_response_dtoof_customer_annual_statement_overview_count_dto_instance = ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO.to_json())

# convert the object into a dict
api_response_dtoof_customer_annual_statement_overview_count_dto_dict = api_response_dtoof_customer_annual_statement_overview_count_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO from a dict
api_response_dtoof_customer_annual_statement_overview_count_dto_from_dict = ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO.from_dict(api_response_dtoof_customer_annual_statement_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



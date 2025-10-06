# CreateCustomerPortfolioSocialTariffExportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**only_mutations** | **bool** |  | [optional] 

## Example

```python
from regionalregulations_client.models.create_customer_portfolio_social_tariff_export_request import CreateCustomerPortfolioSocialTariffExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomerPortfolioSocialTariffExportRequest from a JSON string
create_customer_portfolio_social_tariff_export_request_instance = CreateCustomerPortfolioSocialTariffExportRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomerPortfolioSocialTariffExportRequest.to_json())

# convert the object into a dict
create_customer_portfolio_social_tariff_export_request_dict = create_customer_portfolio_social_tariff_export_request_instance.to_dict()
# create an instance of CreateCustomerPortfolioSocialTariffExportRequest from a dict
create_customer_portfolio_social_tariff_export_request_from_dict = CreateCustomerPortfolioSocialTariffExportRequest.from_dict(create_customer_portfolio_social_tariff_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



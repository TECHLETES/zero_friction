# DomainAuthenticationParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_name** | **str** |  | [optional]
**last_verified_utc** | **datetime** |  | [optional]
**records** | [**List[DnsRecordDTO]**](DnsRecordDTO.md) |  | [optional]
**eu_records** | [**List[DnsRecordDTO]**](DnsRecordDTO.md) |  | [optional]
**eu_last_verified_utc** | **datetime** |  | [optional]
**accept_allowed** | **bool** |  | [optional]
**primary_records_indicate_eu** | **bool** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.domain_authentication_parameters_dto import DomainAuthenticationParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DomainAuthenticationParametersDTO from a JSON string
domain_authentication_parameters_dto_instance = DomainAuthenticationParametersDTO.from_json(json)
# print the JSON string representation of the object
print(DomainAuthenticationParametersDTO.to_json())

# convert the object into a dict
domain_authentication_parameters_dto_dict = domain_authentication_parameters_dto_instance.to_dict()
# create an instance of DomainAuthenticationParametersDTO from a dict
domain_authentication_parameters_dto_from_dict = DomainAuthenticationParametersDTO.from_dict(domain_authentication_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

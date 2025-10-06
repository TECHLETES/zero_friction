# DnsRecordDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meaning** | [**DnsRecordMeaning**](DnsRecordMeaning.md) |  | [optional] 
**type** | **str** |  | [optional] 
**key** | **str** |  | [optional] 
**value** | **str** |  | [optional] 
**status** | [**DnsRecordStatus**](DnsRecordStatus.md) |  | [optional] 
**errors** | **List[str]** |  | [optional] 

## Example

```python
from configuration_client.models.dns_record_dto import DnsRecordDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DnsRecordDTO from a JSON string
dns_record_dto_instance = DnsRecordDTO.from_json(json)
# print the JSON string representation of the object
print(DnsRecordDTO.to_json())

# convert the object into a dict
dns_record_dto_dict = dns_record_dto_instance.to_dict()
# create an instance of DnsRecordDTO from a dict
dns_record_dto_from_dict = DnsRecordDTO.from_dict(dns_record_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



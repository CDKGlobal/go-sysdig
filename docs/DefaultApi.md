# \DefaultApi

All URIs are relative to *https://app.sysdigcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAlert**](DefaultApi.md#CreateAlert) | **Post** /alerts/{id} | 
[**GetAlerts**](DefaultApi.md#GetAlerts) | **Get** /alerts | 


# **CreateAlert**
> Alerts CreateAlert($id)



Creates a new Alert


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int64**| ID of alert | 

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAlerts**
> Alerts GetAlerts()



Gets Alerts


### Parameters
This endpoint does not need any parameter.

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


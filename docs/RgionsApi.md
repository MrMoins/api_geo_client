# ApiGeoClient::RgionsApi

All URIs are relative to *https://geo.api.gouv.fr/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**regions_code_departements_get**](RgionsApi.md#regions_code_departements_get) | **GET** /regions/{code}/departements | Renvoi les départements d&#x27;une région
[**regions_code_get**](RgionsApi.md#regions_code_get) | **GET** /regions/{code} | Récupérer les informations concernant une région
[**regions_get**](RgionsApi.md#regions_get) | **GET** /regions | Recherche des régions

# **regions_code_departements_get**
> Array&lt;Departement&gt; regions_code_departements_get(code, opts)

Renvoi les départements d'une région

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new
code = 'code_example' # String | Code de la région
opts = { 
  fields: ['fields_example'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Renvoi les départements d'une région
  result = api_instance.regions_code_departements_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_code_departements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de la région | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 

### Return type

[**Array&lt;Departement&gt;**](Departement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **regions_code_get**
> Region regions_code_get(code, opts)

Récupérer les informations concernant une région

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new
code = 'code_example' # String | Code de la région
opts = { 
  fields: ['fields_example'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Récupérer les informations concernant une région
  result = api_instance.regions_code_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de la région | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 

### Return type

[**Region**](Region.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **regions_get**
> Array&lt;Region&gt; regions_get(opts)

Recherche des régions

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::RgionsApi.new
opts = { 
  code: 'code_example', # String | Code de la région
  nom: 'nom_example', # String | Nom de la région
  zone: ['zone_example'], # Array<String> | Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique.
  fields: ['fields_example'] # Array<String> | Liste des champs souhaités dans la réponse
}

begin
  #Recherche des régions
  result = api_instance.regions_get(opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling RgionsApi->regions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de la région | [optional] 
 **nom** | **String**| Nom de la région | [optional] 
 **zone** | [**Array&lt;String&gt;**](String.md)| Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 

### Return type

[**Array&lt;Region&gt;**](Region.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




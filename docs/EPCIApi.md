# ApiGeoClient::EPCIApi

All URIs are relative to *https://geo.api.gouv.fr/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**epcis_code_communes_get**](EPCIApi.md#epcis_code_communes_get) | **GET** /epcis/{code}/communes | Renvoi les communes d&#x27;un EPCI
[**epcis_code_get**](EPCIApi.md#epcis_code_get) | **GET** /epcis/{code} | Récupérer les informations concernant un EPCI
[**epcis_get**](EPCIApi.md#epcis_get) | **GET** /epcis | Recherche des EPCI

# **epcis_code_communes_get**
> Array&lt;Commune&gt; epcis_code_communes_get(code, opts)

Renvoi les communes d'un EPCI

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::EPCIApi.new
code = 'code_example' # String | Code de l'EPCI
opts = { 
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Renvoi les communes d'un EPCI
  result = api_instance.epcis_code_communes_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling EPCIApi->epcis_code_communes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code de l&#x27;EPCI | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 
 **format** | **String**| Format de réponse attendu | [optional] [default to json]
 **geometry** | **String**| Géométrie à utiliser pour la sortie géographique | [optional] [default to centre]

### Return type

[**Array&lt;Commune&gt;**](Commune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **epcis_code_get**
> Epci epcis_code_get(code, opts)

Récupérer les informations concernant un EPCI

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::EPCIApi.new
code = 'code_example' # String | Code INSEE de l'EPCI
opts = { 
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Récupérer les informations concernant un EPCI
  result = api_instance.epcis_code_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling EPCIApi->epcis_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code INSEE de l&#x27;EPCI | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 
 **format** | **String**| Format de réponse attendu | [optional] [default to json]
 **geometry** | **String**| Géométrie à utiliser pour la sortie géographique | [optional] [default to centre]

### Return type

[**Epci**](Epci.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **epcis_get**
> Array&lt;Epci&gt; epcis_get(opts)

Recherche des EPCI

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::EPCIApi.new
opts = { 
  nom: 'nom_example', # String | Nom de l'EPCI
  boost: 'boost_example', # String | Mode de boost de la recherche par nom
  code_epci: 'code_epci_example', # String | Code de l'EPCI associé
  code_departement: 'code_departement_example', # String | Code du département associé
  code_region: 'code_region_example', # String | Code de la région associée
  zone: ['zone_example'], # Array<String> | Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique.
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Recherche des EPCI
  result = api_instance.epcis_get(opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling EPCIApi->epcis_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nom** | **String**| Nom de l&#x27;EPCI | [optional] 
 **boost** | **String**| Mode de boost de la recherche par nom | [optional] 
 **code_epci** | **String**| Code de l&#x27;EPCI associé | [optional] 
 **code_departement** | **String**| Code du département associé | [optional] 
 **code_region** | **String**| Code de la région associée | [optional] 
 **zone** | [**Array&lt;String&gt;**](String.md)| Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 
 **format** | **String**| Format de réponse attendu | [optional] [default to json]
 **geometry** | **String**| Géométrie à utiliser pour la sortie géographique | [optional] [default to centre]

### Return type

[**Array&lt;Epci&gt;**](Epci.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




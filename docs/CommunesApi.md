# ApiGeoClient::CommunesApi

All URIs are relative to *https://geo.api.gouv.fr/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communes_code_get**](CommunesApi.md#communes_code_get) | **GET** /communes/{code} | Récupérer les informations concernant une commune
[**communes_get**](CommunesApi.md#communes_get) | **GET** /communes | Recherche des communes
[**departements_code_communes_get**](CommunesApi.md#departements_code_communes_get) | **GET** /departements/{code}/communes | Renvoi les communes d&#x27;un département
[**epcis_code_communes_get**](CommunesApi.md#epcis_code_communes_get) | **GET** /epcis/{code}/communes | Renvoi les communes d&#x27;un EPCI

# **communes_code_get**
> Commune communes_code_get(code, opts)

Récupérer les informations concernant une commune

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::CommunesApi.new
code = 'code_example' # String | Code INSEE de la commune
opts = { 
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Récupérer les informations concernant une commune
  result = api_instance.communes_code_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling CommunesApi->communes_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code INSEE de la commune | 
 **fields** | [**Array&lt;String&gt;**](String.md)| Liste des champs souhaités dans la réponse | [optional] 
 **format** | **String**| Format de réponse attendu | [optional] [default to json]
 **geometry** | **String**| Géométrie à utiliser pour la sortie géographique | [optional] [default to centre]

### Return type

[**Commune**](Commune.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **communes_get**
> Array&lt;Commune&gt; communes_get(opts)

Recherche des communes

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::CommunesApi.new
opts = { 
  code_postal: 'code_postal_example', # String | Code postal associé
  lat: 3.4, # Float | Latitude (en degrés)
  lon: 3.4, # Float | Longitude (en degrés)
  nom: 'nom_example', # String | Nom de la commune
  boost: 'boost_example', # String | Mode de boost de la recherche par nom
  code: 'code_example', # String | Code de la commune
  siren: 'siren_example', # String | Code SIREN de la commune
  code_epci: 'code_epci_example', # String | Code de l'EPCI associé
  code_departement: 'code_departement_example', # String | Code du département associé
  code_region: 'code_region_example', # String | Code de la région associée
  zone: ['zone_example'], # Array<String> | Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique.
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Recherche des communes
  result = api_instance.communes_get(opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling CommunesApi->communes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code_postal** | **String**| Code postal associé | [optional] 
 **lat** | **Float**| Latitude (en degrés) | [optional] 
 **lon** | **Float**| Longitude (en degrés) | [optional] 
 **nom** | **String**| Nom de la commune | [optional] 
 **boost** | **String**| Mode de boost de la recherche par nom | [optional] 
 **code** | **String**| Code de la commune | [optional] 
 **siren** | **String**| Code SIREN de la commune | [optional] 
 **code_epci** | **String**| Code de l&#x27;EPCI associé | [optional] 
 **code_departement** | **String**| Code du département associé | [optional] 
 **code_region** | **String**| Code de la région associée | [optional] 
 **zone** | [**Array&lt;String&gt;**](String.md)| Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique. | [optional] 
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



# **departements_code_communes_get**
> Array&lt;Commune&gt; departements_code_communes_get(code, opts)

Renvoi les communes d'un département

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::CommunesApi.new
code = 'code_example' # String | Code du département
opts = { 
  fields: ['fields_example'], # Array<String> | Liste des champs souhaités dans la réponse
  format: 'json', # String | Format de réponse attendu
  geometry: 'centre' # String | Géométrie à utiliser pour la sortie géographique
}

begin
  #Renvoi les communes d'un département
  result = api_instance.departements_code_communes_get(code, opts)
  p result
rescue ApiGeoClient::ApiError => e
  puts "Exception when calling CommunesApi->departements_code_communes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Code du département | 
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



# **epcis_code_communes_get**
> Array&lt;Commune&gt; epcis_code_communes_get(code, opts)

Renvoi les communes d'un EPCI

### Example
```ruby
# load the gem
require 'api_geo_client'

api_instance = ApiGeoClient::CommunesApi.new
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
  puts "Exception when calling CommunesApi->epcis_code_communes_get: #{e}"
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




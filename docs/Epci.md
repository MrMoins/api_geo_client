# ApiGeoClient::Epci

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Code SIREN de l&#x27;EPCI | [optional] 
**nom** | **String** | Nom de l&#x27;EPCI | [optional] 
**type** | **String** | Type de l&#x27;EPCI, soit communauté d&#x27;agglomération (CA), soit communauté de communes (CC), soit communauté urbaine (CU), soit métropole de Lyon (MET69), soit métropole (METRO) | [optional] 
**financement** | **String** | Financement de l&#x27;EPCI, soit fiscalité additionnelle (FA), soit en fiscalité professionnelle unique (FPU) | [optional] 
**codes_departements** | **Array&lt;String&gt;** | Liste des départements de l&#x27;EPCI | [optional] 
**codes_regions** | **Array&lt;String&gt;** | Liste des régions de l&#x27;EPCI | [optional] 
**population** | **Integer** | Population municipale | [optional] 
**surface** | **Float** | Surface de l&#x27;EPCI, en hectares | [optional] 
**centre** | **Object** | Centre de l&#x27;EPCI (Point GeoJSON) | [optional] 
**contour** | **Object** | Contour de l&#x27;EPCI (Polygon GeoJSON) | [optional] 
**bbox** | **Object** | Rectangle englobant la commune (Polygon GeoJSON) | [optional] 


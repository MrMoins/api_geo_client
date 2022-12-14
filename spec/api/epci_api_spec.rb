=begin
#API Géo

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'spec_helper'
require 'json'

# Unit tests for ApiGeoClient::EPCIApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EPCIApi' do
  before do
    # run before each test
    @instance = ApiGeoClient::EPCIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EPCIApi' do
    it 'should create an instance of EPCIApi' do
      expect(@instance).to be_instance_of(ApiGeoClient::EPCIApi)
    end
  end

  # unit tests for epcis_code_communes_get
  # Renvoi les communes d&#x27;un EPCI
  # @param code Code de l&#x27;EPCI
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
  # @option opts [String] :format Format de réponse attendu
  # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
  # @return [Array<Commune>]
  describe 'epcis_code_communes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for epcis_code_get
  # Récupérer les informations concernant un EPCI
  # @param code Code INSEE de l&#x27;EPCI
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
  # @option opts [String] :format Format de réponse attendu
  # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
  # @return [Epci]
  describe 'epcis_code_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for epcis_get
  # Recherche des EPCI
  # @param [Hash] opts the optional parameters
  # @option opts [String] :nom Nom de l&#x27;EPCI
  # @option opts [String] :boost Mode de boost de la recherche par nom
  # @option opts [String] :code_epci Code de l&#x27;EPCI associé
  # @option opts [String] :code_departement Code du département associé
  # @option opts [String] :code_region Code de la région associée
  # @option opts [Array<String>] :zone Zone permettant de filtrer à la métropole, aux DROM et aux COM. Défaut à metro,drom sauf pour les communes à metro,drom,com pour conserver le comportement historique.
  # @option opts [Array<String>] :fields Liste des champs souhaités dans la réponse
  # @option opts [String] :format Format de réponse attendu
  # @option opts [String] :geometry Géométrie à utiliser pour la sortie géographique
  # @return [Array<Epci>]
  describe 'epcis_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

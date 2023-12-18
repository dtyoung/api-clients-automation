# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

require 'date'
require 'time'

module Algolia
  module Recommend
    class IndexSettingsAsSearchParams
      # Attributes used for [faceting](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/) and the [modifiers](https://www.algolia.com/doc/api-reference/api-parameters/attributesForFaceting/#modifiers) that can be applied: `filterOnly`, `searchable`, and `afterDistinct`. 
      attr_accessor :attributes_for_faceting

      # Attributes to include in the API response. To reduce the size of your response, you can retrieve only some of the attributes. By default, the response includes all attributes.
      attr_accessor :attributes_to_retrieve

      # Determines the order in which Algolia [returns your results](https://www.algolia.com/doc/guides/managing-results/relevance-overview/in-depth/ranking-criteria/).
      attr_accessor :ranking

      # Specifies the [Custom ranking criterion](https://www.algolia.com/doc/guides/managing-results/must-do/custom-ranking/). Use the `asc` and `desc` modifiers to specify the ranking order: ascending or descending. 
      attr_accessor :custom_ranking

      # Relevancy threshold below which less relevant results aren't included in the results.
      attr_accessor :relevancy_strictness

      # Attributes to highlight. Strings that match the search query in the attributes are highlighted by surrounding them with HTML tags (`highlightPreTag` and `highlightPostTag`).
      attr_accessor :attributes_to_highlight

      # Attributes to _snippet_. 'Snippeting' is shortening the attribute to a certain number of words. If not specified, the attribute is shortened to the 10 words around the matching string but you can specify the number. For example: `body:20`. 
      attr_accessor :attributes_to_snippet

      # HTML string to insert before the highlighted parts in all highlight and snippet results.
      attr_accessor :highlight_pre_tag

      # HTML string to insert after the highlighted parts in all highlight and snippet results.
      attr_accessor :highlight_post_tag

      # String used as an ellipsis indicator when a snippet is truncated.
      attr_accessor :snippet_ellipsis_text

      # Restrict highlighting and snippeting to items that matched the query.
      attr_accessor :restrict_highlight_and_snippet_arrays

      # Number of hits per page.
      attr_accessor :hits_per_page

      # Minimum number of characters a word in the query string must contain to accept matches with [one typo](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/in-depth/configuring-typo-tolerance/#configuring-word-length-for-typos).
      attr_accessor :min_word_sizefor1_typo

      # Minimum number of characters a word in the query string must contain to accept matches with [two typos](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/in-depth/configuring-typo-tolerance/#configuring-word-length-for-typos).
      attr_accessor :min_word_sizefor2_typos

      attr_accessor :typo_tolerance

      # Whether to allow typos on numbers (\"numeric tokens\") in the query string.
      attr_accessor :allow_typos_on_numeric_tokens

      # Attributes for which you want to turn off [typo tolerance](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/).
      attr_accessor :disable_typo_tolerance_on_attributes

      attr_accessor :ignore_plurals

      attr_accessor :remove_stop_words

      # Characters that the engine shouldn't automatically [normalize](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/normalization/).
      attr_accessor :keep_diacritics_on_characters

      # Sets your user's search language. This adjusts language-specific settings and features such as `ignorePlurals`, `removeStopWords`, and [CJK](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/normalization/#normalization-for-logogram-based-languages-cjk) word detection.
      attr_accessor :query_languages

      # [Splits compound words](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/language-specific-configurations/#splitting-compound-words) into their component word parts in the query. 
      attr_accessor :decompound_query

      # Incidates whether [Rules](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/) are enabled.
      attr_accessor :enable_rules

      # Incidates whether [Personalization](https://www.algolia.com/doc/guides/personalization/what-is-personalization/) is enabled.
      attr_accessor :enable_personalization

      attr_accessor :query_type

      attr_accessor :remove_words_if_no_results

      attr_accessor :mode

      attr_accessor :semantic_search

      # Enables the [advanced query syntax](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/#advanced-syntax).
      attr_accessor :advanced_syntax

      # Words which should be considered [optional](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/empty-or-insufficient-results/#creating-a-list-of-optional-words) when found in a query.
      attr_accessor :optional_words

      # Attributes for which you want to [turn off the exact ranking criterion](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/in-depth/adjust-exact-settings/#turn-off-exact-for-some-attributes).
      attr_accessor :disable_exact_on_attributes

      attr_accessor :exact_on_single_word_query

      # Alternatives that should be considered an exact match by [the exact ranking criterion](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/in-depth/adjust-exact-settings/#turn-off-exact-for-some-attributes).
      attr_accessor :alternatives_as_exact

      # Allows you to specify which advanced syntax features are active when `advancedSyntax` is enabled.
      attr_accessor :advanced_syntax_features

      attr_accessor :distinct

      # Whether to highlight and snippet the original word that matches the synonym or the synonym itself.
      attr_accessor :replace_synonyms_in_highlight

      # Precision of the [proximity ranking criterion](https://www.algolia.com/doc/guides/managing-results/relevance-overview/in-depth/ranking-criteria/#proximity).
      attr_accessor :min_proximity

      # Attributes to include in the API response for search and browse queries.
      attr_accessor :response_fields

      # Maximum number of facet hits to return when [searching for facet values](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/#search-for-facet-values).
      attr_accessor :max_facet_hits

      # Maximum number of facet values to return for each facet.
      attr_accessor :max_values_per_facet

      # Controls how facet values are fetched.
      attr_accessor :sort_facet_values_by

      # When the [Attribute criterion is ranked above Proximity](https://www.algolia.com/doc/guides/managing-results/relevance-overview/in-depth/ranking-criteria/#attribute-and-proximity-combinations) in your ranking formula, Proximity is used to select which searchable attribute is matched in the Attribute ranking stage.
      attr_accessor :attribute_criteria_computed_by_min_proximity

      attr_accessor :rendering_content

      # Indicates whether this search will use [Dynamic Re-Ranking](https://www.algolia.com/doc/guides/algolia-ai/re-ranking/).
      attr_accessor :enable_re_ranking

      attr_accessor :re_ranking_apply_filter

      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values

        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end

        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'attributes_for_faceting' => :'attributesForFaceting',
          :'attributes_to_retrieve' => :'attributesToRetrieve',
          :'ranking' => :'ranking',
          :'custom_ranking' => :'customRanking',
          :'relevancy_strictness' => :'relevancyStrictness',
          :'attributes_to_highlight' => :'attributesToHighlight',
          :'attributes_to_snippet' => :'attributesToSnippet',
          :'highlight_pre_tag' => :'highlightPreTag',
          :'highlight_post_tag' => :'highlightPostTag',
          :'snippet_ellipsis_text' => :'snippetEllipsisText',
          :'restrict_highlight_and_snippet_arrays' => :'restrictHighlightAndSnippetArrays',
          :'hits_per_page' => :'hitsPerPage',
          :'min_word_sizefor1_typo' => :'minWordSizefor1Typo',
          :'min_word_sizefor2_typos' => :'minWordSizefor2Typos',
          :'typo_tolerance' => :'typoTolerance',
          :'allow_typos_on_numeric_tokens' => :'allowTyposOnNumericTokens',
          :'disable_typo_tolerance_on_attributes' => :'disableTypoToleranceOnAttributes',
          :'ignore_plurals' => :'ignorePlurals',
          :'remove_stop_words' => :'removeStopWords',
          :'keep_diacritics_on_characters' => :'keepDiacriticsOnCharacters',
          :'query_languages' => :'queryLanguages',
          :'decompound_query' => :'decompoundQuery',
          :'enable_rules' => :'enableRules',
          :'enable_personalization' => :'enablePersonalization',
          :'query_type' => :'queryType',
          :'remove_words_if_no_results' => :'removeWordsIfNoResults',
          :'mode' => :'mode',
          :'semantic_search' => :'semanticSearch',
          :'advanced_syntax' => :'advancedSyntax',
          :'optional_words' => :'optionalWords',
          :'disable_exact_on_attributes' => :'disableExactOnAttributes',
          :'exact_on_single_word_query' => :'exactOnSingleWordQuery',
          :'alternatives_as_exact' => :'alternativesAsExact',
          :'advanced_syntax_features' => :'advancedSyntaxFeatures',
          :'distinct' => :'distinct',
          :'replace_synonyms_in_highlight' => :'replaceSynonymsInHighlight',
          :'min_proximity' => :'minProximity',
          :'response_fields' => :'responseFields',
          :'max_facet_hits' => :'maxFacetHits',
          :'max_values_per_facet' => :'maxValuesPerFacet',
          :'sort_facet_values_by' => :'sortFacetValuesBy',
          :'attribute_criteria_computed_by_min_proximity' => :'attributeCriteriaComputedByMinProximity',
          :'rendering_content' => :'renderingContent',
          :'enable_re_ranking' => :'enableReRanking',
          :'re_ranking_apply_filter' => :'reRankingApplyFilter'
        }
      end

      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        attribute_map.values
      end

      # Attribute type mapping.
      def self.types_mapping
        {
          :'attributes_for_faceting' => :'Array<String>',
          :'attributes_to_retrieve' => :'Array<String>',
          :'ranking' => :'Array<String>',
          :'custom_ranking' => :'Array<String>',
          :'relevancy_strictness' => :'Integer',
          :'attributes_to_highlight' => :'Array<String>',
          :'attributes_to_snippet' => :'Array<String>',
          :'highlight_pre_tag' => :'String',
          :'highlight_post_tag' => :'String',
          :'snippet_ellipsis_text' => :'String',
          :'restrict_highlight_and_snippet_arrays' => :'Boolean',
          :'hits_per_page' => :'Integer',
          :'min_word_sizefor1_typo' => :'Integer',
          :'min_word_sizefor2_typos' => :'Integer',
          :'typo_tolerance' => :'TypoTolerance',
          :'allow_typos_on_numeric_tokens' => :'Boolean',
          :'disable_typo_tolerance_on_attributes' => :'Array<String>',
          :'ignore_plurals' => :'IgnorePlurals',
          :'remove_stop_words' => :'RemoveStopWords',
          :'keep_diacritics_on_characters' => :'String',
          :'query_languages' => :'Array<String>',
          :'decompound_query' => :'Boolean',
          :'enable_rules' => :'Boolean',
          :'enable_personalization' => :'Boolean',
          :'query_type' => :'QueryType',
          :'remove_words_if_no_results' => :'RemoveWordsIfNoResults',
          :'mode' => :'Mode',
          :'semantic_search' => :'SemanticSearch',
          :'advanced_syntax' => :'Boolean',
          :'optional_words' => :'Array<String>',
          :'disable_exact_on_attributes' => :'Array<String>',
          :'exact_on_single_word_query' => :'ExactOnSingleWordQuery',
          :'alternatives_as_exact' => :'Array<AlternativesAsExact>',
          :'advanced_syntax_features' => :'Array<AdvancedSyntaxFeatures>',
          :'distinct' => :'Distinct',
          :'replace_synonyms_in_highlight' => :'Boolean',
          :'min_proximity' => :'Integer',
          :'response_fields' => :'Array<String>',
          :'max_facet_hits' => :'Integer',
          :'max_values_per_facet' => :'Integer',
          :'sort_facet_values_by' => :'String',
          :'attribute_criteria_computed_by_min_proximity' => :'Boolean',
          :'rendering_content' => :'RenderingContent',
          :'enable_re_ranking' => :'Boolean',
          :'re_ranking_apply_filter' => :'ReRankingApplyFilter'
        }
      end

      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'re_ranking_apply_filter'
        ])
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Algolia::IndexSettingsAsSearchParams` initialize method"
        end

        # check to see if the attribute exists and convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!self.class.attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Algolia::IndexSettingsAsSearchParams`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }

        if attributes.key?(:'attributes_for_faceting')
          if (value = attributes[:'attributes_for_faceting']).is_a?(Array)
            self.attributes_for_faceting = value
          end
        end

        if attributes.key?(:'attributes_to_retrieve')
          if (value = attributes[:'attributes_to_retrieve']).is_a?(Array)
            self.attributes_to_retrieve = value
          end
        end

        if attributes.key?(:'ranking')
          if (value = attributes[:'ranking']).is_a?(Array)
            self.ranking = value
          end
        end

        if attributes.key?(:'custom_ranking')
          if (value = attributes[:'custom_ranking']).is_a?(Array)
            self.custom_ranking = value
          end
        end

        if attributes.key?(:'relevancy_strictness')
          self.relevancy_strictness = attributes[:'relevancy_strictness']
        end

        if attributes.key?(:'attributes_to_highlight')
          if (value = attributes[:'attributes_to_highlight']).is_a?(Array)
            self.attributes_to_highlight = value
          end
        end

        if attributes.key?(:'attributes_to_snippet')
          if (value = attributes[:'attributes_to_snippet']).is_a?(Array)
            self.attributes_to_snippet = value
          end
        end

        if attributes.key?(:'highlight_pre_tag')
          self.highlight_pre_tag = attributes[:'highlight_pre_tag']
        end

        if attributes.key?(:'highlight_post_tag')
          self.highlight_post_tag = attributes[:'highlight_post_tag']
        end

        if attributes.key?(:'snippet_ellipsis_text')
          self.snippet_ellipsis_text = attributes[:'snippet_ellipsis_text']
        end

        if attributes.key?(:'restrict_highlight_and_snippet_arrays')
          self.restrict_highlight_and_snippet_arrays = attributes[:'restrict_highlight_and_snippet_arrays']
        end

        if attributes.key?(:'hits_per_page')
          self.hits_per_page = attributes[:'hits_per_page']
        end

        if attributes.key?(:'min_word_sizefor1_typo')
          self.min_word_sizefor1_typo = attributes[:'min_word_sizefor1_typo']
        end

        if attributes.key?(:'min_word_sizefor2_typos')
          self.min_word_sizefor2_typos = attributes[:'min_word_sizefor2_typos']
        end

        if attributes.key?(:'typo_tolerance')
          self.typo_tolerance = attributes[:'typo_tolerance']
        end

        if attributes.key?(:'allow_typos_on_numeric_tokens')
          self.allow_typos_on_numeric_tokens = attributes[:'allow_typos_on_numeric_tokens']
        end

        if attributes.key?(:'disable_typo_tolerance_on_attributes')
          if (value = attributes[:'disable_typo_tolerance_on_attributes']).is_a?(Array)
            self.disable_typo_tolerance_on_attributes = value
          end
        end

        if attributes.key?(:'ignore_plurals')
          self.ignore_plurals = attributes[:'ignore_plurals']
        end

        if attributes.key?(:'remove_stop_words')
          self.remove_stop_words = attributes[:'remove_stop_words']
        end

        if attributes.key?(:'keep_diacritics_on_characters')
          self.keep_diacritics_on_characters = attributes[:'keep_diacritics_on_characters']
        end

        if attributes.key?(:'query_languages')
          if (value = attributes[:'query_languages']).is_a?(Array)
            self.query_languages = value
          end
        end

        if attributes.key?(:'decompound_query')
          self.decompound_query = attributes[:'decompound_query']
        end

        if attributes.key?(:'enable_rules')
          self.enable_rules = attributes[:'enable_rules']
        end

        if attributes.key?(:'enable_personalization')
          self.enable_personalization = attributes[:'enable_personalization']
        end

        if attributes.key?(:'query_type')
          self.query_type = attributes[:'query_type']
        end

        if attributes.key?(:'remove_words_if_no_results')
          self.remove_words_if_no_results = attributes[:'remove_words_if_no_results']
        end

        if attributes.key?(:'mode')
          self.mode = attributes[:'mode']
        end

        if attributes.key?(:'semantic_search')
          self.semantic_search = attributes[:'semantic_search']
        end

        if attributes.key?(:'advanced_syntax')
          self.advanced_syntax = attributes[:'advanced_syntax']
        end

        if attributes.key?(:'optional_words')
          if (value = attributes[:'optional_words']).is_a?(Array)
            self.optional_words = value
          end
        end

        if attributes.key?(:'disable_exact_on_attributes')
          if (value = attributes[:'disable_exact_on_attributes']).is_a?(Array)
            self.disable_exact_on_attributes = value
          end
        end

        if attributes.key?(:'exact_on_single_word_query')
          self.exact_on_single_word_query = attributes[:'exact_on_single_word_query']
        end

        if attributes.key?(:'alternatives_as_exact')
          if (value = attributes[:'alternatives_as_exact']).is_a?(Array)
            self.alternatives_as_exact = value
          end
        end

        if attributes.key?(:'advanced_syntax_features')
          if (value = attributes[:'advanced_syntax_features']).is_a?(Array)
            self.advanced_syntax_features = value
          end
        end

        if attributes.key?(:'distinct')
          self.distinct = attributes[:'distinct']
        end

        if attributes.key?(:'replace_synonyms_in_highlight')
          self.replace_synonyms_in_highlight = attributes[:'replace_synonyms_in_highlight']
        end

        if attributes.key?(:'min_proximity')
          self.min_proximity = attributes[:'min_proximity']
        end

        if attributes.key?(:'response_fields')
          if (value = attributes[:'response_fields']).is_a?(Array)
            self.response_fields = value
          end
        end

        if attributes.key?(:'max_facet_hits')
          self.max_facet_hits = attributes[:'max_facet_hits']
        end

        if attributes.key?(:'max_values_per_facet')
          self.max_values_per_facet = attributes[:'max_values_per_facet']
        end

        if attributes.key?(:'sort_facet_values_by')
          self.sort_facet_values_by = attributes[:'sort_facet_values_by']
        end

        if attributes.key?(:'attribute_criteria_computed_by_min_proximity')
          self.attribute_criteria_computed_by_min_proximity = attributes[:'attribute_criteria_computed_by_min_proximity']
        end

        if attributes.key?(:'rendering_content')
          self.rendering_content = attributes[:'rendering_content']
        end

        if attributes.key?(:'enable_re_ranking')
          self.enable_re_ranking = attributes[:'enable_re_ranking']
        end

        if attributes.key?(:'re_ranking_apply_filter')
          self.re_ranking_apply_filter = attributes[:'re_ranking_apply_filter']
        end
      end

      # Custom attribute writer method with validation
      # @param [Object] hits_per_page Value to be assigned
      def hits_per_page=(hits_per_page)
        if hits_per_page.nil?
          fail ArgumentError, 'hits_per_page cannot be nil'
        end

        if hits_per_page > 1000
          fail ArgumentError, 'invalid value for "hits_per_page", must be smaller than or equal to 1000.'
        end

        if hits_per_page < 1
          fail ArgumentError, 'invalid value for "hits_per_page", must be greater than or equal to 1.'
        end

        @hits_per_page = hits_per_page
      end

      # Custom attribute writer method with validation
      # @param [Object] min_proximity Value to be assigned
      def min_proximity=(min_proximity)
        if min_proximity.nil?
          fail ArgumentError, 'min_proximity cannot be nil'
        end

        if min_proximity > 7
          fail ArgumentError, 'invalid value for "min_proximity", must be smaller than or equal to 7.'
        end

        if min_proximity < 1
          fail ArgumentError, 'invalid value for "min_proximity", must be greater than or equal to 1.'
        end

        @min_proximity = min_proximity
      end

      # Custom attribute writer method with validation
      # @param [Object] max_facet_hits Value to be assigned
      def max_facet_hits=(max_facet_hits)
        if max_facet_hits.nil?
          fail ArgumentError, 'max_facet_hits cannot be nil'
        end

        if max_facet_hits > 100
          fail ArgumentError, 'invalid value for "max_facet_hits", must be smaller than or equal to 100.'
        end

        @max_facet_hits = max_facet_hits
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            attributes_for_faceting == o.attributes_for_faceting &&
            attributes_to_retrieve == o.attributes_to_retrieve &&
            ranking == o.ranking &&
            custom_ranking == o.custom_ranking &&
            relevancy_strictness == o.relevancy_strictness &&
            attributes_to_highlight == o.attributes_to_highlight &&
            attributes_to_snippet == o.attributes_to_snippet &&
            highlight_pre_tag == o.highlight_pre_tag &&
            highlight_post_tag == o.highlight_post_tag &&
            snippet_ellipsis_text == o.snippet_ellipsis_text &&
            restrict_highlight_and_snippet_arrays == o.restrict_highlight_and_snippet_arrays &&
            hits_per_page == o.hits_per_page &&
            min_word_sizefor1_typo == o.min_word_sizefor1_typo &&
            min_word_sizefor2_typos == o.min_word_sizefor2_typos &&
            typo_tolerance == o.typo_tolerance &&
            allow_typos_on_numeric_tokens == o.allow_typos_on_numeric_tokens &&
            disable_typo_tolerance_on_attributes == o.disable_typo_tolerance_on_attributes &&
            ignore_plurals == o.ignore_plurals &&
            remove_stop_words == o.remove_stop_words &&
            keep_diacritics_on_characters == o.keep_diacritics_on_characters &&
            query_languages == o.query_languages &&
            decompound_query == o.decompound_query &&
            enable_rules == o.enable_rules &&
            enable_personalization == o.enable_personalization &&
            query_type == o.query_type &&
            remove_words_if_no_results == o.remove_words_if_no_results &&
            mode == o.mode &&
            semantic_search == o.semantic_search &&
            advanced_syntax == o.advanced_syntax &&
            optional_words == o.optional_words &&
            disable_exact_on_attributes == o.disable_exact_on_attributes &&
            exact_on_single_word_query == o.exact_on_single_word_query &&
            alternatives_as_exact == o.alternatives_as_exact &&
            advanced_syntax_features == o.advanced_syntax_features &&
            distinct == o.distinct &&
            replace_synonyms_in_highlight == o.replace_synonyms_in_highlight &&
            min_proximity == o.min_proximity &&
            response_fields == o.response_fields &&
            max_facet_hits == o.max_facet_hits &&
            max_values_per_facet == o.max_values_per_facet &&
            sort_facet_values_by == o.sort_facet_values_by &&
            attribute_criteria_computed_by_min_proximity == o.attribute_criteria_computed_by_min_proximity &&
            rendering_content == o.rendering_content &&
            enable_re_ranking == o.enable_re_ranking &&
            re_ranking_apply_filter == o.re_ranking_apply_filter
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [attributes_for_faceting, attributes_to_retrieve, ranking, custom_ranking, relevancy_strictness, attributes_to_highlight, attributes_to_snippet, highlight_pre_tag, highlight_post_tag, snippet_ellipsis_text, restrict_highlight_and_snippet_arrays, hits_per_page, min_word_sizefor1_typo, min_word_sizefor2_typos, typo_tolerance, allow_typos_on_numeric_tokens, disable_typo_tolerance_on_attributes, ignore_plurals, remove_stop_words, keep_diacritics_on_characters, query_languages, decompound_query, enable_rules, enable_personalization, query_type, remove_words_if_no_results, mode, semantic_search, advanced_syntax, optional_words, disable_exact_on_attributes, exact_on_single_word_query, alternatives_as_exact, advanced_syntax_features, distinct, replace_synonyms_in_highlight, min_proximity, response_fields, max_facet_hits, max_values_per_facet, sort_facet_values_by, attribute_criteria_computed_by_min_proximity, rendering_content, enable_re_ranking, re_ranking_apply_filter].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        types_mapping.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end

      # Deserializes the data based on type
      # @param string type Data type
      # @param string value Value to be deserialized
      # @return [Object] Deserialized data
      def self._deserialize(type, value)
        case type.to_sym
        when :Time
          Time.parse(value)
        when :Date
          Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :Boolean
          if value.to_s =~ /\A(true|t|yes|y|1)\z/i
            true
          else
            false
          end
        when :Object
          # generic object (usually a Hash), return directly
          value
        when /\AArray<(?<inner_type>.+)>\z/
          inner_type = Regexp.last_match[:inner_type]
          value.map { |v| _deserialize(inner_type, v) }
        when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
          k_type = Regexp.last_match[:k_type]
          v_type = Regexp.last_match[:v_type]
          {}.tap do |hash|
            value.each do |k, v|
              hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
            end
          end
        else # model
          # models (e.g. Pet) or oneOf
          klass = Algolia::Recommend.const_get(type)
          klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        end
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        to_hash.to_s
      end

      # to_body is an alias to to_hash (backward compatibility)
      # @return [Hash] Returns the object in the form of hash
      def to_body
        to_hash
      end

      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end

          hash[param] = _to_hash(value)
        end
        hash
      end

      # Outputs non-array value in the form of hash
      # For object, use to_hash. Otherwise, just return the value
      # @param [Object] value Any valid value
      # @return [Hash] Returns the value in the form of hash
      def _to_hash(value)
        if value.is_a?(Array)
          value.compact.map { |v| _to_hash(v) }
        elsif value.is_a?(Hash)
          {}.tap do |hash|
            value.each { |k, v| hash[k] = _to_hash(v) }
          end
        elsif value.respond_to? :to_hash
          value.to_hash
        else
          value
        end
      end
    end
  end
end

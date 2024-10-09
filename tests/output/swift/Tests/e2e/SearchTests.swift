// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.
import XCTest

import DotEnv
import Utils

@testable import Core
@testable import Search

final class SearchClientRequestsTestsE2E: XCTestCase {
    static var APPLICATION_ID = "my_application_id"
    static var API_KEY = "my_api_key"
    static var client: SearchClient?

    override class func setUp() {
        if !(Bool(ProcessInfo.processInfo.environment["CI"] ?? "false") ?? false) {
            do {
                let currentFileURL = try XCTUnwrap(URL(string: #file))

                let packageDirectoryURL = currentFileURL
                    .deletingLastPathComponent()
                    .deletingLastPathComponent()
                    .deletingLastPathComponent()
                    .deletingLastPathComponent()
                    .deletingLastPathComponent()

                let dotEnvURL = packageDirectoryURL
                    .appendingPathComponent(".env")
                dump(dotEnvURL.absoluteString)
                try DotEnv.load(path: dotEnvURL.absoluteString, encoding: .utf8, overwrite: true)
            } catch {
                XCTFail("Unable to load .env file")
            }
        }

        do {
            self.APPLICATION_ID = try XCTUnwrap(ProcessInfo.processInfo.environment["ALGOLIA_APPLICATION_ID"])
        } catch {
            XCTFail("Please provide an `ALGOLIA_APPLICATION_ID` env var for e2e tests")
        }

        do {
            self.API_KEY = try XCTUnwrap(ProcessInfo.processInfo.environment["ALGOLIA_ADMIN_KEY"])
        } catch {
            XCTFail("Please provide an `ALGOLIA_ADMIN_KEY` env var for e2e tests")
        }

        self.client = try? SearchClient(appID: self.APPLICATION_ID, apiKey: self.API_KEY)
    }

    /// browse with minimal parameters
    func testBrowseTest() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<BrowseResponse<Hit>> = try await client.browseWithHTTPInfo(indexName: "cts_e2e_browse")
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"page\":0,\"nbHits\":33191,\"nbPages\":34,\"hitsPerPage\":1000,\"query\":\"\",\"params\":\"\"}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search with a real object
    func testGetObjectTest1() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.getObjectWithHTTPInfo(
            indexName: "cts_e2e_browse",
            objectID: "Batman and Robin"
        )
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"objectID\":\"Batman and Robin\",\"title\":\"Batman and Robin\",\"year\":1949,\"cast\":[\"Robert Lowery\",\"Johnny Duncan\",\"Jane Adams\"]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// getRule
    func testGetRuleTest() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.getRuleWithHTTPInfo(indexName: "cts_e2e_browse", objectID: "qr-1725004648916")
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"description\":\"test_rule\",\"enabled\":true,\"objectID\":\"qr-1725004648916\",\"conditions\":[{\"alternatives\":true,\"anchoring\":\"contains\",\"pattern\":\"zorro\"}],\"consequence\":{\"params\":{\"ignorePlurals\":\"true\"},\"filterPromotes\":true,\"promote\":[{\"objectIDs\":[\"Æon Flux\"],\"position\":0}]}}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// getSettings
    func testGetSettingsTest() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.getSettingsWithHTTPInfo(indexName: "cts_e2e_settings")
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"minWordSizefor1Typo\":4,\"minWordSizefor2Typos\":8,\"hitsPerPage\":100,\"maxValuesPerFacet\":100,\"paginationLimitedTo\":10,\"exactOnSingleWordQuery\":\"attribute\",\"ranking\":[\"typo\",\"geo\",\"words\",\"filters\",\"proximity\",\"attribute\",\"exact\",\"custom\"],\"separatorsToIndex\":\"\",\"removeWordsIfNoResults\":\"none\",\"queryType\":\"prefixLast\",\"highlightPreTag\":\"<em>\",\"highlightPostTag\":\"</em>\",\"alternativesAsExact\":[\"ignorePlurals\",\"singleWordSynonym\"]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search for a single hits request with minimal parameters
    func testSearchTest4() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponses<Hit>> = try await client
            .searchWithHTTPInfo(searchMethodParams: SearchMethodParams(requests: [
                SearchQuery
                    .searchForHits(SearchForHits(indexName: "cts_e2e_search_empty_index")),
            ]))
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"results\":[{\"hits\":[],\"page\":0,\"nbHits\":0,\"nbPages\":0,\"hitsPerPage\":20,\"exhaustiveNbHits\":true,\"exhaustiveTypo\":true,\"exhaustive\":{\"nbHits\":true,\"typo\":true},\"query\":\"\",\"params\":\"\",\"index\":\"cts_e2e_search_empty_index\",\"renderingContent\":{}}]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search with highlight and snippet results
    func testSearchTest5() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponses<Hit>> = try await client
            .searchWithHTTPInfo(searchMethodParams: SearchMethodParams(requests: [
                SearchQuery
                    .searchForHits(SearchForHits(
                        query: "vim",
                        attributesToRetrieve: ["*"],
                        attributesToHighlight: ["*"],
                        attributesToSnippet: ["*:20"],
                        indexName: "cts_e2e_highlight_snippet_results"
                    )),
            ]))
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"results\":[{\"hits\":[{\"editor\":{\"name\":\"vim\",\"type\":\"beforeneovim\"},\"names\":[\"vim\",\":q\"],\"_snippetResult\":{\"editor\":{\"name\":{\"value\":\"<em>vim</em>\",\"matchLevel\":\"full\"},\"type\":{\"value\":\"beforeneovim\",\"matchLevel\":\"none\"}},\"names\":[{\"value\":\"<em>vim</em>\",\"matchLevel\":\"full\"},{\"value\":\":q\",\"matchLevel\":\"none\"}]},\"_highlightResult\":{\"editor\":{\"name\":{\"value\":\"<em>vim</em>\",\"matchLevel\":\"full\",\"fullyHighlighted\":true,\"matchedWords\":[\"vim\"]},\"type\":{\"value\":\"beforeneovim\",\"matchLevel\":\"none\",\"matchedWords\":[]}},\"names\":[{\"value\":\"<em>vim</em>\",\"matchLevel\":\"full\",\"fullyHighlighted\":true,\"matchedWords\":[\"vim\"]},{\"value\":\":q\",\"matchLevel\":\"none\",\"matchedWords\":[]}]}}],\"nbHits\":1,\"page\":0,\"nbPages\":1,\"hitsPerPage\":20,\"exhaustiveNbHits\":true,\"exhaustiveTypo\":true,\"exhaustive\":{\"nbHits\":true,\"typo\":true},\"query\":\"vim\",\"index\":\"cts_e2e_highlight_snippet_results\",\"renderingContent\":{}}]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search for a single facet request with minimal parameters
    func testSearchTest8() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponses<Hit>> = try await client
            .searchWithHTTPInfo(searchMethodParams: SearchMethodParams(
                requests: [SearchQuery.searchForFacets(SearchForFacets(
                    facet: "editor",
                    indexName: "cts_e2e_search_facet",
                    type: SearchTypeFacet.facet
                ))],
                strategy: SearchStrategy.stopIfEnoughMatches
            ))
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"results\":[{\"exhaustiveFacetsCount\":true,\"facetHits\":[{\"count\":1,\"highlighted\":\"goland\",\"value\":\"goland\"},{\"count\":1,\"highlighted\":\"neovim\",\"value\":\"neovim\"},{\"count\":1,\"highlighted\":\"visual studio\",\"value\":\"visual studio\"},{\"count\":1,\"highlighted\":\"vscode\",\"value\":\"vscode\"}]}]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search filters end to end
    func testSearchTest14() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponses<Hit>> = try await client
            .searchWithHTTPInfo(searchMethodParams: SearchMethodParams(requests: [
                SearchQuery.searchForHits(SearchForHits(
                    filters: "editor:'visual studio' OR editor:neovim",
                    indexName: "cts_e2e_search_facet"
                )),
                SearchQuery.searchForHits(SearchForHits(
                    facetFilters: SearchFacetFilters.arrayOfSearchFacetFilters([
                        SearchFacetFilters.string("editor:'visual studio'"),
                        SearchFacetFilters.string("editor:neovim"),
                    ]),
                    indexName: "cts_e2e_search_facet"
                )),
                SearchQuery.searchForHits(SearchForHits(
                    facetFilters: SearchFacetFilters.arrayOfSearchFacetFilters([
                        SearchFacetFilters.string("editor:'visual studio'"),
                        SearchFacetFilters.arrayOfSearchFacetFilters([SearchFacetFilters.string("editor:neovim")]),
                    ]),
                    indexName: "cts_e2e_search_facet"
                )),
                SearchQuery.searchForHits(SearchForHits(
                    facetFilters: SearchFacetFilters.arrayOfSearchFacetFilters([
                        SearchFacetFilters.string("editor:'visual studio'"),
                        SearchFacetFilters.arrayOfSearchFacetFilters([
                            SearchFacetFilters.string("editor:neovim"),
                            SearchFacetFilters.arrayOfSearchFacetFilters([SearchFacetFilters.string("editor:goland")]),
                        ]),
                    ]),
                    indexName: "cts_e2e_search_facet"
                )),
            ]))
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"results\":[{\"hitsPerPage\":20,\"index\":\"cts_e2e_search_facet\",\"nbHits\":2,\"nbPages\":1,\"page\":0,\"hits\":[{\"editor\":\"visual studio\",\"_highlightResult\":{\"editor\":{\"value\":\"visual studio\",\"matchLevel\":\"none\"}}},{\"editor\":\"neovim\",\"_highlightResult\":{\"editor\":{\"value\":\"neovim\",\"matchLevel\":\"none\"}}}],\"query\":\"\",\"params\":\"filters=editor%3A%27visual+studio%27+OR+editor%3Aneovim\"},{\"hitsPerPage\":20,\"index\":\"cts_e2e_search_facet\",\"nbHits\":0,\"nbPages\":0,\"page\":0,\"hits\":[],\"query\":\"\",\"params\":\"facetFilters=%5B%22editor%3A%27visual+studio%27%22%2C%22editor%3Aneovim%22%5D\"},{\"hitsPerPage\":20,\"index\":\"cts_e2e_search_facet\",\"nbHits\":0,\"nbPages\":0,\"page\":0,\"hits\":[],\"query\":\"\",\"params\":\"facetFilters=%5B%22editor%3A%27visual+studio%27%22%2C%5B%22editor%3Aneovim%22%5D%5D\"},{\"hitsPerPage\":20,\"index\":\"cts_e2e_search_facet\",\"nbHits\":0,\"nbPages\":0,\"page\":0,\"hits\":[],\"query\":\"\",\"params\":\"facetFilters=%5B%22editor%3A%27visual+studio%27%22%2C%5B%22editor%3Aneovim%22%2C%5B%22editor%3Agoland%22%5D%5D%5D\"}]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// get searchDictionaryEntries results with minimal parameters
    func testSearchDictionaryEntriesTest() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.searchDictionaryEntriesWithHTTPInfo(
            dictionaryName: DictionaryType.stopwords,
            searchDictionaryEntriesParams: SearchDictionaryEntriesParams(query: "about")
        )
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"hits\":[{\"objectID\":\"86ef58032f47d976ca7130a896086783\",\"language\":\"en\",\"word\":\"about\"}],\"page\":0,\"nbHits\":1,\"nbPages\":1}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// searchRules
    func testSearchRulesTest() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.searchRulesWithHTTPInfo(
            indexName: "cts_e2e_browse",
            searchRulesParams: SearchRulesParams(query: "zorro")
        )
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"hits\":[{\"conditions\":[{\"alternatives\":true,\"anchoring\":\"contains\",\"pattern\":\"zorro\"}],\"consequence\":{\"params\":{\"ignorePlurals\":\"true\"},\"filterPromotes\":true,\"promote\":[{\"objectIDs\":[\"Æon Flux\"],\"position\":0}]},\"description\":\"test_rule\",\"enabled\":true,\"objectID\":\"qr-1725004648916\"}],\"nbHits\":1,\"nbPages\":1,\"page\":0}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// search with special characters in indexName
    func testSearchSingleIndexTest1() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponse<Hit>> = try await client
            .searchSingleIndexWithHTTPInfo(indexName: "cts_e2e_space in index")

        XCTAssertEqual(response.statusCode, 200)
    }

    /// single search retrieve snippets
    func testSearchSingleIndexTest3() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response: Response<SearchResponse<Hit>> = try await client.searchSingleIndexWithHTTPInfo(
            indexName: "cts_e2e_browse",
            searchParams: SearchSearchParams.searchSearchParamsObject(SearchSearchParamsObject(
                query: "batman mask of the phantasm",
                attributesToRetrieve: ["*"],
                attributesToSnippet: ["*:20"]
            ))
        )
        let responseBody = try XCTUnwrap(response.body)
        let responseBodyData = try CodableHelper.jsonEncoder.encode(responseBody)

        let expectedBodyData =
            try XCTUnwrap(
                "{\"nbHits\":1,\"hits\":[{\"_snippetResult\":{\"genres\":[{\"value\":\"Animated\",\"matchLevel\":\"none\"},{\"value\":\"Superhero\",\"matchLevel\":\"none\"},{\"value\":\"Romance\",\"matchLevel\":\"none\"}],\"year\":{\"value\":\"1993\",\"matchLevel\":\"none\"}},\"_highlightResult\":{\"genres\":[{\"value\":\"Animated\",\"matchLevel\":\"none\",\"matchedWords\":[]},{\"value\":\"Superhero\",\"matchLevel\":\"none\",\"matchedWords\":[]},{\"value\":\"Romance\",\"matchLevel\":\"none\",\"matchedWords\":[]}],\"year\":{\"value\":\"1993\",\"matchLevel\":\"none\",\"matchedWords\":[]}}}]}"
                    .data(using: .utf8)
            )

        XCTLenientAssertEqual(received: responseBodyData, expected: expectedBodyData)

        XCTAssertEqual(response.statusCode, 200)
    }

    /// setSettings with minimal parameters
    func testSetSettingsTest1() async throws {
        guard let client = SearchClientRequestsTestsE2E.client else {
            XCTFail("E2E client is not initialized")
            return
        }

        let response = try await client.setSettingsWithHTTPInfo(
            indexName: "cts_e2e_settings",
            indexSettings: IndexSettings(paginationLimitedTo: 10),
            forwardToReplicas: true
        )

        XCTAssertEqual(response.statusCode, 200)
    }
}

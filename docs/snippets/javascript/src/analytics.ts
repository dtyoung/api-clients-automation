// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

// >IMPORT
import { algoliasearch } from 'algoliasearch';
// IMPORT<

// Snippet for the customDelete method.
//
// allow del method for a custom path with minimal parameters
export async function snippetForCustomDelete(): Promise<void> {
  // >SEPARATOR customDelete default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.customDelete({ path: 'test/minimal' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the customGet method.
//
// allow get method for a custom path with minimal parameters
export async function snippetForCustomGet(): Promise<void> {
  // >SEPARATOR customGet default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.customGet({ path: 'test/minimal' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the customPost method.
//
// allow post method for a custom path with minimal parameters
export async function snippetForCustomPost(): Promise<void> {
  // >SEPARATOR customPost default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.customPost({ path: 'test/minimal' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the customPut method.
//
// allow put method for a custom path with minimal parameters
export async function snippetForCustomPut(): Promise<void> {
  // >SEPARATOR customPut default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.customPut({ path: 'test/minimal' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getAddToCartRate method.
//
// get getAddToCartRate with minimal parameters
export async function snippetForGetAddToCartRate(): Promise<void> {
  // >SEPARATOR getAddToCartRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getAddToCartRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getAverageClickPosition method.
//
// get getAverageClickPosition with minimal parameters
export async function snippetForGetAverageClickPosition(): Promise<void> {
  // >SEPARATOR getAverageClickPosition default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getAverageClickPosition({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getClickPositions method.
//
// get getClickPositions with minimal parameters
export async function snippetForGetClickPositions(): Promise<void> {
  // >SEPARATOR getClickPositions default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getClickPositions({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getClickThroughRate method.
//
// get getClickThroughRate with minimal parameters
export async function snippetForGetClickThroughRate(): Promise<void> {
  // >SEPARATOR getClickThroughRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getClickThroughRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getConversionRate method.
//
// get getConversationRate with minimal parameters
export async function snippetForGetConversionRate(): Promise<void> {
  // >SEPARATOR getConversionRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getConversionRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getNoClickRate method.
//
// get getNoClickRate with minimal parameters
export async function snippetForGetNoClickRate(): Promise<void> {
  // >SEPARATOR getNoClickRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getNoClickRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getNoResultsRate method.
//
// get getNoResultsRate with minimal parameters
export async function snippetForGetNoResultsRate(): Promise<void> {
  // >SEPARATOR getNoResultsRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getNoResultsRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getPurchaseRate method.
//
// get getPurchaseRate with minimal parameters
export async function snippetForGetPurchaseRate(): Promise<void> {
  // >SEPARATOR getPurchaseRate default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getPurchaseRate({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getRevenue method.
//
// get getRevenue with minimal parameters
export async function snippetForGetRevenue(): Promise<void> {
  // >SEPARATOR getRevenue default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getRevenue({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getSearchesCount method.
//
// get getSearchesCount with minimal parameters
export async function snippetForGetSearchesCount(): Promise<void> {
  // >SEPARATOR getSearchesCount default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getSearchesCount({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getSearchesNoClicks method.
//
// get getSearchesNoClicks with minimal parameters
export async function snippetForGetSearchesNoClicks(): Promise<void> {
  // >SEPARATOR getSearchesNoClicks default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getSearchesNoClicks({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getSearchesNoResults method.
//
// get getSearchesNoResults with minimal parameters
export async function snippetForGetSearchesNoResults(): Promise<void> {
  // >SEPARATOR getSearchesNoResults default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getSearchesNoResults({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getStatus method.
//
// get getStatus with minimal parameters
export async function snippetForGetStatus(): Promise<void> {
  // >SEPARATOR getStatus default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getStatus({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopCountries method.
//
// get getTopCountries with minimal parameters
export async function snippetForGetTopCountries(): Promise<void> {
  // >SEPARATOR getTopCountries default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopCountries({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopFilterAttributes method.
//
// get getTopFilterAttributes with minimal parameters
export async function snippetForGetTopFilterAttributes(): Promise<void> {
  // >SEPARATOR getTopFilterAttributes default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopFilterAttributes({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopFilterForAttribute method.
//
// get getTopFilterForAttribute with minimal parameters
export async function snippetForGetTopFilterForAttribute(): Promise<void> {
  // >SEPARATOR getTopFilterForAttribute default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopFilterForAttribute({ attribute: 'myAttribute', index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopFiltersNoResults method.
//
// get getTopFiltersNoResults with minimal parameters
export async function snippetForGetTopFiltersNoResults(): Promise<void> {
  // >SEPARATOR getTopFiltersNoResults default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopFiltersNoResults({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopHits method.
//
// get getTopHits with minimal parameters
export async function snippetForGetTopHits(): Promise<void> {
  // >SEPARATOR getTopHits default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopHits({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getTopSearches method.
//
// get getTopSearches with minimal parameters
export async function snippetForGetTopSearches(): Promise<void> {
  // >SEPARATOR getTopSearches default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getTopSearches({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the getUsersCount method.
//
// get getUsersCount with minimal parameters
export async function snippetForGetUsersCount(): Promise<void> {
  // >SEPARATOR getUsersCount default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  const response = await client.getUsersCount({ index: 'index' });

  // >LOG
  // use typed response
  console.log(response);
  // SEPARATOR<
}

// Snippet for the setClientApiKey method.
//
// switch API key
export function snippetForSetClientApiKey(): void {
  // >SEPARATOR setClientApiKey default
  // Initialize the client
  // Replace 'us' with your Algolia Application Region
  const client = algoliasearch('ALGOLIA_APPLICATION_ID', 'ALGOLIA_API_KEY').initAnalytics({ region: 'us' });

  // Call the API
  client.setClientApiKey({ apiKey: 'updated-api-key' });

  // >LOG
  // SEPARATOR<
}

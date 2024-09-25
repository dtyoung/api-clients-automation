<?php

// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

namespace Algolia\AlgoliaSearch\Test\Client;

use Algolia\AlgoliaSearch\Api\AbtestingClient;
use Algolia\AlgoliaSearch\Configuration\AbtestingConfig;
use Algolia\AlgoliaSearch\Http\HttpClientInterface;
use Algolia\AlgoliaSearch\Http\Psr7\Response;
use Algolia\AlgoliaSearch\RetryStrategy\ApiWrapper;
use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\TestDox;
use PHPUnit\Framework\TestCase;
use Psr\Http\Message\RequestInterface;

/**
 * Client tests for AbtestingClient.
 *
 * @internal
 */
#[CoversClass(AbtestingClient::class)]
class AbtestingTest extends TestCase implements HttpClientInterface
{
    public const APP_ID = 'test-app-id';
    public const API_KEY = 'test-api-key';

    private $recordedRequest;

    public function sendRequest(RequestInterface $request, $timeout, $connectTimeout): Response
    {
        $this->recordedRequest = [
            'request' => $request,
            'responseTimeout' => $timeout * 1000,
            'connectTimeout' => $connectTimeout * 1000,
        ];

        return new Response(200, [], '{}');
    }

    #[TestDox('calls api with correct user agent')]
    public function test0commonApi(): void
    {
        $client = $this->createClient(self::APP_ID, self::API_KEY);
        $client->customPost(
            '1/test',
        );
        $this->assertTrue(
            (bool) preg_match(
                '/^Algolia for PHP \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Abtesting (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$/',
                $this->recordedRequest['request']->getHeader('User-Agent')[0]
            )
        );
    }

    #[TestDox('the user agent contains the latest version')]
    public function test1commonApi(): void
    {
        $client = $this->createClient(self::APP_ID, self::API_KEY);
        $client->customPost(
            '1/test',
        );
        $this->assertTrue(
            (bool) preg_match(
                '/^Algolia for PHP \(4.4.4\).*/',
                $this->recordedRequest['request']->getHeader('User-Agent')[0]
            )
        );
    }

    #[TestDox('calls api with default read timeouts')]
    public function test2commonApi(): void
    {
        $client = $this->createClient(self::APP_ID, self::API_KEY);
        $client->customGet(
            '1/test',
        );
        $this->assertEquals(
            2000,
            $this->recordedRequest['connectTimeout']
        );

        $this->assertEquals(
            5000,
            $this->recordedRequest['responseTimeout']
        );
    }

    #[TestDox('calls api with default write timeouts')]
    public function test3commonApi(): void
    {
        $client = $this->createClient(self::APP_ID, self::API_KEY);
        $client->customPost(
            '1/test',
        );
        $this->assertEquals(
            2000,
            $this->recordedRequest['connectTimeout']
        );

        $this->assertEquals(
            30000,
            $this->recordedRequest['responseTimeout']
        );
    }

    #[TestDox('fallbacks to the alias when region is not given')]
    public function test0parameters(): void
    {
        $client = $this->createClient(
            'my-app-id',
            'my-api-key',
            null
        );
        $this->assertIsObject($client);
        $client->getABTest(
            123,
        );
        $this->assertEquals(
            'analytics.algolia.com',
            $this->recordedRequest['request']->getUri()->getHost()
        );
    }

    #[TestDox('uses the correct region')]
    public function test1parameters(): void
    {
        $client = $this->createClient(
            'my-app-id',
            'my-api-key',
            'us'
        );
        $this->assertIsObject($client);
        $client->getABTest(
            123,
        );
        $this->assertEquals(
            'analytics.us.algolia.com',
            $this->recordedRequest['request']->getUri()->getHost()
        );
    }

    #[TestDox('throws when incorrect region is given')]
    public function test2parameters(): void
    {
        try {
            $client = $this->createClient(
                'my-app-id',
                'my-api-key',
                'not_a_region'
            );

            $this->fail('Expected exception to be thrown');
        } catch (\Exception $e) {
            $this->assertEquals($e->getMessage(), '`region` must be one of the following: de, us');
        }
    }

    #[TestDox('switch API key')]
    public function test0setClientApiKey(): void
    {
        $client = AbtestingClient::createWithConfig(AbtestingConfig::create('test-app-id', 'test-api-key', 'us')->setFullHosts(['http://'.('true' == getenv('CI') ? 'localhost' : 'host.docker.internal').':6683']));

        $res = $client->customGet(
            'check-api-key/1',
        );
        $this->assertEquals(
            '{"headerAPIKeyValue":"test-api-key"}',
            json_encode($res)
        );

        $client->setClientApiKey(
            'updated-api-key',
        );

        $res = $client->customGet(
            'check-api-key/2',
        );
        $this->assertEquals(
            '{"headerAPIKeyValue":"updated-api-key"}',
            json_encode($res)
        );
    }

    /**
     * @param mixed $appId
     * @param mixed $apiKey
     * @param mixed $region
     */
    private function createClient($appId, $apiKey, $region = 'us'): AbtestingClient
    {
        $config = AbtestingConfig::create($appId, $apiKey, $region);
        $clusterHosts = AbtestingClient::getClusterHosts($config);
        $api = new ApiWrapper($this, $config, $clusterHosts);

        return new AbtestingClient($api, $config);
    }
}

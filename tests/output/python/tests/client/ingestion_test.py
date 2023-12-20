from re import compile

from algoliasearch.http.transporter import EchoTransporter
from algoliasearch.ingestion.client import IngestionClient
from algoliasearch.ingestion.config import Config


class TestIngestionClient:
    _config: Config
    _client: IngestionClient

    def create_client(self) -> IngestionClient:
        self._config = Config("appId", "apiKey", "us")
        self._client = IngestionClient(EchoTransporter(self._config), self._config)

    async def test_common_api_0(self):
        self.create_client()

        _req = await self._client.custom_post_with_http_info(
            path="/test",
        )

        regex_user_agent = compile(
            "^Algolia for Python \\(\\d+\\.\\d+\\.\\d+(-?.*)?\\)(; [a-zA-Z. ]+ (\\(\\d+((\\.\\d+)?\\.\\d+)?(-?.*)?\\))?)*(; Ingestion (\\(\\d+\\.\\d+\\.\\d+(-?.*)?\\)))(; [a-zA-Z. ]+ (\\(\\d+((\\.\\d+)?\\.\\d+)?(-?.*)?\\))?)*$"
        )
        assert regex_user_agent.match(_req.headers.get("user-agent")) is not None

    async def test_common_api_1(self):
        self.create_client()

        _req = await self._client.custom_get_with_http_info(
            path="/test",
        )

        assert 2000 == _req.timeouts.get("connect")
        assert 5000 == _req.timeouts.get("response")

    async def test_common_api_2(self):
        self.create_client()

        _req = await self._client.custom_post_with_http_info(
            path="/test",
        )

        assert 2000 == _req.timeouts.get("connect")
        assert 30000 == _req.timeouts.get("response")

    async def test_parameters_0(self):
        self._client = IngestionClient(
            EchoTransporter(Config("my-app-id", "my-api-key", "us")),
            Config("my-app-id", "my-api-key", "us"),
        )

        _req = await self._client.get_source_with_http_info(
            source_id="6c02aeb1-775e-418e-870b-1faccd4b2c0f",
        )

        assert "data.us.algolia.com" == _req.host

    async def test_parameters_1(self):
        try:
            self._client = IngestionClient(
                EchoTransporter(Config("my-app-id", "my-api-key", "not_a_region")),
                Config("my-app-id", "my-api-key", "not_a_region"),
            )

        except (ValueError, Exception) as e:
            assert (
                "`region` is required and must be one of the following: eu, us"
                == str(e)
            )

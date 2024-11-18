// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package algoliasearch.e2e

import algoliasearch.api.InsightsClient
import algoliasearch.config.*
import algoliasearch.insights.*
import org.json4s.*
import org.json4s.native.JsonParser.*
import org.scalatest.funsuite.AnyFunSuite
import io.github.cdimascio.dotenv.Dotenv
import org.skyscreamer.jsonassert.JSONCompare.compareJSON
import org.skyscreamer.jsonassert.JSONCompareMode
import org.json4s.native.Serialization
import org.json4s.native.Serialization.write

import scala.concurrent.duration.Duration
import scala.concurrent.{Await, ExecutionContextExecutor}

class InsightsTestE2E extends AnyFunSuite {
  implicit val ec: ExecutionContextExecutor = scala.concurrent.ExecutionContext.global
  implicit val formats: Formats = org.json4s.DefaultFormats

  def testClient(): InsightsClient = {
    val region = Some("us")
    if (System.getenv("CI") == "true") {
      InsightsClient(
        appId = System.getenv("ALGOLIA_APPLICATION_ID"),
        apiKey = System.getenv("ALGOLIA_ADMIN_KEY"),
        region = region
      )
    } else {
      val dotenv = Dotenv.configure.directory("../../").load
      InsightsClient(
        appId = dotenv.get("ALGOLIA_APPLICATION_ID"),
        apiKey = dotenv.get("ALGOLIA_ADMIN_KEY"),
        region = region
      )
    }
  }

  test("Many events type1") {
    val client = testClient()
    val future = client.pushEvents(
      insightsEvents = InsightsEvents(
        events = Seq(
          ConvertedObjectIDsAfterSearch(
            eventType = ConversionEvent.withName("conversion"),
            eventName = "Product Purchased",
            index = "products",
            userToken = "user-123456",
            authenticatedUserToken = Some("user-123456"),
            timestamp = Some(1731715200000L),
            objectIDs = Seq("9780545139700", "9780439784542"),
            queryID = "43b15df305339e827f0ac0bdc5ebcaa7"
          ),
          ViewedObjectIDs(
            eventType = ViewEvent.withName("view"),
            eventName = "Product Detail Page Viewed",
            index = "products",
            userToken = "user-123456",
            authenticatedUserToken = Some("user-123456"),
            timestamp = Some(1731715200000L),
            objectIDs = Seq("9780545139700", "9780439784542")
          )
        )
      )
    )

    val response = Await.result(future, Duration.Inf)
    compareJSON("""{"message":"OK","status":200}""", write(response), JSONCompareMode.LENIENT)
  }

}

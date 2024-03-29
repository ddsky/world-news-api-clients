package worldnewsapi

import io.finch._
import io.finch.circe._
import io.circe.{Decoder, ObjectEncoder}
import io.circe.generic.auto._
import io.circe.generic.semiauto
import io.circe.generic.semiauto._
import io.circe.java8.time._
import com.twitter.finagle.Http
import com.twitter.finagle.util.LoadService
import com.twitter.util.{Await, Future}


class Server {

  // Loads implementation defined in resources/META-INF/services/worldnewsapi.DataAccessor
  val impls: Seq[DataAccessor] = LoadService[DataAccessor]()
  val db = if (impls.isEmpty) new DataAccessor { } else impls.head

  val service = endpoint.makeService(db)

  val server = Http.serve(":8080", service) //creates service

  def close(): Future[Unit] = {
    Await.ready(server.close())
  }
}

/**
 * Launches the API service when the system is ready.
 */
object Server extends Server with App {
  Await.ready(server)
}

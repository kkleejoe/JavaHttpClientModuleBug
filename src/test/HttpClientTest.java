package test ;

import java.net.http.* ;

public class HttpClientTest {
  public final static void main(final String[] p_args) throws Exception {
    final HttpRequest request = HttpRequest.newBuilder()
                              . uri(java.net.URI.create(p_args[0]))
                              . build() ;
    final HttpResponse<String> response = HttpClient.newHttpClient()
                                        . send(request, HttpResponse.BodyHandlers.ofString()) ;
    System.out.println( p_args[0] + " : " + response.statusCode() ) ;
  }
}
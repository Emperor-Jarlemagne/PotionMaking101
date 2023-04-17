defmodule DockerExampleTest.RouterTest do
  use ExUnit.Case, async: true

  use Plug.Test

  @opts DockerExample.Router.init([])

test "return ok" do
  build_conn = conn(:get, "/")
  conn = DockerExample.Router.call(build_conn, @opts)

  assert conn.state ==:sent
  assert conn.status == 200
  assert conn.resp_body == "OK"
end

test "return Blang" do
  build_conn = conn(:get, "/aliens_name")
  conn = DockerExample.Router.call(build_conn, @opts)

  assert conn.state ==:sent
  assert conn.status == 200
  assert conn.resp_body == "Blang"
end

end

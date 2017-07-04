import jester, asyncdispatch, htmlgen, re

routes:
  get "/":
    resp h1("Hello world")
  post re".+":
    resp h1(request.formData[0])

runForever()
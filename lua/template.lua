view_model = {
  title = "Joe",
  calc = function ()
    return 2 + 10004;
  end
}

view = [[
  <h1>{{title}}</h1>
  <p>
    Spending habits:
    <span>{{calc}}</span>
  </p>
]]

output = lustache:render(view, view_model)
ngx.say(output)


ngx.say("<h3>Some info about Michael</h3>")


-- another template
view2 = [[
<ul>
  <li>{{name.first}} {{name.last}}</li>
  <li>{{age}}</li>
</ul>
]]

model = {
  name = {
    first = "Michael",
    last = "Jackson"
  },
  age = "RIP"
}
output = lustache:render(view2, model)

for i = 1, 200 do  -- The range includes both ends.
  ngx.say(output)
end

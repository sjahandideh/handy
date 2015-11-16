Debugging Ruby apps
-------------------

##Pry step##

imagine you are debugging a method and suddenly you find a method like this:

```ruby
def subco?
  current_teacher.subco?
end
```
so, you start looking for that subco? method in teacher model but you can't find it.
you notice it's neither an activerecord method like 'belongs_to'. you get confused and
start looking for this method in your github repo but you find 5 pages of result!!
"pry step" comes to your rescue. how? you put a binding.pry before the call and when
you get there, you simply type, 'step'. pry will then take you inside the method and
you can see where it is called. in this case, it took me inside the app/extensions and
i noticed that my teacher class was extended to have this method. Yay! problem solved!



# RSpec

## atribute reader

- `attr_accessor` creates both the READER & WRITER methods.
- `attr_reader` creates only the reader.
- `attr_writer` creates only the writer.

- `.instance_variables` gives you a list of all instance variables for an instance object.

```ruby
machine.instance_variables
# [:@water]
```

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

## before

```ruby
before do
    xxx
end
```

## Falsey values

- only `false` and `nil` are falsey values in Ruby.

## Memoization

- Saving a method's return value so it does not have to be recomputed each time.

- `let` it will only run when it's called, not before.
- benefit compared with `before` is that if there are a lot of tests that don't use that variable, the `before` will be executed anyway even that it's not needed.
- `let!` will make sure that it is called when the code is readed.

```ruby
let(:variable) { Class.new()}
```

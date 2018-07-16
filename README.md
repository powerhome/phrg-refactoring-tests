# Refactor Previous Lab's Tests

You will recognize this as Learn's "ActiveRecord Validations Lab" with two added tests. We are going to refactor its test files to use factories, and be more explicit about what is getting tested (by removing `let`).

## What needs to be done

First, use valid attributes to create `Post` and `Author` factories. There will be no need to invoke `Model#new` in any of your tests. Rely on `build`ing and `create`ing your factory blueprints.

Next, remove all the `let` declarations by moving logic directly into the test examples. Here is an example from the `post_spec.rb`.

BEFORE (as it stands now):

```ruby
it "is invalid with too short content" do
  expect(short_content).to be_invalid
end
```

AFTER you fix it:

```ruby
it "is invalid with too short content" do
  expect(build(:post, content: "too short")).to be_invalid
end
```

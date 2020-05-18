# STI `.becomes!` bug

This repository exists to showcase unintuitive behavior (possibly a bug) when using Single Table Inheritance (STI) together with `becomes!`.

The test application defines three models:

* [Event](./app/models/event.rb), the STI base model 
* [EmailEvent](./app/models/email_event.rb), one inherited model
* [MessageEvent](./app/models/message_event.rb), another inherited model


Both `EmailEvent` and `MessageEvent` have the same fields (`outcome` and `subtype`), but different validations for these fields.

When converting one into the other using `#becomes!`, the validations of the old model are still applied.

This behavior is shown in a [failing spec](./spec/models/event_spec.rb)


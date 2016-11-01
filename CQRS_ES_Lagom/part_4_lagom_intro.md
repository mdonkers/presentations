
### Lagom microservice framework

<!-- .slide: data-background="img/background-violet-orig.jpg" -->

---

### Design philosophy

- Distributed<!-- .element: class="fragment"-->
- Asynchronous<!-- .element: class="fragment"-->
- Productivity<!-- .element: class="fragment"-->

---

### Concepts

- Microservices
- Polyglot
- Design Driven APIs
- Immutability
- Event Sourcing and CQRS

---

### Opiniated

```Scala
ServiceCall<Source<String, NotUsed>, Source<String, NotUsed>> stream();

@Override
default Descriptor descriptor() {
  return named("stream").withCalls(namedCall("stream", this::stream))
    .withAutoAcl(true);
}
```

---

### Core technologies

- Akka
  - Akka Streams
  - Akka Persistence
  - Akka Cluster
- Play
- ConductR

Note:
Play used as Web Framework
Kafka used for Reactive Streams middleware

---

### Lagom persistence

- Cassandra
- `PersistentEntity`
  - Requires `Command`, `Event` and `State`
- Single instance kept in memory

Note:
Instance is passivated when not in use

---

### Command - Event - State

<p><img class="simpleImage" title="Command Event State" src="img/command_event_state.png" width="70%"></p>

---

<p><img class="simpleImage" title="Query with JDBC" src="img/interesting_man_meme2.jpg" height="100%"></p>

---

### Query example

<p><img class="simpleImage" title="DDD Example" src="img/query_example.png" width="70%"></p>
Get me all inspections with remarks for a given ship

---

### Lagom JDBC support

- Available in 1.2 release
- Slick
- Storing and reading entities

Note:
Slick for ORM and asynchronous execution of JDBC


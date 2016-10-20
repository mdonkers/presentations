
### Lagom microservice framework

<!-- .slide: data-background="img/background-orange-orig.jpg" -->

---









---

### Traditional Architecture

<p><img class="simpleImage" title="Traditional Architecture" src="img/mf_single-model.png" width="80%"></p>

&copy; Martin Fowler

---

### Storing data

- Simple approach
  - Single database
  - <span>Normalized</span> tables for write-side data <!-- .element: class="fragment highlight-blue"-->
  - Views for <span>denormalizing</span> data <!-- .element: class="fragment highlight-blue"-->
  - Keep queries simple

---

### Consistency

- Key feature for the Event Store
- Without transactions, much work needed to make as reliable <!-- .element: class="fragment"-->
- Versioning / timestamps <!-- .element: class="fragment"-->
<li><span>Eventual</span> consistency<!-- .element: class="fragment highlight-red"--></li>  <!-- .element: class="fragment"-->

---

### Event Receiver

```
override def receive: Receive = {
  case msg: CamelMessage =>
    val body: Xor[Error, User] = decode[User](msg.bodyAs[String])
    body.fold({ error =>
      sender() ! Failure(error)
    }, { user =>
      sender() ! Ack
    })
  case _ => log.warning("Unexpected event received")
}
```


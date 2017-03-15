### Wrapping Up

<!-- .slide: data-background="img/background-green-orig.jpg" -->

---

### Lessons learned

+ Conventions make setup easy
- Framework on top of many layers
- Scala more concise, but may feel like more magic

---

```
...
[INFO] Service locator is running at http://localhost:8000
[INFO] Service gateway is running at http://localhost:9000
...
[INFO] (Service started, press enter to stop and go back to the console...)
[error] c.l.l.i.s.ServiceRegistrationModule$RegisterWithServiceRegistry 
   - Service name=[hello] couldn't register itself to the service locator.
com.lightbend.lagom.javadsl.api.transport.TransportException: <head>
...
[error] a.c.s.PersistentShardCoordinator - Persistence failure when replaying 
   events for persistenceId [/sharding/HelloEntityCoordinator]. Last 
   known sequence number [0]
com.lightbend.lagom.javadsl.api.transport.PolicyViolation: <head>
...
```

---

### Links

- [Martin Fowler - CQRS](http://martinfowler.com/bliki/CQRS.html)
- [Microsoft - CQRS Journey](https://msdn.microsoft.com/en-us/library/jj554200.aspx)
- [Lagom Framework](http://www.lagomframework.com/)
- [Miel Donkers - Lagom CQRS Demo](https://github.com/mdonkers/lagom-cqrs-es-demo)

---

### Thank You!

<!-- .slide: data-background="img/background-dark-orig.jpg" -->

<p><img class="simpleImage" src="img/logo-and-name-white.png" alt="alt text" title="codecentric Logo" width="30%"></p>

---

### We're hiring

<!-- .slide: data-background="img/background-dark-orig.jpg" -->

<p><img class="simpleImage" src="img/logo-and-name-white.png" alt="alt text" title="codecentric Logo" width="30%"></p>

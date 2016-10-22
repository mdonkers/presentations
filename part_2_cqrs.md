
### What is CQRS

<!-- .slide: data-background="img/background-green-orig.jpg" -->

---

### What is CQRS

- Command Query Responsibility Segregation

---

### Traditional Architecture

<p><img class="simpleImage" title="Traditional Architecture" src="img/mf_single-model.png" width="80%"></p>

&copy; Martin Fowler

---

### CQRS Architecture

<p><img class="simpleImage" title="CQRS Architecture" src="img/mf_cqrs.png" width="70%"></p>

&copy; Martin Fowler

---

### Storing data

- Simple approach
  - Single database
  - <span>Normalized</span> tables for write-side data <!-- .element: class="fragment highlight-blue"-->
  - Views for <span>denormalizing</span> data <!-- .element: class="fragment highlight-blue"-->
  - Keep queries simple

---

### CQRS related to DDD

- DDD - Domain Driven Design
- Bounded Context <!-- .element: class="fragment"-->
- Aggregate <!-- .element: class="fragment"-->
- Command <!-- .element: class="fragment"-->
- Event <!-- .element: class="fragment"-->

Note:
Bounded context = model with group of objects, internally consistent
Aggregate = cluster of object treated as single unit

---

### DDD example

<p><img class="simpleImage" title="DDD Example" src="img/ddd_concepts.png" width="70%"></p>

---

### Command - Event - State

<p><img class="simpleImage" title="Command Event State" src="img/command_event_state.png" width="70%"></p>

---

### Service owns data

<p><img class="simpleImage" title="Service owns data" src="img/service_owns_data.png" width="80%"></p>


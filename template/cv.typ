// Set font
#show heading: set text(font: "Liberation Mono")

#show link: underline

#show label("highlight_gray"): set text(gray)

#set text(
  size: 11pt,
)

#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

= Alexey Yevtushenko

alexey.yevtushenko.work\@gmail.com |
#link("https://github.com/isNastish/")[github.com/isnastish] | #link("https://www.linkedin.com/in/alexey-yevtushenko-b76b6a2a1/")[linkedin.com/in/alexey-yevtushenko] #h(1fr) _Stockholm, Sweden_ \

== Summary 
#chiline()
Software engineer with 3 years of experience writing C/C++, Python and Golang, specializing in backend and microservice development. I have a solid background in algorithms and data structures and enjoy writing good, maintainable code which solves complex problems. I'm most confident working with Golang and Python at a lower level of tech stack, including network communication via different protocols, but I'm agnostic to any programming language and have experience with modern technologies like Redis, PostgreSQL, gRPC, common cloud providers, containerization and best security practices.

== Education
#chiline()
*Sumy State University* #h(1fr) _2019/09 -- 2022/04 (Paused)_ \
Bachelor of Science in Computer Science #h(1fr) _Sumy, Ukraine_ \
- *Courses*: Algorithms and data structures in C++, object-oriented programming in Java and Python, \ relational databases, compilers, computer networks and more.

*Ubisoft* #h(1fr) _2022/06 -- 2023/08_ \
Work under supervision, mentorship. #h(1fr) _Ubisoft Stockholm studio_ \
- *Topics*: C++ pair-programming. Code optimizations, profiling, distributed systems, microservices.

== Work Experience
#chiline()
#link("https://www.ubisoft.com/")[*Ubisoft*] #h(1fr) _Since 2022/06_ \
Junior Software Engineer #h(1fr) _On-site/Stockholm, Sweden_ \
- Core developer of #link("https://stockholm.ubisoft.com/scalar/")[Scalar], a cloud-based game engine for creating massive multiplayer games.
- Maintained and developed internal sdk for building C++ projects, containerizing and deploying Python services.
- Enhanced a distributed entity component system #link("https://en.wikipedia.org/wiki/Entity_component_system")[(ECS)] for synchronizing entities in the game world over the network, improving the performance, benchmarking.
- Implemented a backend for AWS S3 storage both in Python, using async version of AWS sdk, and in C++, using #link("https://curl.se/libcurl/")[libcurl]. The storage was used for caching http requests made to the services producing multimedia content.
- Maintained and improved custom #link("https://en.wikipedia.org/wiki/Event-driven_architecture")[eventing system]  service in Golang. The system utilized multiple NoSQL databases for storing events:  FaunaDB, Firestore and Redis, depending on the underlying cloud provider.
- Wrote a #link("https://grpc.io/")[gRPC] python client to interect with the eventing system service for publishing events and listening for updates from multiple event sources.
- JWT authentication, both in python and Golang, established mutual TLS connection between services.
- Wrote technical documentation, constantly participated in code reviews.
- Implemented cloud mutex for mutually exclusive access to cloud resource between services. The lock was acquired by publisning `ACQUIRE` event and released by publishing `RELEASED` event to the earlier mentioned eventing system.  
- Wrote python library to interact with cloud buckets regardless of the underlying cloud provider.

== Projects
#chiline()
*Distributed key-value storage* #link("https://github.com/isnastish/kvs")[github.com/kvs-storage] #h(1fr) _Since 2024/05_ \ 
- Designed and implemented a service for storing key-value pairs in memory, aka Redis. Wrote both Golang and Python clients to interact with the service over HTTP using REST api.
- The service utilizes gRPC framework for communication with another service, responsible for persisting transactions. Transaction tracking is needed to recreate the state of the storage in case of abnormal shutdown.
- All transactions are persisted in a Postgres (using #link("https://github.com/jackc/pgx")[PGX] driver/toolkit) or in a binary file.

*Distibuted, multi-client chat* #link("https://github.com/isnastish/chat")[github.com/chat] #h(1fr) _Since 2024/03_ \
- Wrote a distributed chat application which supports multiple backends for persisting messages from connected clients.
- The backend uses my custom KVS service and Redis (as an alternative), as well as in-memory storage for local development. Service is run inside a docker container listening on TCP/IP protocol to handle incomming connections. Chat server is designed to operate as a finite-state machine #link("https://en.wikipedia.org/wiki/Finite-state_machine")[(FSM)].

// *Container library with a custom memory allocation schema*
// #link("https://github.com/isnastish/mylib")[github.com/container-library] #h(1fr) _2023/11 -- 2024/03_
// - Thread-safe C++ library with #link("https://www.youtube.com/watch?v=ypWgAauE9kA&t=51s")[region-based memory management]. 
// - The library supports common data structures: growing arrays, doubly linked lists, hash tables and sets.

// Continues on the next page statement
#align(center)[...continues on the next page... ] #label("highlight_gray")

== Skills
#chiline()
*Programming languages*: C/C++, Golang, Python, SQL \
*Technologies*: Docker, CI/CD, Git, Linux, AWS S3, gRPC, GTEST, PostgreSQL, SQLite,
Redis, FaunaDB, HTTP, REST, Flask/Quart, FastAPI.

// Add an info when a CV was updated the last.
#h(1fr) #text("Last updated 2024/10") #label("highlight_gray")
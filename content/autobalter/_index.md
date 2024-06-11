+++
title = "Index"
template = "index.html"
+++

# AutoBalter

From the team that developed [Balter-rs](www.balterloadtesting.com/balter) we provide a fully-automated load-testing, fuzzing and performance analysis solution. You provide an [OpenAPI specification](https://swagger.io/specification/), and then we handle everything else.

- Max Transactions Per Second (TPS), latency curves & error rates for every API, and correlations between APIs.
- Automatic fuzzing & edge-case analysis.
- One-click regression testing.
- Historical tracking and alarming.
- An easy-to-use dashboard, as well as access to your data through Prometheus.
- Weekly reports for business leaders.
- Integrates with CI/CD solutions.

# Demo

The easiest way to learn about AutoBalter is to try the [demo](/demo-index.html).

# How It Works

AutoBalter takes an [OpenAPI specification](https://swagger.io/specification/) describing how your API works. AutoBalter will parse and interpret the specification, and use it as the starting point to learning your API.

At the start, AutoBalter is "just" an automated load-test and fuzz-test generator. Using the OpenAPI specification, AutoBalter will target your APIs with simulated requests, providing data on TPS, latency and error curves and displaying these in an easy-to-use dashboard.

Over time, with a mix of exhaustive tree-search and AI to generate the simulated requests, AutoBalter will learn about the design of your APIs and their constraints. This information will be leveraged to design requests which specifically target the edge-cases of your system. Any request can be added to a set of regression tests to automatically expand your integration test suite.

With just an OpenAPI specification, you get `{load, fuzz, integration, regression}`-testing.

# Sign Up For Beta

If you are interested in participating in the AutoBalter beta, sign up below.


<script async data-uid="509cbe35c2" src="https://balter-load-testing.ck.page/509cbe35c2/index.js"></script>

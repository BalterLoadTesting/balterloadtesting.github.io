+++
title = "Index"
template = "index.html"
+++

# AutoBalter

From the team that developed [Balter-rs](www.balterloadtesting.com/balter) we provide a fully-automated load-testing solution. You provide an API specification, and then we handle everything else.

- Max Transactions Per Second (TPS) for every API
- Latency curves & Error rates
- TPS/Latency/Error correlations between APIs
- Automatic fuzzing & edge-case analysis
- All data made available through Grafana and Prometheus

# How It Works

## 1. Provide an OpenAPI specification

AutoBalter takes an [OpenAPI specification](https://swagger.io/specification/) describing how your API works. AutoBalter will parse and interpret the specification, and use it as the base point to learning your API. A snippet of an example of an OpenAPI specification is below:

```yaml
paths:
  /pet:
    put:
      summary: Update an existing pet
      operationId: updatePet
      requestBody:
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/Pet'
          application/xml:
            schema:
              $ref: '#/components/schemas/Pet'
        required: true
      responses:
        400:
          description: Invalid ID supplied
          content: {}
        404:
          description: Pet not found
          content: {}
        405:
          description: Validation exception
          content: {}
      security:
      - petstore_auth:
        - write:pets
        - read:pets
      x-codegen-request-body-name: body
```

## 2. Allow permissions for API access

Adding permissions for AutoBalter to access your pre-prod stack will vary slightly between users. If you are using AWS, we will provide a CDK snippet like the following for you to enable access.

```typescript
const authorizer = new HttpIamAuthorizer();

const httpApi = new apigwv2.HttpApi(this, 'HttpApi', {
  defaultAuthorizer: authorizer,
});

const routes = httpApi.addRoutes({
  integration: new HttpUrlIntegration('BooksIntegration', 'https://get-books-proxy.example.com'),
  path: '/books/{book}',
});

routes[0].grantInvoke(principal);
```

## 3. Run!

Once AutoBalter has your API specification and access to your pre-prod API setup, all you need to do is run it! AutoBalter will automatically run load test scenarios using your specification, as well as leveraging AI to find edge-cases.


# Sign Up For Beta

If you are interested in participating in AutoBalter beta, sign up below.


<script async data-uid="509cbe35c2" src="https://balter-load-testing.ck.page/509cbe35c2/index.js"></script>

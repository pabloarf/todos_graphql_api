class TodosGraphqlApiSchema < GraphQL::Schema
  # Point of contact between the client and the server
  # Defines operations to be served
  mutation(Types::MutationType)
  query(Types::QueryType)
end

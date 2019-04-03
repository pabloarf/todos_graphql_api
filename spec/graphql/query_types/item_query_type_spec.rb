# RSpec.describe QueryTypes::ItemQueryType do
#   # avail type definer in our tests
#   types = GraphQL::Define::TypeDefiner.instance
#   # create fake todo lists using the todo_list factory
#   let!(:todo_lists) { create_list(:todo_list, 3) }
#
#   before do
#     todo_lists.each do |list|
#       5.times do
#         list.items = create(:item)
#       end
#     end
#   end
#
#   describe 'querying all todo lists' do
#
#     it 'has a :todo_lists that returns a ToDoList type' do
#       expect(subject).to have_field(:items).that_returns(types[Types::ItemType])
#     end
#
#     it 'returns all our created todo lists' do
#       query_result = subject.fields['items'].resolve(nil, nil, nil)
#
#       # ensure that each of our todo lists is returned
#       todo_lists.each do |list|
#         expect(query_result.to_a).to include(list)
#       end
#
#       # we can also check that the number of lists returned is the one we created.
#       expect(query_result.count).to eq(todo_lists.count)
#     end
#   end
# end
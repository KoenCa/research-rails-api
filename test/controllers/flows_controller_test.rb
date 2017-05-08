# klasse om de controller te testen
class FlowsControllerTest < ActionDispatch::IntegrationTest

  # Deze test controleert of de controller het juiste content type terug geeft
  test 'should give the correct response' do
    get '/flows'
    assert_response :success
    assert_equal 'application/json', @response.content_type
  end

  # Deze test maakt twee flows aan in een test database genaamd flows_test
  # Hierna word er gecontroleerd of de controller deze flows correct terug geeft
  test 'should return all the flows' do
    Flow.delete_all
    flows = Flow.create([
                  {
                    trashed: false,
                    name: 'Test1',
                    flow_group_id: BSON::ObjectId.from_string('507f1f77bcf86cd799439011'),
                    synchronous: false,
                    error_components: [],
                    lock_user_id: BSON::ObjectId.from_string('507f1f77bcf86cd799439012'),
                    tracing_ttl: 'test',
                    components: []

                  },
                  {
                    trashed: false,
                    name: 'Test1',
                    flow_group_id: BSON::ObjectId.from_string('507f1f77bcf86cd799439011'),
                    synchronous: false,
                    error_components: [],
                    lock_user_id: BSON::ObjectId.from_string('507f1f77bcf86cd799439012'),
                    tracing_ttl: 'test',
                    components: []

                  }
                ])

    get '/flows'
    assert_response :success
    assert_equal flows.to_json, @response.body
  end
end

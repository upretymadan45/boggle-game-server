class Request
    class << self

        def where(resource_path, query={},options={})
            response = get_json(resource_path,query)
        end

        def get_json(root_path,query={})
            query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
            path = query.empty?? root_path : "#{root_path}?#{query_string}"
            response = api.get(path)
        end

        def api
            Connection.api
        end
    end
end
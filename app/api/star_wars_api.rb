module StarWarsApi
  include HTTParty
  base_uri 'https://swapi.dev/api/'

  def self.fetch_data(str_param)
    all_results = []
    page = 1
    loop do
      response = get(str_param, query: { page: page })
      if response.success?
        results = response["results"]
        all_results += results
        page += 1
        break if response["next"].nil?
      else
        puts "Error: #{response.code} - #{response.message}"
        break
      end
    end

    all_results
  end
end

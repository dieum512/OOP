require_relative 'app'

class Main
    attr_reader: app

    def initialize(app)
        @app = app
    end
end
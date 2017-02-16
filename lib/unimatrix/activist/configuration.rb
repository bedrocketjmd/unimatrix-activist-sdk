require 'singleton'

module Unimatrix::Activist

  def self.configuration( &block )
    Configuration.instance().instance_eval( &block ) unless block.nil?
    Configuration.instance()
  end

  class Configuration
    include Singleton

    def self.field( field_name, options={} )
      class_eval(
        "def #{ field_name }( *arguments ); " +
           "@#{ field_name } = arguments.first unless arguments.empty?; " +
           "@#{ field_name } || " +
             ( options[ :default ].nil? ?
                "nil" :
                ( options[ :default ].is_a?( String ) ?
                    "'#{ options[ :default ] }'" :
                      "#{ options[ :default ] }" ) ) + ";" +
        "end",
        __FILE__,
        __LINE__
      )
    end

    field :url,              default: ENV[ 'ACTIVIST_URL' ]
  end

end

module UAParser
  class Result
    def initialize(user_agent_results)
      @user_agent_results ||= user_agent_results
    end

    def browser
      OpenStruct.new @user_agent_results["browser"]
    end

    def engine
      OpenStruct.new @user_agent_results["engine"]
    end

    def os
      OpenStruct.new @user_agent_results["os"]
    end

    def device
      OpenStruct.new @user_agent_results["device"]
    end

    def cpu
      OpenStruct.new @user_agent_results["cpu"]
    end
  end
end

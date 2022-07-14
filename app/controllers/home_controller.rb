class HomeController < ApplicationController







    def Time.validate(year, month=1, day=1,hour=0, min=0, sec=0, usec=0)
        require "date"
        begin
            d = Date.new(year,month,day)
        rescue
            return nil
        end
            Time.local(year,month,day,hour,min,sec,usec)
    end

    def Time.aweek(name, day)
        if ("Monday" == name and day == 1) 
            return true
        end

        if ("Tuesday" == name and day == 2) 
            return true
        end

        if ("Wednesday" == name and day == 3) 
            return true
        end

        if ("Thursday" == name and day == 4) 
            return true
        end

        if ("Friday" == name and day == 5) 
            return true
        end

        if ("Saturday" == name and day == 6) 
            return true
        end

        if ("Sunday" == name and day == 7) 
            return true
        end
    end


end

class Timer
  #write your code here
  def initialize()
  	@seconds = 0;
    @minutes = 0;
    @hours = 0;
  end

  def seconds()
  	return @seconds;
  end

  def seconds=(seconds)
    parseTime(seconds);
  end

  def time_string()
    time = "";
    time << "%02d" % @hours << ":" << "%02d" % @minutes << ":" << "%02d" % @seconds;
    return time;
  end

  def parseTime(seconds)
    secondsLeft = secondsToHours(seconds);
    @seconds = secondsToMinutes(secondsLeft);

  end

  def secondsToHours(seconds)
    @hours = (seconds / 3600.0).floor;
    secondsLeft = seconds - (@hours * 3600);
    return secondsLeft;
  end

  def secondsToMinutes(seconds)
    @minutes = (seconds / 60.0).floor;
    secondsLeft = seconds - (@minutes * 60);
    return secondsLeft;
  end

end

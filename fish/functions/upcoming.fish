function upcoming
	/usr/local/bin/icalBuddy -f -sd -ic Calendar -iep title,datetime -ec WeekNumbers eventsToday+4 2>/dev/null $argv;
end

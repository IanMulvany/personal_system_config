function upcoming_longterm
	/usr/local/bin/icalBuddy -f -sd -ic Calendar -iep title,datetime -ec WeekNumbers eventsToday+40 2>/dev/null $argv;
end

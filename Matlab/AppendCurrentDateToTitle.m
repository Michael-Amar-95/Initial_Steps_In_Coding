function [FixedTitle] = AppendCurrentDateToTitle(Title)
% This function save the current date and take any dash in the date
% and replace it with white space

% save the date
currentDate = date;
% save the indexs where dash is appeares
dash = (currentDate == '-');
% replace dash with white space
currentDate(dash) = ' ';
FixedTitle = [Title ' : ' currentDate];
end


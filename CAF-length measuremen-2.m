%% Final Project KINE 6803
%Code written by: Clara Amat Fernandez
%Due date: 12/1/2016

%RUN THIS SCRIPT AFTER MEASUREMENTS ARE TAKEN 

%Converts the measurements taken in pixels into cm
conversionFactor=(conversion1+conversion2)/4
%Create a vector with all the measurement names
resultInpix=[measurement1 measurement2 measurement3 measurement4 measurement5 measurement6 measurement7]

%Vector with all measurements in cm
resultIncm=resultInpix/conversionFactor

%Import function for Osirix data
osirixData = osirixdataImportfunction( 'Osirix_data.xlsx' )

%Transpose the vector so it matches the vector for the measurements taken
%with Matlab
osirixData=osirixData'

%Substraction of one vector for the other to see the differences between
%both methods
matlabVsosirix=osirixData-resultIncm
matlabVsosirix=abs(matlabVsosirix)
%Bar graph with the comparision of both mehotds. If the numbers are close
%to 0 it means that the Matlab code works and it is validated. If the
%difference is high it means that the code cannot take this type of
%measurements correctly of the user didn't take the appropiate measurement.
comparisongraph=bar(matlabVsosirix)
title('Difference in length measurements between Matlab and Osirix') 
xlabel('Image number')
ylabel('Difference')
%Export the data obtained from the code to a csv file. It only exports the
%measurements taken with this code, not the differences between methods.
csvwrite('matlabProject.csv',resultIncm, 2, 2)
 

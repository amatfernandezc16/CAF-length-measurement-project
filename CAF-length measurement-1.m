%% Final Project KINE 6803
%Code written by: Clara Amat Fernandez
%Due date: 12/1/2016

%RUN THIS SCRIPT FIRST
%This is a two script code. Project1.m imports the images and allows
%the user to take measurements and Project2.m takes the variables created, 
%converts the length measurements from pixels to cm, stores the data into 
%variables and exports it into an Excel sheet.

%This code imports image data, takes tendon length measurements, and
%exports those measurements into a spreadsheet.

%Image import and visualization script. The user will be able to see the US image
%and using imtool will be able to take measurements.

instructions=sprintf('1. Run this code first.\n2. Take the desired measurements using the Measure Distance tool situated on the top of the screen.\n3. Once the measurements is done, right-click on top of the distance andchoose Export to Workspace.\n4. Store the measurements as measurement(#of image) Ex: measurement1.\n5. On image 1 (I0000001) use the side bar on the image to take the conversion measurements. This are known lengths that we can use to create a conversion factor. Take two conversion measurementsand save them the same way as all the other measurements. Name them conversion1 and conversion2.\n6. Proceed to the next script.');


%%
%Question dialog to ask the user if he/she wants to take some measurements.
getstarted=questdlg('Are you ready to take some measurements?', 'Initial question', 'Yes', 'No', 'No') 

%Switch statement to start the program
switch getstarted
    case 'Yes'
        msgbox(instructions,'Instructions')
       
    case 'No'
        %Goodbye message
        byebye = msgbox('Thank you for stopping by. Come back when you are ready', 'Exit Message')
end
  %For loop that brings the DICOM images and opens imtool. Beware that the folder with
        %the images has to be in the path when opening them. 
     for i = 1:7
        dicomFilenum = num2str(num2str(i));
        dicomFilename=strcat('I000000',dicomFilenum);
        image=dicomread(dicomFilename);
        imtool(image);
     end


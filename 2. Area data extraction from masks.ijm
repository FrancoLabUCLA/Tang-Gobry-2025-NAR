
// Specify input and output folder
input = getDirectory("Masks folder directory ");
output = getDirectory("Area results destination directory ");
list = getFileList(input);


setBatchMode(true);

// Loop start
for (i=0; i<list.length; i++) {
showProgress(i+1, list.length);
open(input+list[i], "virtual");

// Get the filename without extension
//open(input);
filename = getTitle();

//run("Images to Stack", "use");
run("Analyze Particles...", "size=0.03-Infinity show=[Overlay Masks] display clear stack");

// Save results file in directory 2 as "name of the folder.csv"
saveAs("Results", output + filename + ".csv");
close(filename);
close("Results");

}

waitForUser("Area extraction done");

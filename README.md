Namakuto  
July 18, 2017  

## README: Server.R and Ui.R Instructions for the "mtcars" Parameter Calculator App

---

### Basic Instructions
"Mtcars" is dataset available in Rstudio. 
To begin using the Shiny app in this folder, you will first need to download Rstudio^[1]^, then use `install.packages` for both `"shiny"` and `"ggplot2"`.  

This simply Shiny app consists of **2 files** that will be run together: a **ui.R** code file and a **server.R** code file. 

**You will need to download both, into one directory.**

---

Once the **ui.R** and **server.R** files are downloaded, open both files in Rstudio. **"Run"** the app to launch the calculator.

---

### Overview of the App
This Shiny calcutor app will plot the means of various mtcar parameters versus the number of cylinders in the car (4, 6 or 8). You will also be able to customize the colour theme of the plot within the `Fill colour of choice: ` prompt.

The `Y variable of choice: ` prompt will allow you to change the response variable that is plotted.

[^1^]: Any R-language program should run the app files fine, but these instructions are specific to Rstudio.

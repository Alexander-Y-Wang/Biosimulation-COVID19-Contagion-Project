# COVID-19 SEIR and Contact Network Models
- --
## __Authors__: 
### Alexander Wang & Nicholas Fioravanti
- --
##### __Summary__
Understanding the dynamics of epidemic spread is crucial for the implementation of effective public health measures. Particularly, quantifying the impact of quarantine - a common countermeasure - on disease progression can provide valuable insights to guide public health policies. Through the implementation of a network model, we demonstrate that institutions of varying degrees of quarantining can not only decrease the proportions of exposure and susceptibility to the pathogen COVID-19, but extinguish infection faster. 
##### __Files__
- File 1: project.mlx
    - This is a matlab live script file that houses the main code for our project. It will run through both replicated results from Hou et al. as well as our own created contact network for COVID-19 transmission. It utilizes another file called basic_model.m that is referenced later. 
- File 2: project.pdf
    - Exported pdf version of our live script project.mlx file. 
- File 3: index.yml
    - Summary information about the project including title, authors, and abstract. 
- File 4: thumb.png
    - Thumbnail
- File 5: basic_model.m 
    - This matlab .m function contains the differential equations used in Hou et al. to simulate COVID-19 transmission in their SEIR model. It is used within project.mlx to properly simulate the transmission of COVID over a course of time.
- File 6: report.docx 
    - Report written for the project, titled: Modeling COVID-19 Spread and Management: Incorporating Age, Social Distancing, Mortality, and Hospitalization in a Network-Based Simulation Approach

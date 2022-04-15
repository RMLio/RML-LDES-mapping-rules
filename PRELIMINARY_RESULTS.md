# Preliminary results

## Setup

This setup is *not* an in-depth performance evaluation,
but rather a validation setup to verify if our approach
actually reduces the number of triples and execution time
when only regenerating RDF for original data that is updated.

1. Execute RML mappings on each dump in the chronological order.
The initial dumps take the most time because they generate all RDF triples.
2. Measure the execution time of the RMLMapper for each dump
and the number of generated triples.
3. Write down the results and repeat for each use case.

## Reproduce

### BlueBike use case
1. Enter the `mappings/BlueBike` directory.
2. Execute `run.sh` in the directory.

### NMBS/SNCB and KMI use cases

1. Enter the `mappings/$USE_CASE` directory.
`$USE_CASE` is either `SNCB`, or `KMI`.
2. Enter the directory marked with `YYYYMMDD` timestamp,
the first one chronological. Example: `20220221` for SNCB.
3. Execute `run.sh` in the directory.
4. Go up and enter the next directory in chronological order
with the `YYYYMMDD` timestamp.
Repeat the steps until you executed them all.

Note: To workaround GitHub's file limits, we had to compress the output of
the resulted triples in the SNCB use case and the RMLMapper jar.
You can undo this operation by running in each directory
with `YYYYMMDD` timestamp:

```
tar -xzvf output.tar.gz
```

And the following in this directory to get the RMLMapper jar:

```
tar -xzvf rmlmapper-5.0.0-r364-all.jar.tar.gz
```

## Preliminary results

- More updates in the original dataset,
results in more triples to be generated and a longer execution time.
- We profit more from larger datasets than smaller ones.
Updates for smaller datasets affect these datasets more than large datasets,
thus more triples to be generated and a longer execution time.

### BlueBike bike-sharing data

| Dump timestamp    | Dump size | Number of Triples       | Generation time      | Type                   |
| ----------------- | --------- | ----------------------- | -------------------- | ---------------------- |
| 24/02/2022 13h19m | 29Kb      | 674 (baseline)          | 0.836s               | Initial dump           |
| 24/02/2022 13h20m | 29Kb      | 179 (3.7x less triples) | 0.653s (1.3x faster) | Update 1, delta 1m     |
| 24/02/2022 13h21m | 29Kb      | 152 (4.4x less triples) | 0.704s (1.2x faster) | Update 2, delta 1m     |
| 24/02/2022 13h22m | 29Kb      | 116 (5.8x less triples) | 0.695s (1.2x faster) | Update 3, delta 1m     |
| 24/02/2022 13h23m | 29Kb      | 134 (5.0x less triples) | 0.698s (1.2x faster) | Update 4, delta 1m     |
| 24/02/2022 13h24m | 29Kb      | 134 (5.0x less triples) | 0.659s (1.3x faster) | Update 5, delta 1m     |
| 24/02/2022 13h25m | 29Kb      | 161 (3.7x less triples) | 0.665s (1.3x faster) | Update 6, delta 1m     |
| 24/02/2022 13h26m | 29Kb      | 161 (3.7x less triples) | 0.707s (1.2x faster) | Update 7, delta 1m     |
| 24/02/2022 13h27m | 29Kb      | 125 (5.4x less triples) | 0.794s (1.0x faster) | Update 8, delta 1m     |
| 24/02/2022 13h28m | 29Kb      | 116 (5.8x less triples) | 0.672s (1.2x faster) | Update 9, delta 1m     |
| 24/02/2022 13h29m | 29Kb      | 116 (5.8x less triples) | 0.730s (1.1x faster) | Update 10, delta 1m    |
| 24/02/2022 13h30m | 29Kb      | 188 (3.6x less triples) | 0.714s (1.2x faster) | Update 11, delta 1m    |
| 24/02/2022 13h31m | 29Kb      | 152 (4.4x less triples) | 0.760s (1.1x faster) | Update 12, delta 1m    |
| 24/02/2022 13h32m | 29Kb      | 116 (5.8x less triples) | 0.694s (1.2x faster) | Update 13, delta 1m    |
| 24/02/2022 13h33m | 29Kb      | 125 (5.4x less triples) | 0.743s (1.1x faster) | Update 14, delta 1m    |
| 24/02/2022 13h34m | 29Kb      | 134 (5.0x less triples) | 0.715s (1.2x faster) | Update 15, delta 1m    |
| 24/02/2022 13h35m | 29Kb      | 179 (3.7x less triples) | 0.793s (1.1x faster) | Update 16, delta 1m    |
| 24/02/2022 13h36m | 29Kb      | 170 (4.0x less triples) | 0.890s (0.9x slower) | Update 17, delta 1m    |
| 24/02/2022 13h37m | 29Kb      | 125 (5.4x less triples) | 1.024s (0.8x slower) | Update 18, delta 1m    |
| 24/02/2022 13h38m | 29Kb      | 134 (5.0x less triples) | 0.996s (0.8x slower) | Update 19, delta 1m    |
| 24/02/2022 13h39m | 29Kb      | 152 (4.4x less triples) | 0.727s (1.1x faster) | Update 20, delta 1m    |
    
- Number of triples reduced by 4.6x (average)
- Generation time reduced by 1.1x (average)

The generation time reduction is negligible because the dataset is small,
a single update changes a large portion of the data.

### NMBS/SNCB public transport timetables

| Dump timestamp | Dump size | Number of Triples           | Generation time     | Type                   |
| -------------- | --------- | --------------------------- | ------------------- | ---------------------- |
| 21/02/2022     | 54Mb      | 3657795 (baseline)          | 14052s (baseline)   | Initial dump           |
| 23/02/2022     | 56Mb      | 87645 (41.7x less triples)  | 489s (28.7x faster) | Update 1, delta 2 days |
| 24/02/2022     | 56Mb      | 108836 (33.6x less triples) | 536s (26.2x faster) | Update 2, delta 1 day  |
| 01/03/2022     | 55Mb      | 140994 (25.9x less triples) | 727s (19.3x faster) | Update 3, delta 5 days |

- Number of triples reduced by 33.7x (average)
- Generation time reduced by 24.7x (average)

This dataset is a lot bigger than the BlueBike bike-sharing dataset,
the difference in generation time and number of triples is more present here.
A single update in the original data only changes a small portion of the data.

### KMI weather data

All dumps contain history from 01/02/2022 until the dump timestamp in the table.
This means that in dump 18/02/2022 all previous measurements are provided
as well from 01/02/2022.
The next dump 19/02/2022 contains the measurements of 19/02/2022,
18/02/2022, ... until 01/02/2022.

| Dump timestamp | Dump size | Number of Triples          | Generation time  | Type                   |
| -------------- | --------- | -------------------------- | ---------------  | ---------------------- |
| 18/02/2022     | 1.7Mb     | 235164 (baseline)          | 7s (baseline)    | Initial dump           |
| 19/02/2022     | 1.7Mb     | 13832 (17.0x less triples) | 5s (1.4x faster) | Update 1, delta 1 day  |
| 20/02/2022     | 1.8Mb     | 13832 (17.0x less triples) | 6s (1.2x faster) | Update 2, delta 1 day  |
| 21/02/2022     | 1.9Mb     | 13832 (17.0x less triples) | 7s (1.0x faster) | Update 3, delta 1 day  |
| 22/02/2022     | 2.0Mb     | 13832 (17.0x less triples) | 6s (1.2x faster) | Update 4, delta 1 day  |
| 23/02/2022     | 2.1Mb     | 13832 (17.0x less triples) | 6s (1.2x faster) | Update 5, delta 1 day  |
| 24/02/2022     | 2.2Mb     | 13832 (17.0x less triples) | 6s (1.2x faster) | Update 6, delta 1 day  |
    
- Number of triples reduced by 17.0x (average)
- Generation time reduced by 1.2x (average) 

Each update generates the same amount of triples because 
the KMI's Automatic Weather Sensors measurements are performed
every 10 mins of a day.
This results in the same amount of measurements for each day.

Since the dataset is rather small here, the generation time improvements are
less than in the NMBS/SNCB public transport timetables use case. 
However, the generation time improvements are slightly bigger
than the BlueBike bike-sharing use case because the dataset size
is also bigger compare to BlueBike.
Because the dataset size is bigger compare to BlueBike,
the improvement for the number of generated triples
is a higher than with BlueBike,
but smaller compared to the NMBS/SNCB public transport timetables use case.

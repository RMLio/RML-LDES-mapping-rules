# RML+LDES mappings rules

Mapping rules for the RML+LDES paper at the Knowledge Graph Construction Workshop (ESWC 2022).

## Structure

- [data](./data) contains the raw wdata for the use cases.
- [mappings](./mappings) contains the mappings and their execution logs.
- [PRELIMINARY_RESULTS.md](./PRELIMINARY_RESULTS.md)
lists our preliminary results and how to reproduce them.
- [README.md](./README.md) this README file.
- [rmlmapper-5.0.0-r364-all.jar](./rmlmapper-5.0.0-r364-all.jar)
the Java jar of the RMLMapper used in this setup.

```
.
├── data
│   ├── BlueBike
│   │   ├── 2022-02-24T13:19:52Z.json
│   │   ├── 2022-02-24T13:20:52Z.json
│   │   ├── 2022-02-24T13:21:52Z.json
│   │   ├── 2022-02-24T13:22:53Z.json
│   │   ├── 2022-02-24T13:23:53Z.json
│   │   ├── 2022-02-24T13:24:54Z.json
│   │   ├── 2022-02-24T13:25:54Z.json
│   │   ├── 2022-02-24T13:26:55Z.json
│   │   ├── 2022-02-24T13:27:55Z.json
│   │   ├── 2022-02-24T13:28:55Z.json
│   │   ├── 2022-02-24T13:29:56Z.json
│   │   ├── 2022-02-24T13:30:56Z.json
│   │   ├── 2022-02-24T13:31:57Z.json
│   │   ├── 2022-02-24T13:32:57Z.json
│   │   ├── 2022-02-24T13:33:57Z.json
│   │   ├── 2022-02-24T13:34:58Z.json
│   │   ├── 2022-02-24T13:35:58Z.json
│   │   ├── 2022-02-24T13:36:58Z.json
│   │   ├── 2022-02-24T13:37:59Z.json
│   │   ├── 2022-02-24T13:38:59Z.json
│   │   └── 2022-02-24T13:39:59Z.json
│   ├── KMI
│   │   ├── AWS_10min_20220201_11:00:00_20220218_11:00:00.csv
│   │   ├── AWS_10min_20220201_11:00:00_20220219_11:00:00.csv
│   │   ├── AWS_10min_20220201_11:00:00_20220220_11:00:00.csv
│   │   ├── AWS_10min_20220201_11:00:00_20220221_11:00:00.csv
│   │   ├── AWS_10min_20220201_11:00:00_20220222_11:00:00.csv
│   │   ├── AWS_10min_20220201_11:00:00_20220223_11:00:00.csv
│   │   └── AWS_10min_20220201_11:00:00_20220224_11:00:00.csv
│   └── SNCB
│       ├── 20220221
│       │   ├── agency.txt
│       │   ├── calendar_dates.txt
│       │   ├── calendar.txt
│       │   ├── routes.txt
│       │   ├── stops.txt
│       │   ├── stop_time_overrides.txt
│       │   ├── stop_times.txt
│       │   ├── transfers.txt
│       │   ├── translations.txt
│       │   └── trips.txt
│       ├── 20220223
│       │   ├── agency.txt
│       │   ├── calendar_dates.txt
│       │   ├── calendar.txt
│       │   ├── routes.txt
│       │   ├── stops.txt
│       │   ├── stop_time_overrides.txt
│       │   ├── stop_times.txt
│       │   ├── transfers.txt
│       │   ├── translations.txt
│       │   └── trips.txt
│       ├── 20220224
│       │   ├── agency.txt
│       │   ├── calendar_dates.txt
│       │   ├── calendar.txt
│       │   ├── routes.txt
│       │   ├── stops.txt
│       │   ├── stop_time_overrides.txt
│       │   ├── stop_times.txt
│       │   ├── transfers.txt
│       │   ├── translations.txt
│       │   └── trips.txt
│       └── 20220301
│           ├── agency.txt
│           ├── calendar_dates.txt
│           ├── calendar.txt
│           ├── routes.txt
│           ├── stops.txt
│           ├── stop_time_overrides.txt
│           ├── stop_times.txt
│           ├── transfers.txt
│           ├── translations.txt
│           └── trips.txt
├── LICENSE
├── mappings
│   ├── BlueBike
│   │   ├── 2022-02-24T13:19:52Z.nt
│   │   ├── 2022-02-24T13:19:52Z.rml.ttl
│   │   ├── 2022-02-24T13:20:52Z.nt
│   │   ├── 2022-02-24T13:20:52Z.rml.ttl
│   │   ├── 2022-02-24T13:21:52Z.nt
│   │   ├── 2022-02-24T13:21:52Z.rml.ttl
│   │   ├── 2022-02-24T13:22:53Z.nt
│   │   ├── 2022-02-24T13:22:53Z.rml.ttl
│   │   ├── 2022-02-24T13:23:53Z.nt
│   │   ├── 2022-02-24T13:23:53Z.rml.ttl
│   │   ├── 2022-02-24T13:24:54Z.nt
│   │   ├── 2022-02-24T13:24:54Z.rml.ttl
│   │   ├── 2022-02-24T13:25:54Z.nt
│   │   ├── 2022-02-24T13:25:54Z.rml.ttl
│   │   ├── 2022-02-24T13:26:55Z.nt
│   │   ├── 2022-02-24T13:26:55Z.rml.ttl
│   │   ├── 2022-02-24T13:27:55Z.nt
│   │   ├── 2022-02-24T13:27:55Z.rml.ttl
│   │   ├── 2022-02-24T13:28:55Z.nt
│   │   ├── 2022-02-24T13:28:55Z.rml.ttl
│   │   ├── 2022-02-24T13:29:56Z.nt
│   │   ├── 2022-02-24T13:29:56Z.rml.ttl
│   │   ├── 2022-02-24T13:30:56Z.nt
│   │   ├── 2022-02-24T13:30:56Z.rml.ttl
│   │   ├── 2022-02-24T13:31:57Z.nt
│   │   ├── 2022-02-24T13:31:57Z.rml.ttl
│   │   ├── 2022-02-24T13:32:57Z.nt
│   │   ├── 2022-02-24T13:32:57Z.rml.ttl
│   │   ├── 2022-02-24T13:33:57Z.nt
│   │   ├── 2022-02-24T13:33:57Z.rml.ttl
│   │   ├── 2022-02-24T13:34:58Z.nt
│   │   ├── 2022-02-24T13:34:58Z.rml.ttl
│   │   ├── 2022-02-24T13:35:58Z.nt
│   │   ├── 2022-02-24T13:35:58Z.rml.ttl
│   │   ├── 2022-02-24T13:36:58Z.nt
│   │   ├── 2022-02-24T13:36:58Z.rml.ttl
│   │   ├── 2022-02-24T13:37:59Z.nt
│   │   ├── 2022-02-24T13:37:59Z.rml.ttl
│   │   ├── 2022-02-24T13:38:59Z.nt
│   │   ├── 2022-02-24T13:38:59Z.rml.ttl
│   │   ├── 2022-02-24T13:39:59Z.nt
│   │   ├── 2022-02-24T13:39:59Z.rml.ttl
│   │   ├── log-2022-02-24T13:19:52Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:20:52Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:21:52Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:22:53Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:23:53Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:24:54Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:25:54Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:26:55Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:27:55Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:28:55Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:29:56Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:30:56Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:31:57Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:32:57Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:33:57Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:34:58Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:35:58Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:36:58Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:37:59Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:38:59Z.rml.ttl.txt
│   │   ├── log-2022-02-24T13:39:59Z.rml.ttl.txt
│   │   └── run.sh
│   ├── KMI
│   │   ├── 20220218
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   ├── 20220219
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   ├── 20220220
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   ├── 20220221
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   ├── 20220222
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   ├── 20220223
│   │   │   ├── logs.txt
│   │   │   ├── mapping.rml.ttl
│   │   │   ├── run.sh
│   │   │   └── weather-ldes.nt
│   │   └── 20220224
│   │       ├── logs.txt
│   │       ├── mapping.rml.ttl
│   │       ├── run.sh
│   │       └── weather-ldes.nt
│   └── SNCB
│       ├── 20220221
│       │   ├── agency.nt
│       │   ├── logs.txt
│       │   ├── mapping.rml.ttl
│       │   ├── routes.nt
│       │   ├── run.sh
│       │   ├── stops.nt
│       │   ├── stoptimes.nt
│       │   └── trips.nt
│       ├── 20220223
│       │   ├── agency.nt
│       │   ├── logs.txt
│       │   ├── mapping.rml.ttl
│       │   ├── routes.nt
│       │   ├── run.sh
│       │   ├── stops.nt
│       │   ├── stoptimes.nt
│       │   └── trips.nt
│       ├── 20220224
│       │   ├── agency.nt
│       │   ├── logs.txt
│       │   ├── mapping.rml.ttl
│       │   ├── routes.nt
│       │   ├── run.sh
│       │   ├── stops.nt
│       │   ├── stoptimes.nt
│       │   └── trips.nt
│       └── 20220230
│           ├── agency.nt
│           ├── logs.txt
│           ├── mapping.rml.ttl
│           ├── routes.nt
│           ├── run.sh
│           ├── stops.nt
│           ├── stoptimes.nt
│           └── trips.nt
├── PRELIMINARY_RESULTS.md
├── README.md
└── rmlmapper-5.0.0-r364-all.jar
```

## License

MIT

Copyright (c) Dylan Van Assche (2022)

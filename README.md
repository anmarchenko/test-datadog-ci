# README

# Run tests

```bash
DD_GIT_REPOSITORY_URL="https://github.com/doctolib/test-datadog-ci" DD_CIVISIBILITY_ENABLED=true DD_SERVICE=test-datadog-ci bundle exec ddcirb exec bundle exec rails t
```

Test runs are available at https://app.datadoghq.com/ci/test/repositories/github.com%2Fdoctolib%2Ftest-datadog-ci/all-services/main?query=test_level%3Atest%20env%3Atest%20%40git.repository.id%3Agithub.com%2Fdoctolib%2Ftest-datadog-ci%20%40git.branch%3Amain&currentTab=trace&env=test&eventStack=&fromUser=true&graphType=flamegraph&index=citest&start=1739799391041&end=1739801191041&paused=false

The traces for those test runs only include the spans for the test itself, not the spans for the controller that is called.

# Exercise controller

```bash
bundle exec rails server
```

Then go to http://localhost:3000

Traces are available at https://app.datadoghq.com/apm/traces?query=service%3Atest-datadog-ci&agg_m=count&agg_m_source=base&agg_t=count&cols=core_service%2Ccore_resource_name%2Clog_duration%2Clog_http.method%2Clog_http.status_code&fromUser=false&graphType=flamegraph&historicalData=false&messageDisplay=inline&query_translation_version=v0&shouldShowLegend=true&sort=time&spanType=all&storage=hot&view=spans&start=1739800571551&end=1739801471551&paused=false

They include all the spans we're expecting.

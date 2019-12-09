#!/bin/bash
fly -t main set-pipeline --pipeline sbm -l credentials.yml --config <(cat ci/resources.yml ci/jobs.yml)
fly -t main unpause-pipeline --pipeline sbm

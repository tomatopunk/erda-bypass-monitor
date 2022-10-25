FROM grafana/grafana:latest

ENV GRAFANA_WORK_DIR=/grafana-dashboard-definitions
ENV GRAFANA_DASHBOARDS_DIR $GRAFANA_WORK_DIR/erda-bypass/

COPY dashboards $GRAFANA_DASHBOARDS_DIR/dashboards/
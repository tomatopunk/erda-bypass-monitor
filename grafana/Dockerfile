FROM grafana/grafana:latest

ENV GRAFANA_WORK_DIR=/opt/
ENV GRAFANA_DASHBOARDS_DIR=$GRAFANA_WORK_DIR/erda-bypass/

RUN mkdir -pv $GRAFANA_WORK_DIR

COPY grafana/dashboards $GRAFANA_DASHBOARDS_DIR/dashboards/
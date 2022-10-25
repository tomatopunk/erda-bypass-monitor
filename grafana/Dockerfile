FROM grafana/grafana:latest

ENV GRAFANA_WORK_DIR=/grafana-dashboard-definitions
ENV GRAFANA_DASHBOARDS_DIR $GRAFANA_WORK_DIR/erda-bypass/

# RUN mkdir -p $GRAFANA_DASHBOARDS_DIR

COPY dashboards $GRAFANA_DASHBOARDS_DIR/dashboards/

CMD ["bin/bash"]
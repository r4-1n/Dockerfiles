FROM python:3.6
# RUN
RUN pip3 install \
  ipython \
  nornir \
  pipenv \
# Create nornir3 standard files
&& touch \
  configs.yml \
  defaults.yml \
  groups.yml \
  hosts.yml \
# Create nornir3 inventory folder
&& mkdir \
  ./inventory \
# Move nornir3 files to /inventory/
&& mv \
  defaults.yml \
  groups.yml \
  hosts.yml \
  ./inventory
CMD [ "ipython" ]

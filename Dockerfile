# FROM python:3.9-slim
FROM python:3.9
RUN mkdir -p /ssr_command_client

COPY . /ssr_command_client
WORKDIR /ssr_command_client
RUN pip3 install -i https://pypi.doubanio.com/simple  -r  requirement.txt
CMD ["./start.sh"]

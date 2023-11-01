FROM python

WORKDIR /app
COPY . .

# ENV MYSQL_HOST=dbcontainer
# ENV MYSQL_PORT=3306
# ENV MYSQL_ROOT_PASSWORD=1234
# ENV MYSQL_DATABASE=test3

RUN pip install flask
RUN pip install pymysql
RUN pip install passlib
RUN pip install flask_cors
RUN pip install cryptography

CMD [ "python","-m", "flask", "run", "--host=0.0.0.0" ]
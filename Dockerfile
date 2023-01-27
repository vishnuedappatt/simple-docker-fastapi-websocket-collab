FROM  python

WORKDIR /app 
COPY ./requirement.txt .
RUN pip install -r ./requirement.txt
COPY . .
EXPOSE 8080

# ADD requirement.txt . 

# RUN pip install --trusted-host pypi.python.org -r requirement.txt

# CMD [ "uvicorn", "main:app", "--reload" ,"--host", "0.0.0.0", "--port", "8000" ]
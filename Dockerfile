FROM python:3

WORKDIR /usr/src/santabot

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "santabot.py" ]

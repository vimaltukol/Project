FROM python:3.13
WORKDIR /Project
COPY . .
RUN pip install --no-cache-dir pytest
# Run tests at build time (CI)
RUN pytest -v
# FIXED entrypoint (never replaced)
ENTRYPOINT ["python", "student.py"]

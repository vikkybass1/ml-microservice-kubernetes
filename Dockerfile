FROM python:3.7.10

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . .
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","app.py"] 

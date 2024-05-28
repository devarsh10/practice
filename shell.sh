#!/bin/bash

# Port forward for ocean-web-service
kubectl port-forward svc/ocean-web-service 3000:3000 &
echo "Port forwarding for svc/ocean-web-service on port 3000"

# Port forward for ocean-json-service on multiple ports
kubectl port-forward svc/ocean-json-service 8000:8000 8001:8001 8002:8002 &
echo "Port forwarding for svc/ocean-json-service on ports 8000, 8001, 8002"

# Port forward for ocean-nodemailer-svc
kubectl port-forward svc/ocean-nodemailer-svc 5000:5000 &
echo "Port forwarding for svc/ocean-nodemailer-svc on port 5000"

# Wait for all background processes to finish
wait


# Poppler Docker image

## Build and run your Docker image
```
docker build -t milanhlinak/poppler .
docker run --name poppler milanhlinak/poppler
```

## Verify Poppler version
```
docker exec -it poppler pdftotext -v
pdftotext version 20.10.0
Copyright 2005-2020 The Poppler Developers - http://poppler.freedesktop.org
Copyright 1996-2011 Glyph & Cog, LLC
```
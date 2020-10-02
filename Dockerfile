FROM python:3.8-slim-buster
RUN apt-get update && apt-get install wget build-essential cmake libfreetype6-dev pkg-config libfontconfig-dev libjpeg-dev libopenjp2-7-dev -y
RUN wget https://poppler.freedesktop.org/poppler-data-0.4.9.tar.gz \
	&& tar -xf poppler-data-0.4.9.tar.gz \
	&& cd poppler-data-0.4.9 \
	&& make install \
	&& cd .. \
	&& wget https://poppler.freedesktop.org/poppler-20.10.0.tar.xz \
	&& tar -xf poppler-20.10.0.tar.xz \
	&& cd poppler-20.10.0 \
	&& mkdir build \
	&& cd build \
	&& cmake .. \
	&& make \
	&& make install \
	&& ldconfig
CMD tail -f /dev/null
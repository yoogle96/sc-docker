FROM starcraft:bwapi

USER starcraft

WORKDIR $APP_DIR

COPY jre_8_32bit_noinstall.zip jre.zip
RUN set -x \
    && unzip jre.zip \
    && mv jre1.8.0_152/ java/ \
    && rm jre.zip

COPY scripts/win_java32 /usr/bin/win_java32
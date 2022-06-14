# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atrouill <atrouill@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/14 15:35:26 by atrouill          #+#    #+#              #
#    Updated: 2022/06/14 15:36:03 by atrouill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#
# Dev image
#
FROM	node:16.15-alpine3.15 as dev

WORKDIR	/api
COPY	package*.json ./
RUN		npm i --only=development
CMD		npm run start:dev

#
# Prod image
#
FROM	node:16.15-alpine3.15 as prod

WORKDIR	/api
COPY	package*.json ./
RUN		npm i --only=development
CMD		npm run start:dev

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atrouill <atrouill@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/14 15:35:26 by atrouill          #+#    #+#              #
#    Updated: 2022/06/15 14:43:43 by atrouill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#
# Dev image
#
FROM	node:16.15-alpine3.15

WORKDIR /api/
COPY	package.json .
COPY	package-lock.json .
RUN		npm install -g npm@8.5.1 && npm i

CMD		npm run start:dev

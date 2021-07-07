FROM node:16.3.0
LABEL maintainer="Simple User Manager Docker yaml/swarm"
#DESCRIPTION: This project is a simple user manager. There's a create user page, a user view page, and an edit user page.
#COHORT NUMBER: Cohort 12
#FAVORITE ANIMAL: Dog :)
WORKDIR /app
COPY . .
EXPOSE 4000
RUN npm install
CMD ["npm", "start"]
# Moviewatch 🎥

Moviewatch App typescript challenge, using React, Apollo and Typescript, You'll build an app to let you keep track of the movies you'd like to watch.

## Installation:

1. Bring up the API and Database:

```BASH
cd backend && npm install && docker-compose up
```

2. Bring up the Frontend development server:

```BASH
cd frontend && npm install && npm start
```

## Challenges:

1. Begin by using the `useQuery` Apollo hook to make a new GraphQL query to retrieve all the movies, display the movies within the `Movies` Screen component. You can place your query within `models/movies/queries.ts`

   **Tip:** Use the GraphQL Schema documentation at [localhost:5000](http://localhost:5000) to help construct your query

   **Tip:** [Writing a query](https://www.apollographql.com/docs/react/essentials/queries/#executing-a-query)

1. Now try converting the `Movies` component to Typescript!
   Head to `frontend/screens/Movies/index.js` and convert to a `.tsx` Typescript component.

   **Tip**: Use the GraphQL Schema documentation at [localhost:5000](http://localhost:5000) to help write the interface for a movie!

   **Tip**: [Using Apollo With Typescript](https://www.apollographql.com/docs/react/recipes/static-typing/)

1. Convert the `MovieCard` component to Typescript!
   Head to `frontend/screens/Movies/components/MovieCard.js` and convert to a `.tsx` Typescript component.

1. In the `Movies` component, create a mutation which adds a movie to your watch list when clicked. Don't forget to type your mutation!

   **Tip**: Use the [schema documentation](http://localhost:5000)

   **Tip**: [Apollo useMutation hook](https://www.apollographql.com/docs/react/essentials/mutations/#the-usemutation-hook)

1. Within the `WatchList` component write a query to retrieve all the movies in your watch list. You can use the `WatchListItem` component to render the movies you're watching!

1. Estimate your binge! Within the footer area of the WatchList component, create a new component that displays the total run time of all the films in your watch list.

1. You should now have a couple different queries/mutations in the `/models` directory, try running `cd frontend && npm run schema:update` to automatically generate Typescript interfaces for your queries and mutations.

1. Refactor your components to remove your handwritten types and use the auto generated Typescript types instead.

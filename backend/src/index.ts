import "reflect-metadata";
import dotenv from "dotenv";
import { ApolloServer, gql } from "apollo-server";
import { createConnection } from "typeorm";

import { Movie } from "./entity/movie";
import { WatchList } from "./entity/watchlist";

dotenv.config();

(async () => {
  const connection = await createConnection({
    type: "postgres",
    host: (process.env as any).POSTGRES_HOST,
    port: (process.env as any).POSTGRES_PORT,
    username: process.env.POSTGRES_USER,
    password: process.env.POSTGRES_PASSWORD,
    database: process.env.POSTGRES_DB,
    entities: [Movie, WatchList],
    synchronize: true,
    logging: false
  });

  const typeDefs = gql`
    type Movie {
      id: ID!
      title: String!
      year: Int!
      description: String!
      director: String!
      imdbRating: Float!
      runTime: Int!
      thumbnail: String!
    }

    type Query {
      movies: [Movie]
      watchlist: [Movie]
    }

    type Mutation {
      watchMovie(movieID: ID!): [Movie]!
    }
  `;

  const resolvers = {
    Query: {
      movies: async () => {
        const allMovies = await connection.getRepository(Movie).find();
        return allMovies.map(movie => ({
          id: movie.id,
          title: movie.title,
          year: movie.year,
          description: movie.description,
          director: movie.director,
          imdbRating: movie.imdb_rating,
          runTime: movie.run_time,
          thumbnail: movie.thumbnail
        }));
      },
      watchlist: async () => {
        const allWatchedMovies = await connection
          .getRepository(WatchList)
          .find({ relations: ["movie"] });

        return allWatchedMovies.map(watchedMovie => ({
          id: watchedMovie.movie.id,
          title: watchedMovie.movie.title,
          year: watchedMovie.movie.year,
          description: watchedMovie.movie.description,
          director: watchedMovie.movie.director,
          imdbRating: watchedMovie.movie.imdb_rating,
          runTime: watchedMovie.movie.run_time,
          thumbnail: watchedMovie.movie.thumbnail
        }));
      }
    },
    Mutation: {
      watchMovie: async (parent: any, args: any) => {
        const movie = await connection
          .getRepository(Movie)
          .findOne({ id: args.movieID });

        if (!movie) {
          throw "No movie with that ID found";
        }

        const movieInList = await connection
          .getRepository(WatchList)
          .findOne({ relations: ["movie"], where: { movie } });

        if (movieInList) throw "Movie already in your watchlist";

        const newWatchlistMovie = new WatchList();
        newWatchlistMovie.movie = movie;
        await connection.manager.save(newWatchlistMovie);

        const watchList = await connection
          .getRepository(WatchList)
          .find({ relations: ["movie"] });

        return watchList.map(watchedMovie => ({
          id: watchedMovie.movie.id,
          title: watchedMovie.movie.title,
          year: watchedMovie.movie.year,
          description: watchedMovie.movie.description,
          director: watchedMovie.movie.director,
          imdbRating: watchedMovie.movie.imdb_rating,
          runTime: watchedMovie.movie.run_time,
          thumbnail: watchedMovie.movie.thumbnail
        }));
      }
    }
  };

  new ApolloServer({
    typeDefs,
    resolvers
  })
    .listen({
      port: 5000
    })
    .then(({ url }: { url: string }) => {
      console.log(`Server ready at ${url}`);
    });
})();

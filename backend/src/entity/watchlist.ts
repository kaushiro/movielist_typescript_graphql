import { Entity, PrimaryGeneratedColumn, OneToOne, JoinColumn } from "typeorm";
import { Movie } from "./movie";

@Entity()
export class WatchList {
  @PrimaryGeneratedColumn()
  id: number;

  @OneToOne(type => Movie)
  @JoinColumn()
  movie: Movie;
}

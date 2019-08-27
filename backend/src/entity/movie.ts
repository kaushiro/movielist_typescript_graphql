import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Movie {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  title: string;

  @Column()
  year: number;

  @Column()
  description: string;

  @Column()
  director: string;

  @Column("float")
  imdb_rating: number;

  @Column()
  run_time: number;

  @Column()
  thumbnail: string;
}

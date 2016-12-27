(define (problem redflix_problem)
  (:domain redflix_domain)
  (:objects

   ;;Series
   serie1_1 serie1_2 serie1_3 serie1_4 serie1_5 serie1_6 - content
   paralel1_1-1 paralel1_1-2 paralel1_1-3 paralel1_1-4 paralel1_1-5 - content
   paralel1_2-1 paralel1_2-2 paralel1_2-3 paralel1_2-4 - content
   ;;Movies
   ;;paralel1_ and paralel2_ are parelel seire and movie.
   paralel2_1 paralel2_2 paralel2_3 paralel2_4 - content
   pelicula1 pelicula2 pelicula3 - content



  )
  (:init
    (watched paralel1_1-1 somewhen) (watched paralel1_1-2 somewhen)
    (watched paralel1_1-3 somewhen) (watched paralel1_1-4 somewhen)
    (watched paralel1_1-5 never) (watched paralel1_2-1 never)
    (watched paralel1_2-2 never) (watched paralel1_2-3 never)
    (watched paralel1_2-4 never)
    (watched serie1_1 somewhen) (watched serie1_2 never)
    (watched serie1_3 never) (watched serie1_4 never)
    (watched serie1_5 never) (watched serie1_6 never)
    (watched paralel2_1 somewhen) (watched paralel2_2 somewhen)
    (watched paralel2_3 never) (watched paralel2_4 never)
    (watched pelicula1 never) (watched pelicula2 never)
    (watched pelicula3 never)

    (to_watch serie1_5) (to_watch paralel2_4) (to_watch pelicula3)

    (precedes serie1_6 pelicula3) (precedes pelicula1 pelicula3)
    (precedes pelicula2 pelicula3)
    (precedes paralel1_1-1 paralel1_1-2) (precedes paralel1_1-2 paralel1_1-3)
    (precedes paralel1_1-3 paralel1_1-4) (precedes paralel1_1-4 paralel1_1-5)
    (precedes paralel1_1-5 paralel1_2-1) (precedes paralel1_2-1 paralel1_2-2)
    (precedes paralel1_2-2 paralel1_2-3) (precedes paralel1_2-3 paralel1_2-4)
    (precedes paralel2_1 paralel2_2) (precedes paralel2_2 paralel2_3)
    (precedes paralel2_3 paralel2_4)
    (precedes serie1_1 serie1_2) (precedes serie1_2 serie1_3)
    (precedes serie1_3 serie1_4) (precedes serie1_4 serie1_5)
    (precedes serie1_5 serie1_6)

    (parallel paralel1_1-1 paralel2_1) (parallel paralel1_1-2 paralel2_1)
    (parallel paralel2_1 paralel1_1-1) (parallel paralel2_1 paralel1_1-2)
    (parallel paralel1_1-3 paralel2_2) (parallel paralel1_1-4 paralel2_2)
    (parallel paralel1_1-5 paralel2_2) (parallel paralel2_2 paralel1_1-5)
    (parallel paralel2_2 paralel1_1-3) (parallel paralel2_2 paralel1_1-4)
    (parallel paralel1_2-1 paralel2_3) (parallel paralel1_2-2 paralel2_3)
    (parallel paralel2_3 paralel1_2-1) (parallel paralel2_3 paralel1_2-2)
    (parallel paralel1_2-3 paralel2_4) (parallel paralel1_2-4 paralel2_4)
    (parallel paralel2_4 paralel1_2-3) (parallel paralel2_4 paralel1_2-4)

    (= (contents_today) 0)
    (= (minutes_today) 0)
    (= (totals_watched) 0)
    (= (duration paralel1_1-1) 45) (= (duration paralel1_1-2) 45) (= (duration paralel1_1-3) 45)
    (= (duration paralel1_1-4) 45) (= (duration paralel1_1-5) 45) (= (duration paralel1_2-1) 45)
    (= (duration paralel1_2-2) 45) (= (duration paralel1_2-3) 45) (= (duration paralel1_2-4) 45)
    (= (duration paralel2_1) 100) (= (duration paralel2_2) 110)
    (= (duration paralel2_3) 95) (= (duration paralel2_4) 120)
    (= (duration serie1_1) 40) (= (duration serie1_2) 40) (= (duration serie1_3) 40)
    (= (duration serie1_4) 40) (= (duration serie1_5) 40) (= (duration serie1_6) 40)
    (= (duration pelicula1) 90) (= (duration pelicula2) 85) (= (duration pelicula3) 110)
  )

  (:metric
    minimize (totals_watched)
  )

  (:goal
    (forall (?x - content)
      (or (not (to_watch ?x)) (watched ?x somewhen))
    )
  )
)

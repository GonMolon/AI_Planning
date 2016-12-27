(define (problem redflix_problem)
  (:domain redflix_domain)
  (:objects
   ;;Series
   game_thrones-1-1 game_thrones-1-2 game_thrones-1-3 game_thrones-1-4 - content
   game_thrones-1-5 game_thrones-1-6 game_thrones-1-7 game_thrones-1-8 - content
   game_thrones-2-1 game_thrones-2-2 game_thrones-2-3 game_thrones-2-4 - content
   game_thrones-2-5 game_thrones-2-6 game_thrones-2-7 game_thrones-2-8 - content
   breaking_bad-1-1 breaking_bad-1-2 breaking_bad-1-3 breaking_bad-1-4 - content
   breaking_bad-1-5 breaking_bad-1-6 breaking_bad-1-7 breaking_bad-1-8 - content
   breaking_bad-2-1 breaking_bad-2-2 breaking_bad-2-3 breaking_bad-2-4 - content
   breaking_bad-2-5 breaking_bad-2-6 breaking_bad-2-7 breaking_bad-2-8 - content
   star_trek-1-1 star_trek-1-2 star_trek-1-3 star_trek-1-4 - content
   star_trek-2-1 star_trek-2-2 star_trek-2-3 - content
   black_mirror-1-1 black_mirror-1-2 - content
   black_mirror-2-1 black_mirror-2-2 - content
   black_mirror-3-1 black_mirror-3-2 - content
   prision_break-1-1 prision_break-1-2 prision_break-1-3 prision_break-1-4 - content
   prision_break-1-5 prision_break-1-6 prision_break-1-7 prision_break-1-8 - content
   carnivale-1-1 carnivale-1-2 carnivale-1-3 carnivale-1-4 carnivale-1-5 carnivale-1-6 - content
   ;;Movies
   lord_rings-1 lord_rings-2 lord_rings-3 - content
   hobbit-1 hobbit-2 hobbit-3 - content
   star_wars-1 star_wars-2 star_wars-3 star_wars-4 star_wars-5 star_wars-6 star_wars-7 - content
   harry_potter-1 harry_potter-2 harry_potter-3 harry_potter-4 harry_potter-5 harry_potter-6 harry_potter-7 - content
   inception - content

  )
  (:init


    (watched game_thrones-1-1 somewhen) (watched game_thrones-1-2 somewhen) (watched game_thrones-1-3 somewhen) (watched game_thrones-1-4 somewhen)
    (watched game_thrones-1-5 never) (watched game_thrones-1-6 never) (watched game_thrones-1-7 never) (watched game_thrones-1-8 never)
    (watched game_thrones-2-1 never) (watched game_thrones-2-2 never) (watched game_thrones-2-3 never) (watched game_thrones-2-4 never)
    (watched game_thrones-2-5 never) (watched game_thrones-2-6 never) (watched game_thrones-2-7 never) (watched game_thrones-2-8 never)
    (watched breaking_bad-1-1 never) (watched breaking_bad-1-2 never) (watched breaking_bad-1-3 never) (watched breaking_bad-1-4 never)
    (watched breaking_bad-1-5 never) (watched breaking_bad-1-6 never) (watched breaking_bad-1-7 never) (watched breaking_bad-1-8 never)
    (watched breaking_bad-2-1 never) (watched breaking_bad-2-2 never) (watched breaking_bad-2-3 never) (watched breaking_bad-2-4 never)
    (watched breaking_bad-2-5 never) (watched breaking_bad-2-6 never) (watched breaking_bad-2-7 never) (watched breaking_bad-2-8 never)
    (wacthed star_trek-1-1 somewhen) (wacthed star_trek-1-2 somewhen) (wacthed star_trek-1-3 somewhen) (wacthed star_trek-1-4 never)
    (wacthed star_trek-2-1 never) (wacthed star_trek-2-2 never) (wacthed star_trek-2-3 never)
    (watched black_mirror-1-1 somewhen) (watched black_mirror-1-2 somewhen)
    (watched black_mirror-2-1 never) (watched black_mirror-2-2 never)
    (watched black_mirror-3-1 never) (watched black_mirror-3-2 never)
    (watched prision_break-1-1 somewhen) (watched prision_break-1-2 somewhen) (watched prision_break-1-3 never) (watched prision_break-1-4 never)
    (watched prision_break-1-5 never) (watched prision_break-1-6 never) (watched prision_break-1-7 never) (watched prision_break-1-8 never)
    (watched carnivale-1-1 somewhen) (watched carnivale-1-2 somewhen) (watched carnivale-1-3 somewhen) (watched carnivale-1-4 somewhen) (watched carnivale-1-5 somewhen)
    (watched carnivale-1-6 never)
    (watched lord_rings-1 somewhen) (watched lord_rings-2 somewhen) (watched lord_rings-3 never)
    (watched hobbit-1 never) (watched hobbit-2 never) (watched hobbit-3 never)
    (wacthed star_wars-1 never) (watched star_wars-2 never) (wacthed star_wars-3 never) (wacthed star_wars-4 never) (wacthed star_wars-5 never)
    (wacthed star_wars-6 never) (wacthed star_wars-7 never)
    (watched harry_potter-1 somewhen) (watched harry_potter-2 never) (watched harry_potter-3 never) (watched harry_potter-4 never) (watched harry_potter-5 never)
    (watched harry_potter-6 never) (watched harry_potter-7 never)
    (watched inception never)


    (to_watch game_thrones-2-8) (to_watch breaking_bad-1-8) (to_watch star_trek-1-4) (to_watch black_mirror-3-2) (to_watch carnivale-1-6) (to_watch hobbit-2)
    (to_watch star_wars-7) (to_watch harry_potter-2)


    (precedes game_thrones-1-1 game_thrones-1-2) (precedes game_thrones-1-2 game_thrones-1-3)
    (precedes game_thrones-1-3 game_thrones-1-4) (precedes game_thrones-1-4 game_thrones-1-5)
    (precedes game_thrones-1-5 game_thrones-1-6) (precedes game_thrones-1-6 game_thrones-1-7)
    (precedes game_thrones-1-7 game_thrones-1-8) (precedes game_thrones-1-8 game_thrones-2-1)
    (precedes game_thrones-2-1 game_thrones-2-2) (precedes game_thrones-2-2 game_thrones-2-3)
    (precedes game_thrones-2-3 game_thrones-2-4) (precedes game_thrones-2-4 game_thrones-2-5)
    (precedes game_thrones-2-5 game_thrones-2-6) (precedes game_thrones-2-6 game_thrones-2-7)
    (precedes game_thrones-2-7 game_thrones-2-8)
    (precedes breaking_bad-1-1 breaking_bad-1-2) (precedes breaking_bad-1-2 breaking_bad-1-3)
    (precedes breaking_bad-1-3 breaking_bad-1-4) (precedes breaking_bad-1-4 breaking_bad-1-5)
    (precedes breaking_bad-1-5 breaking_bad-1-6) (precedes breaking_bad-1-6 breaking_bad-1-7)
    (precedes breaking_bad-1-7 breaking_bad-1-8) (precedes breaking_bad-1-8 breaking_bad-2-1)
    (precedes breaking_bad-2-2 breaking_bad-2-3)
    (precedes breaking_bad-2-3 breaking_bad-2-4) (precedes breaking_bad-2-1 breaking_bad-2-2)
    (precedes breaking_bad-2-4 breaking_bad-2-5) (precedes breaking_bad-2-5 breaking_bad-2-6)
    (precedes breaking_bad-2-6 breaking_bad-2-7) (precedes breaking_bad-2-7 breaking_bad-2-8)
    (precedes star_trek-1-1 star_trek-1-2) (precedes star_trek-1-2 star_trek-1-3)
    (precedes star_trek-1-3 star_trek-1-4) (precedes star_trek-1-4 star_trek-2-1)
    (precedes star_trek-2-1 star_trek-2-2) (precedes star_trek-2-2 star_trek-2-3)
    (precedes black_mirror-1-1 black_mirror-1-2) (precedes black_mirror-1-2 black_mirror-2-1)
    (precedes black_mirror-2-1 black_mirror-2-2) (precedes black_mirror-2-2 black_mirror-3-1)
    (precedes black_mirror-3-1 black_mirror-3-2)
    (precedes prision_break-1-1 prision_break-1-2) (precedes prision_break-1-2 prision_break-1-3)
    (precedes prision_break-1-3 prision_break-1-4) (precedes prision_break-1-4 prision_break-1-5)
    (precedes prision_break-1-5 prision_break-1-6) (precedes prision_break-1-6 prision_break-1-7)
    (precedes prision_break-1-7 prision_break-1-8)
    (precedes carnivale-1-1 carnivale-1-2) (precedes carnivale-1-2 carnivale-1-3)
    (precedes carnivale-1-3 carnivale-1-4) (precedes carnivale-1-4 carnivale-1-5)
    (precedes carnivale-1-5 carnivale-1-6)
    (precedes lord_rings-1 lord_rings-2) (precedes lord_rings-2 lord_rings-3)
    (precedes lord_rings-3 hobbit-1) (precedes hobbit-1 hobbit-2)
    (precedes hobbit-2 hobbit-3)
    (precedes star_wars-1 star_wars-2) (precedes star_wars-2 star_wars-3)
    (precedes star_wars-3 star_wars-4) (precedes star_wars-4 star_wars-5)
    (precedes star_wars-5 star_wars-6) (precedes star_wars-6 star_wars-7)
    (precedes harry_potter-1 harry_potter-2) (precedes harry_potter-2 harry_potter-3)
    (precedes harry_potter-3 harry_potter-4) (precedes harry_potter-4 harry_potter-5)
    (precedes harry_potter-5 harry_potter-6) (precedes harry_potter-6 harry_potter-7)

    (= (contents_today) 0)
    (= (minutes_today) 0)
    (= (totals_watched) 0)
    (= (duration game_thrones-1-1) 50) (= (duration game_thrones-1-2) 50) (= (duration game_thrones-1-3) 50) (= (duration game_thrones-1-4) 50)
    (= (duration game_thrones-1-5) 50) (= (duration game_thrones-1-6) 50) (= (duration game_thrones-1-7) 50) (= (duration game_thrones-1-8) 50)
    (= (duration game_thrones-2-1) 50) (= (duration game_thrones-2-2) 50) (= (duration game_thrones-2-3) 50) (= (duration game_thrones-2-4) 50)
    (= (duration game_thrones-2-5) 50) (= (duration game_thrones-2-6) 50) (= (duration game_thrones-2-7) 50) (= (duration game_thrones-2-8) 50)
    (= (duration breaking_bad-1-1) 45) (= (duration breaking_bad-1-2) 45) (= (duration breaking_bad-1-3) 45) (= (duration breaking_bad-1-4) 45)
    (= (duration breaking_bad-1-5) 45) (= (duration breaking_bad-1-6) 45) (= (duration breaking_bad-1-7) 45) (= (duration breaking_bad-1-8) 45)
    (= (duration breaking_bad-2-1) 45) (= (duration breaking_bad-2-2) 45) (= (duration breaking_bad-2-3) 45) (= (duration breaking_bad-2-4) 45)
    (= (duration breaking_bad-2-5) 45) (= (duration breaking_bad-2-6) 45) (= (duration breaking_bad-2-7) 45) (= (duration breaking_bad-2-8) 45)
    (= (duration star_trek-1-1) 42) (= (duration star_trek-1-2) 42) (= (duration star_trek-1-3) 42) (= (duration star_trek-1-4) 42)
    (= (duration star_trek-2-1) 42) (= (duration star_trek-2-2) 42) (= (duration star_trek-2-3) 42)
    (= (duration black_mirror-1-1) 65) (= (duration black_mirror-1-2) 70)
    (= (duration black_mirror-2-1) 55) (= (duration black_mirror-2-2) 70)
    (= (duration black_mirror-3-1) 75) (= (duration black_mirror-3-2) 90)
    (= (duration prision_break-1-1) 40) (= (duration prision_break-1-2) 40) (= (duration prision_break-1-3) 40) (= (duration prision_break-1-4) 40)
    (= (duration prision_break-1-5) 40) (= (duration prision_break-1-6) 40) (= (duration prision_break-1-7) 40) (= (duration prision_break-1-8) 40)
    (= (duration carnivale-1-1) 60) (= (duration carnivale-1-2) 60) (= (duration carnivale-1-3) 60) (= (duration carnivale-1-4) 60)
    (= (duration carnivale-1-5) 60) (= (duration carnivale-1-6) 60)
    (= (duration lord_rings-1) 130) (= (duration lord_rings-2) 140) (= (duration lord_rings-3) 135)
    (= (duration hobbit-1) 125) (= (duration hobbit-2) 125) (= (duration hobbit-3) 125)
    (= (duration star_wars-1) 110) (= (duration star_wars-2) 110) (= (duration star_wars-3) 110) (= (duration star_wars-4) 110)
    (= (duration star_wars-5) 110) (= (duration star_wars-6) 110) (= (duration star_wars-7) 110)
    (= (duration harry_potter-1) 130) (= (duration harry_potter-2) 130) (= (duration harry_potter-3) 130) (= (duration harry_potter-4) 130)
    (= (duration harry_potter-5) 130) (= (duration harry_potter-6) 130) (= (duration harry_potter-7) 130)
    (= (duration inception) 140)

  )

  (:metric minimize (totals_watched))

  (:goal
    (forall (?x - content)
      (or (not (to_watch ?x)) (watched ?x somewhen))
    )
  )
)

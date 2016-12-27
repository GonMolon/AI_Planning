(define (problem simple_problem)
  (:domain redflix_domain)
  (:objects
    c1 c2 c3 c4 c5 - content
  )

  (:init
    ;;to_watch
    (to_watch c5)
    (to_watch c4)
    (to_watch c3)
    (to_watch c2)
    (to_watch c1)

    ;;watched
    (watched c1 never)
    (watched c2 never)
    (watched c3 never)
    (watched c4 never)
    (watched c5 never)

    ;;precedes

    ;;parallel

    ;;duration
    (= (duration c1) 75) 
    (= (duration c2) 75) 
    (= (duration c3) 75) 
    (= (duration c4) 75) 
    (= (duration c5) 75) 
    
    ;;domain functions
    (= (contents_today) 0)
    (= (minutes_today) 0)
    (= (totals_watched) 0)
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

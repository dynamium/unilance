(import "unilance/unilance.bin" 'unilancelib)

(load-native-lib unilancelib)

; Set to 1 to monitor some debug variables using the extension ext-euc-dbg
(define debug 1)

(if (= debug 1)
    (loopwhile t
        (progn
            (define setpoint (ext-balance-dbg 2))
            (define tt-filtered-current (ext-balance-dbg 3))
            (define integral (ext-balance-dbg 14))
            (sleep 0.1)
)))

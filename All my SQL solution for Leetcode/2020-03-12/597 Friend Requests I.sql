SELECT
    ROUND(
        IFNULL(
            (SELECT COUNT(*) FROM (SELECT DISTINCT requester_id, accepter_id FROM requester_accepted) AS A)
            /
            (SELECT COUNT(*) FROM (SELECT DISTINCT sender_id, send_to_id FROM friend_request) AS B),
            0
        )
        , 2
    ) AS accept_rate;


SELECT  
    COALESCE(
        ROUND( COUNT(DISTINCT sender_id, send_to_id / COUNT(DISTINCT requester_id, accepter_id)),2)
        ,0
    ) AS accept_rate

FROM friend_request, requester_accepted

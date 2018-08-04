INSERT INTO GameReviewPosts
(GameInfo_id, username, user_img_url, user_rating, user_review, recommendation)
VALUES
($1, $2, $3, $4, $5, $6);
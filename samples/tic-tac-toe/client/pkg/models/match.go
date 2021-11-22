package models

type MoveRequest struct {
	Index     int    `json:"index"`
	PlayerNum int `json:"playerNum"`
}

type MoveResponse struct {
	MatchStatus string `json:"matchStatus"`
	Winner      int    `json:"winner"`
	BoardStatus string `json:"boardStatus"`
}

type MatchTable struct {
	UserID      string `json:"userID"`
	PlayerNum   int    `json:"playerNum"`
	MatchStatus string `json:"matchStatus"`
	Winner      int    `json:"winner"`
	PlayerTurn  int    `json:"playerTurn"`
	BoardStatus string `json:"boardStatus"`
}
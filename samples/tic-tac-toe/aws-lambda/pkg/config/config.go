// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

// Config specifies configurable options through env vars
// nolint: lll
type Config struct {
	ServiceName string `env:"SERVICE_NAME" envDefault:"tic-tac-oe-service"`
	Realm       string `env:"REALM_NAME"`
}
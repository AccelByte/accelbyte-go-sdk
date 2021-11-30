// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"fmt"
	"reflect"
)

// Config specifies configurable options through env vars
// nolint: lll
type Config struct {
	ServiceName string `env:"SERVICE_NAME" envDefault:"title-matchmaking-service"`
	Realm       string `env:"REALM_NAME"`
}

// HelpDocs returns documentation of Config based on field tags
func (envVar Config) HelpDocs() []string {
	reflectEnvVar := reflect.TypeOf(envVar)
	doc := make([]string, 1+reflectEnvVar.NumField())
	doc[0] = "Environment variables config:"

	for i := 0; i < reflectEnvVar.NumField(); i++ {
		field := reflectEnvVar.Field(i)
		envName := field.Tag.Get("env")
		envDefault := field.Tag.Get("envDefault")
		envDocs := field.Tag.Get("envDocs")
		doc[i+1] = fmt.Sprintf("  %v\t %v (default: %v)", envName, envDocs, envDefault)
	}

	return doc
}

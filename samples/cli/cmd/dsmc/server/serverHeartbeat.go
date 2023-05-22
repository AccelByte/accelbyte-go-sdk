// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ServerHeartbeatCmd represents the ServerHeartbeat command
var ServerHeartbeatCmd = &cobra.Command{
	Use:   "serverHeartbeat",
	Short: "Server heartbeat",
	Long:  `Server heartbeat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsDSHeartbeatRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &server.ServerHeartbeatParams{
			Body:      body,
			Namespace: namespace,
		}
		errAccepted := serverService.ServerHeartbeatShort(input)
		if errAccepted != nil {
			logrus.Error(errAccepted)

			return errAccepted
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ServerHeartbeatCmd.Flags().String("body", "", "Body")
	_ = ServerHeartbeatCmd.MarkFlagRequired("body")
	ServerHeartbeatCmd.Flags().String("namespace", "", "Namespace")
	_ = ServerHeartbeatCmd.MarkFlagRequired("namespace")
}

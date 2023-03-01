// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HeartbeatCmd represents the Heartbeat command
var HeartbeatCmd = &cobra.Command{
	Use:   "heartbeat",
	Short: "Heartbeat",
	Long:  `Heartbeat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &qosm.ServerService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *qosmclientmodels.ModelsHeartbeatRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &server.HeartbeatParams{
			Body: body,
		}
		errNoContent := serverService.HeartbeatShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	HeartbeatCmd.Flags().String("body", "", "Body")
	_ = HeartbeatCmd.MarkFlagRequired("body")
}

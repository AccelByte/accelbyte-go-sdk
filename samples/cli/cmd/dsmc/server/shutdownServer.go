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

// ShutdownServerCmd represents the ShutdownServer command
var ShutdownServerCmd = &cobra.Command{
	Use:   "shutdownServer",
	Short: "Shutdown server",
	Long:  `Shutdown server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsShutdownServerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &server.ShutdownServerParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := serverService.ShutdownServerShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ShutdownServerCmd.Flags().StringP("body", "", "", "Body")
	_ = ShutdownServerCmd.MarkFlagRequired("body")
	ShutdownServerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ShutdownServerCmd.MarkFlagRequired("namespace")
}

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

// DeregisterLocalServerCmd represents the DeregisterLocalServer command
var DeregisterLocalServerCmd = &cobra.Command{
	Use:   "deregisterLocalServer",
	Short: "Deregister local server",
	Long:  `Deregister local server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsDeregisterLocalServerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &server.DeregisterLocalServerParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := serverService.DeregisterLocalServerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeregisterLocalServerCmd.Flags().String("body", "", "Body")
	_ = DeregisterLocalServerCmd.MarkFlagRequired("body")
	DeregisterLocalServerCmd.Flags().String("namespace", "", "Namespace")
	_ = DeregisterLocalServerCmd.MarkFlagRequired("namespace")
}

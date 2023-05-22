// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetServerSessionTimeoutCmd represents the GetServerSessionTimeout command
var GetServerSessionTimeoutCmd = &cobra.Command{
	Use:   "getServerSessionTimeout",
	Short: "Get server session timeout",
	Long:  `Get server session timeout`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &server.GetServerSessionTimeoutParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, errOK := serverService.GetServerSessionTimeoutShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetServerSessionTimeoutCmd.Flags().String("namespace", "", "Namespace")
	_ = GetServerSessionTimeoutCmd.MarkFlagRequired("namespace")
	GetServerSessionTimeoutCmd.Flags().String("podName", "", "Pod name")
	_ = GetServerSessionTimeoutCmd.MarkFlagRequired("podName")
}

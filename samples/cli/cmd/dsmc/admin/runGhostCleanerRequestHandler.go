// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RunGhostCleanerRequestHandlerCmd represents the RunGhostCleanerRequestHandler command
var RunGhostCleanerRequestHandlerCmd = &cobra.Command{
	Use:   "runGhostCleanerRequestHandler",
	Short: "Run ghost cleaner request handler",
	Long:  `Run ghost cleaner request handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin.RunGhostCleanerRequestHandlerParams{
			Namespace: namespace,
		}
		errNoContent := adminService.RunGhostCleanerRequestHandlerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RunGhostCleanerRequestHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = RunGhostCleanerRequestHandlerCmd.MarkFlagRequired("namespace")
}

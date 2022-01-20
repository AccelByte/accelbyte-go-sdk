// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteServerCmd represents the deleteServer command
var deleteServerCmd = &cobra.Command{
	Use:   "deleteServer",
	Short: "Delete server",
	Long:  `Delete server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &qosm.AdminService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		region, _ := cmd.Flags().GetString("region")
		input := &admin.DeleteServerParams{
			Region: region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminService.DeleteServer(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteServerCmd)
	deleteServerCmd.Flags().StringP("region", "r", " ", "Region")
	_ = deleteServerCmd.MarkFlagRequired("region")
}
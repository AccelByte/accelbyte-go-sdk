// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteServerCmd represents the DeleteServer command
var DeleteServerCmd = &cobra.Command{
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
		errNoContent := adminService.DeleteServerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteServerCmd.Flags().String("region", "", "Region")
	_ = DeleteServerCmd.MarkFlagRequired("region")
}

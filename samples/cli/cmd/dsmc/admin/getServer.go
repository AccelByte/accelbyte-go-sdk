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

// GetServerCmd represents the GetServer command
var GetServerCmd = &cobra.Command{
	Use:   "getServer",
	Short: "Get server",
	Long:  `Get server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &admin.GetServerParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, err := adminService.GetServerShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetServerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetServerCmd.MarkFlagRequired("namespace")
	GetServerCmd.Flags().StringP("podName", "", "", "Pod name")
	_ = GetServerCmd.MarkFlagRequired("podName")
}

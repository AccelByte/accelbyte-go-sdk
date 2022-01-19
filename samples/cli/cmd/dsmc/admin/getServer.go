// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getServerCmd represents the getServer command
var getServerCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminService.GetServer(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getServerCmd)
	getServerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getServerCmd.MarkFlagRequired("namespace")
	getServerCmd.Flags().StringP("podName", "p", " ", "Pod name")
	_ = getServerCmd.MarkFlagRequired("podName")
}

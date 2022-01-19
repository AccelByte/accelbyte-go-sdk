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

// listServerCmd represents the listServer command
var listServerCmd = &cobra.Command{
	Use:   "listServer",
	Short: "List server",
	Long:  `List server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		region, _ := cmd.Flags().GetString("region")
		input := &admin.ListServerParams{
			Namespace: namespace,
			Count:     &count,
			Offset:    &offset,
			Region:    &region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminService.ListServer(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listServerCmd)
	listServerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listServerCmd.MarkFlagRequired("namespace")
	listServerCmd.Flags().Int64P("count", "c", 1, "Count")
	listServerCmd.Flags().Int64P("offset", "o", 0, "Offset")
	listServerCmd.Flags().StringP("region", "r", " ", "Region")
}

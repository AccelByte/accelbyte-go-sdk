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

// listSessionCmd represents the listSession command
var listSessionCmd = &cobra.Command{
	Use:   "listSession",
	Short: "List session",
	Long:  `List session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		region, _ := cmd.Flags().GetString("region")
		withServer, _ := cmd.Flags().GetBool("withServer")
		input := &admin.ListSessionParams{
			Namespace:  namespace,
			Count:      &count,
			Offset:     &offset,
			Region:     &region,
			WithServer: &withServer,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminService.ListSession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listSessionCmd)
	listSessionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listSessionCmd.MarkFlagRequired("namespace")
	listSessionCmd.Flags().Int64P("count", "c", 1, "Count")
	listSessionCmd.Flags().Int64P("offset", "o", 0, "Offset")
	listSessionCmd.Flags().StringP("region", "r", " ", "Region")
	listSessionCmd.Flags().BoolP("withServer", "w", false, "With server")
}

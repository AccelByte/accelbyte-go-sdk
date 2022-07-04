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

// ListServerCmd represents the ListServer command
var ListServerCmd = &cobra.Command{
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
			Region:    &region,
			Count:     count,
			Offset:    offset,
		}
		ok, err := adminService.ListServerShort(input)
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
	ListServerCmd.Flags().String("namespace", "", "Namespace")
	_ = ListServerCmd.MarkFlagRequired("namespace")
	ListServerCmd.Flags().String("region", "", "Region")
	ListServerCmd.Flags().Int64("count", 1, "Count")
	_ = ListServerCmd.MarkFlagRequired("count")
	ListServerCmd.Flags().Int64("offset", 0, "Offset")
	_ = ListServerCmd.MarkFlagRequired("offset")
}

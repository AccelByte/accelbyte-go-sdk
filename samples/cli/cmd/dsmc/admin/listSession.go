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

// ListSessionCmd represents the ListSession command
var ListSessionCmd = &cobra.Command{
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
			Region:     &region,
			WithServer: &withServer,
			Count:      count,
			Offset:     offset,
		}
		ok, errOK := adminService.ListSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = ListSessionCmd.MarkFlagRequired("namespace")
	ListSessionCmd.Flags().String("region", "", "Region")
	ListSessionCmd.Flags().Bool("withServer", false, "With server")
	ListSessionCmd.Flags().Int64("count", 1, "Count")
	_ = ListSessionCmd.MarkFlagRequired("count")
	ListSessionCmd.Flags().Int64("offset", 0, "Offset")
	_ = ListSessionCmd.MarkFlagRequired("offset")
}

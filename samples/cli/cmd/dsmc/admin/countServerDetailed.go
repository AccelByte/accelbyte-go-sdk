// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CountServerDetailedCmd represents the CountServerDetailed command
var CountServerDetailedCmd = &cobra.Command{
	Use:   "countServerDetailed",
	Short: "Count server detailed",
	Long:  `Count server detailed`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &admin.CountServerDetailedParams{
			Namespace: namespace,
			Region:    &region,
		}
		ok, err := adminService.CountServerDetailedShort(input)
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
	CountServerDetailedCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CountServerDetailedCmd.MarkFlagRequired("namespace")
	CountServerDetailedCmd.Flags().StringP("region", "", "", "Region")
}

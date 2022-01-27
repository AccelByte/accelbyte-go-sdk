// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminType

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetTypeCmd represents the adminGetType command
var adminGetTypeCmd = &cobra.Command{
	Use:   "adminGetType",
	Short: "Admin get type",
	Long:  `Admin get type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTypeService := &ugc.AdminTypeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_type.AdminGetTypeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminTypeService.AdminGetType(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetTypeCmd)
	adminGetTypeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetTypeCmd.MarkFlagRequired("namespace")
	adminGetTypeCmd.Flags().StringP("limit", "lt", "20", "Limit")
	adminGetTypeCmd.Flags().StringP("offset", "ot", "0", "Offset")
}

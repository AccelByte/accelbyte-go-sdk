// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminTag

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetTagCmd represents the AdminGetTag command
var AdminGetTagCmd = &cobra.Command{
	Use:   "AdminGetTag",
	Short: "Admin get tag",
	Long:  `Admin get tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_tag.AdminGetTagParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminTagService.AdminGetTag(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetTagCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetTagCmd.MarkFlagRequired("namespace")
	AdminGetTagCmd.Flags().StringP("limit", "lt", "20", "Limit")
	AdminGetTagCmd.Flags().StringP("offset", "ot", "0", "Offset")
}

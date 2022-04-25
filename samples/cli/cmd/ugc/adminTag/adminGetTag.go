// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
	Use:   "adminGetTag",
	Short: "Admin get tag",
	Long:  `Admin get tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_tag.AdminGetTagParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminTagService.AdminGetTagShort(input, nil)
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
	AdminGetTagCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetTagCmd.MarkFlagRequired("namespace")
	AdminGetTagCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetTagCmd.Flags().Int64P("offset", "", 0, "Offset")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminGetContentCmd represents the SingleAdminGetContent command
var SingleAdminGetContentCmd = &cobra.Command{
	Use:   "singleAdminGetContent",
	Short: "Single admin get content",
	Long:  `Single admin get content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_content.SingleAdminGetContentParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminContentService.SingleAdminGetContentShort(input)
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
	SingleAdminGetContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminGetContentCmd.MarkFlagRequired("namespace")
	SingleAdminGetContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	SingleAdminGetContentCmd.Flags().Int64P("offset", "", 0, "Offset")
}

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

// AdminDeleteTagCmd represents the AdminDeleteTag command
var AdminDeleteTagCmd = &cobra.Command{
	Use:   "AdminDeleteTag",
	Short: "Admin delete tag",
	Long:  `Admin delete tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &admin_tag.AdminDeleteTagParams{
			Namespace: namespace,
			TagID:     tagId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminTagService.AdminDeleteTag(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminDeleteTagCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminDeleteTagCmd.MarkFlagRequired("namespace")
	AdminDeleteTagCmd.Flags().StringP("tagId", "td", " ", "Tag id")
	_ = AdminDeleteTagCmd.MarkFlagRequired("tagId")
}

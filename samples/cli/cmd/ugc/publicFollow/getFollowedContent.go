// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicFollow

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetFollowedContentCmd represents the GetFollowedContent command
var GetFollowedContentCmd = &cobra.Command{
	Use:   "getFollowedContent",
	Short: "Get followed content",
	Long:  `Get followed content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_follow.GetFollowedContentParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := publicFollowService.GetFollowedContentShort(input)
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
	GetFollowedContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetFollowedContentCmd.MarkFlagRequired("namespace")
	GetFollowedContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	GetFollowedContentCmd.Flags().Int64P("offset", "", 0, "Offset")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicFollow

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getFollowedContentCmd represents the getFollowedContent command
var getFollowedContentCmd = &cobra.Command{
	Use:   "getFollowedContent",
	Short: "Get followed content",
	Long:  `Get followed content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_follow.GetFollowedContentParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicFollowService.GetFollowedContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getFollowedContentCmd)
	getFollowedContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getFollowedContentCmd.MarkFlagRequired("namespace")
	getFollowedContentCmd.Flags().StringP("limit", "lt", "20", "Limit")
	getFollowedContentCmd.Flags().StringP("offset", "ot", "0", "Offset")
}

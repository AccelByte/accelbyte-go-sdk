// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicLike

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getLikedContentCmd represents the getLikedContent command
var getLikedContentCmd = &cobra.Command{
	Use:   "getLikedContent",
	Short: "Get liked content",
	Long:  `Get liked content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeService := &ugc.PublicLikeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_like.GetLikedContentParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicLikeService.GetLikedContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLikedContentCmd)
	getLikedContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getLikedContentCmd.MarkFlagRequired("namespace")
	getLikedContentCmd.Flags().StringP("limit", "lt", "20", "Limit")
	getLikedContentCmd.Flags().StringP("offset", "ot", "0", "Offset")
}

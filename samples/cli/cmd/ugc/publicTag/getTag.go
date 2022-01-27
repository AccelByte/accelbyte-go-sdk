// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicTag

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_tag"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getTagCmd represents the getTag command
var getTagCmd = &cobra.Command{
	Use:   "getTag",
	Short: "Get tag",
	Long:  `Get tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTagService := &ugc.PublicTagService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_tag.GetTagParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicTagService.GetTag(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getTagCmd)
	getTagCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getTagCmd.MarkFlagRequired("namespace")
	getTagCmd.Flags().StringP("limit", "lt", "20", "Limit")
	getTagCmd.Flags().StringP("offset", "ot", "0", "Offset")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicTag

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_tag"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTagCmd represents the GetTag command
var GetTagCmd = &cobra.Command{
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
	GetTagCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTagCmd.MarkFlagRequired("namespace")
	GetTagCmd.Flags().StringP("limit", "", "20", "Limit")
	GetTagCmd.Flags().StringP("offset", "", "0", "Offset")
}

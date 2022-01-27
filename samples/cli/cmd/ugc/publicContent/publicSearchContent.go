// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSearchContentCmd represents the PublicSearchContent command
var PublicSearchContentCmd = &cobra.Command{
	Use:   "PublicSearchContent",
	Short: "Public search content",
	Long:  `Public search content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		creator, _ := cmd.Flags().GetString("creator")
		isofficial, _ := cmd.Flags().GetString("isofficial")
		limit, _ := cmd.Flags().GetString("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetString("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tags, _ := cmd.Flags().GetString("tags")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.PublicSearchContentParams{
			Namespace:  namespace,
			Creator:    &creator,
			Isofficial: &isofficial,
			Limit:      &limit,
			Name:       &name,
			Offset:     &offset,
			Orderby:    &orderby,
			Sortby:     &sortby,
			Subtype:    &subtype,
			Tags:       &tags,
			Type:       &type_,
			UserID:     &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.PublicSearchContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicSearchContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicSearchContentCmd.MarkFlagRequired("namespace")
	PublicSearchContentCmd.Flags().StringP("creator", "cr", " ", "Creator")
	PublicSearchContentCmd.Flags().StringP("isofficial", "il", " ", "Isofficial")
	PublicSearchContentCmd.Flags().StringP("limit", "lt", "20", "Limit")
	PublicSearchContentCmd.Flags().StringP("name", "ne", " ", "Name")
	PublicSearchContentCmd.Flags().StringP("offset", "ot", "0", "Offset")
	PublicSearchContentCmd.Flags().StringP("orderby", "oy", " ", "Orderby")
	PublicSearchContentCmd.Flags().StringP("sortby", "sy", " ", "Sortby")
	PublicSearchContentCmd.Flags().StringP("subtype", "se", " ", "Subtype")
	PublicSearchContentCmd.Flags().StringP("tags", "ts", " ", "Tags")
	PublicSearchContentCmd.Flags().StringP("type", "te", " ", "Type")
	PublicSearchContentCmd.Flags().StringP("userId", "ud", " ", "User id")
}

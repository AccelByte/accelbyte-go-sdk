// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SearchChannelSpecificContentCmd represents the SearchChannelSpecificContent command
var SearchChannelSpecificContentCmd = &cobra.Command{
	Use:   "searchChannelSpecificContent",
	Short: "Search channel specific content",
	Long:  `Search channel specific content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		creator, _ := cmd.Flags().GetString("creator")
		isofficial, _ := cmd.Flags().GetString("isofficial")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tags, _ := cmd.Flags().GetString("tags")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.SearchChannelSpecificContentParams{
			ChannelID:  channelId,
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
		ok, err := publicContentService.SearchChannelSpecificContentShort(input, nil)
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
	SearchChannelSpecificContentCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = SearchChannelSpecificContentCmd.MarkFlagRequired("channelId")
	SearchChannelSpecificContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SearchChannelSpecificContentCmd.MarkFlagRequired("namespace")
	SearchChannelSpecificContentCmd.Flags().StringP("creator", "", "", "Creator")
	SearchChannelSpecificContentCmd.Flags().StringP("isofficial", "", "", "Isofficial")
	SearchChannelSpecificContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	SearchChannelSpecificContentCmd.Flags().StringP("name", "", "", "Name")
	SearchChannelSpecificContentCmd.Flags().Int64P("offset", "", 0, "Offset")
	SearchChannelSpecificContentCmd.Flags().StringP("orderby", "", "", "Orderby")
	SearchChannelSpecificContentCmd.Flags().StringP("sortby", "", "", "Sortby")
	SearchChannelSpecificContentCmd.Flags().StringP("subtype", "", "", "Subtype")
	SearchChannelSpecificContentCmd.Flags().StringP("tags", "", "", "Tags")
	SearchChannelSpecificContentCmd.Flags().StringP("type", "", "", "Type")
	SearchChannelSpecificContentCmd.Flags().StringP("userId", "", "", "User id")
}

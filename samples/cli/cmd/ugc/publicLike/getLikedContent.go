// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicLike

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetLikedContentCmd represents the GetLikedContent command
var GetLikedContentCmd = &cobra.Command{
	Use:   "getLikedContent",
	Short: "Get liked content",
	Long:  `Get liked content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeService := &ugc.PublicLikeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isofficial, _ := cmd.Flags().GetBool("isofficial")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		type_, _ := cmd.Flags().GetString("type")
		input := &public_like.GetLikedContentParams{
			Namespace:  namespace,
			Isofficial: &isofficial,
			Limit:      &limit,
			Name:       &name,
			Offset:     &offset,
			Orderby:    &orderby,
			Sortby:     &sortby,
			Subtype:    &subtype,
			Tags:       tags,
			Type:       &type_,
		}
		ok, errOK := publicLikeService.GetLikedContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLikedContentCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLikedContentCmd.MarkFlagRequired("namespace")
	GetLikedContentCmd.Flags().Bool("isofficial", false, "Isofficial")
	GetLikedContentCmd.Flags().Int64("limit", 20, "Limit")
	GetLikedContentCmd.Flags().String("name", "", "Name")
	GetLikedContentCmd.Flags().Int64("offset", 0, "Offset")
	GetLikedContentCmd.Flags().String("orderby", "", "Orderby")
	GetLikedContentCmd.Flags().String("sortby", "", "Sortby")
	GetLikedContentCmd.Flags().String("subtype", "", "Subtype")
	GetLikedContentCmd.Flags().String("tags", "", "Tags")
	GetLikedContentCmd.Flags().String("type", "", "Type")
}

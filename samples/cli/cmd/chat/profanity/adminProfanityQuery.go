// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminProfanityQueryCmd represents the AdminProfanityQuery command
var AdminProfanityQueryCmd = &cobra.Command{
	Use:   "adminProfanityQuery",
	Short: "Admin profanity query",
	Long:  `Admin profanity query`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		filterMask, _ := cmd.Flags().GetString("filterMask")
		includeChildren, _ := cmd.Flags().GetBool("includeChildren")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		parentId, _ := cmd.Flags().GetString("parentId")
		startWith, _ := cmd.Flags().GetString("startWith")
		wordType, _ := cmd.Flags().GetString("wordType")
		input := &profanity.AdminProfanityQueryParams{
			Namespace:       namespace,
			FilterMask:      &filterMask,
			IncludeChildren: &includeChildren,
			Limit:           &limit,
			Offset:          &offset,
			ParentID:        &parentId,
			StartWith:       &startWith,
			WordType:        &wordType,
		}
		ok, errOK := profanityService.AdminProfanityQueryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminProfanityQueryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityQueryCmd.MarkFlagRequired("namespace")
	AdminProfanityQueryCmd.Flags().String("filterMask", "", "Filter mask")
	AdminProfanityQueryCmd.Flags().Bool("includeChildren", false, "Include children")
	AdminProfanityQueryCmd.Flags().Int64("limit", 20, "Limit")
	AdminProfanityQueryCmd.Flags().Int64("offset", 0, "Offset")
	AdminProfanityQueryCmd.Flags().String("parentId", "", "Parent id")
	AdminProfanityQueryCmd.Flags().String("startWith", "", "Start with")
	AdminProfanityQueryCmd.Flags().String("wordType", "", "Word type")
}

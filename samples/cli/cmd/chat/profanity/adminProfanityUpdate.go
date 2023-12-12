// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminProfanityUpdateCmd represents the AdminProfanityUpdate command
var AdminProfanityUpdateCmd = &cobra.Command{
	Use:   "adminProfanityUpdate",
	Short: "Admin profanity update",
	Long:  `Admin profanity update`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsDictionaryUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminProfanityUpdateParams{
			Body:      body,
			ID:        id_,
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminProfanityUpdateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminProfanityUpdateCmd.Flags().String("body", "", "Body")
	_ = AdminProfanityUpdateCmd.MarkFlagRequired("body")
	AdminProfanityUpdateCmd.Flags().String("id", "", "Id")
	_ = AdminProfanityUpdateCmd.MarkFlagRequired("id")
	AdminProfanityUpdateCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityUpdateCmd.MarkFlagRequired("namespace")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AnonymizeUserProfileCmd represents the AnonymizeUserProfile command
var AnonymizeUserProfileCmd = &cobra.Command{
	Use:   "anonymizeUserProfile",
	Short: "Anonymize user profile",
	Long:  `Anonymize user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &basic.AnonymizationService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeUserProfileParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.AnonymizeUserProfileShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AnonymizeUserProfileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AnonymizeUserProfileCmd.MarkFlagRequired("namespace")
	AnonymizeUserProfileCmd.Flags().StringP("userId", "", "", "User id")
	_ = AnonymizeUserProfileCmd.MarkFlagRequired("userId")
}

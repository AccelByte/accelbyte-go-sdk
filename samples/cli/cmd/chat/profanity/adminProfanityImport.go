// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminProfanityImportCmd represents the AdminProfanityImport command
var AdminProfanityImportCmd = &cobra.Command{
	Use:   "adminProfanityImport",
	Short: "Admin profanity import",
	Long:  `Admin profanity import`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		action, _ := cmd.Flags().GetString("action")
		showResult, _ := cmd.Flags().GetBool("showResult")
		input := &profanity.AdminProfanityImportParams{
			File:       file,
			Namespace:  namespace,
			Action:     &action,
			ShowResult: &showResult,
		}
		ok, errOK := profanityService.AdminProfanityImportShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminProfanityImportCmd.Flags().String("file", "", "File")
	_ = AdminProfanityImportCmd.MarkFlagRequired("file")
	AdminProfanityImportCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityImportCmd.MarkFlagRequired("namespace")
	AdminProfanityImportCmd.Flags().String("action", "-1", "Action")
	AdminProfanityImportCmd.Flags().Bool("showResult", false, "Show result")
}

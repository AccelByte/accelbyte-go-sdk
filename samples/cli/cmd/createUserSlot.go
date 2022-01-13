// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"os"

	"github.com/spf13/cobra"
)

// createUserSlotCmd represents the createUserSlot command
var createUserSlotCmd = &cobra.Command{
	Use:   "createUserSlot",
	Short: "Create user slot",
	Long:  `Create user slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("createUserSlot called")
		socialService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		checksum := cmd.Flag("checksum").Value.String()
		customAttribute := cmd.Flag("customAttribute").Value.String()
		label := cmd.Flag("label").Value.String()
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		err := json.Unmarshal([]byte(tagsString), &tags)
		if err != nil {
			return err
		}
		filePath := cmd.Flag("filePath").Value.String()
		file, err := os.Open(filePath)
		if err != nil {
			return err
		}
		input := &slot.PublicCreateUserNamespaceSlotParams{
			Checksum:        &checksum,
			CustomAttribute: &customAttribute,
			File:            file,
			Label:           &label,
			Namespace:       namespace,
			Tags:            tags,
			UserID:          userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err = socialService.PublicCreateUserNamespaceSlot(input)
		if err != nil {
			return err
		}
		logrus.Info("User's slot created")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(createUserSlotCmd)
	createUserSlotCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = createUserSlotCmd.MarkFlagRequired("namespace")
	createUserSlotCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = createUserSlotCmd.MarkFlagRequired("userId")
	createUserSlotCmd.Flags().StringP("checksum", "c", "", "Checksum")
	createUserSlotCmd.Flags().StringP("customAttribute", "a", "", "Custom Attribute")
	createUserSlotCmd.Flags().StringP("label", "l", "", "label")
	createUserSlotCmd.Flags().StringP("tags", "t", "", "Tags.  In json format, example: '{\"key1\", \"value1\"}'")
	createUserSlotCmd.Flags().StringP("filePath", "f", "", "Uploaded file absolute path. example: /home/user/file.jpg")
	_ = createUserSlotCmd.MarkFlagRequired("filePath")
}

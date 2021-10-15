// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"bytes"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"io"
	"os"
)

// getUserSlotsPublicCmd represents the getUserSlotsPublic command
var getUserSlotsPublicCmd = &cobra.Command{
	Use:   "getUserSlotsPublic",
	Short: "Get user slots public",
	Long:  `Get user slots data public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserSlotsPublic called")
		socialService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		slotId := cmd.Flag("slotId").Value.String()
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		writer := bytes.NewBuffer(nil)
		input := &slot.PublicGetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		_, err = socialService.PublicGetSlotData(input, writer)
		if err != nil {
			logrus.Error(err)
			return err
		}
		_, err = io.Copy(file, writer)
		if err != nil {
			return err
		}

		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserSlotsPublicCmd)
	getUserSlotsPublicCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getUserSlotsPublicCmd.MarkFlagRequired("namespace")
	getUserSlotsPublicCmd.Flags().StringP("userId", "u", "", "User ID")
	getUserSlotsPublicCmd.MarkFlagRequired("userId")
	getUserSlotsPublicCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	getUserSlotsPublicCmd.MarkFlagRequired("slotId")
	getUserSlotsPublicCmd.Flags().StringP("outputFilePath", "o", "", "Output file path")
	getUserSlotsPublicCmd.MarkFlagRequired("outputFilePath")
}

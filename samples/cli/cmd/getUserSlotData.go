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

// getUserSlotDataCmd represents the getUserSlotData command
var getUserSlotDataCmd = &cobra.Command{
	Use:   "getUserSlotData",
	Short: "Get user slot data",
	Long:  `Get user slot data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserSlotData called")
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
		if err != nil {
			return err
		}
		writer := bytes.NewBuffer(nil)
		input := &slot.GetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		_, err = socialService.GetSlotData(input, writer)
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
	RootCmd.AddCommand(getUserSlotDataCmd)
	getUserSlotDataCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getUserSlotDataCmd.MarkFlagRequired("namespace")
	getUserSlotDataCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = getUserSlotDataCmd.MarkFlagRequired("userId")
	getUserSlotDataCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	_ = getUserSlotDataCmd.MarkFlagRequired("slotId")
	getUserSlotDataCmd.Flags().StringP("outputFilePath", "o", "", "Output file path")
	_ = getUserSlotDataCmd.MarkFlagRequired("outputFilePath")
}

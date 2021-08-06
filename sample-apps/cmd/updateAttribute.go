// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateAttribute represents the updateAttribute command
var updateAttribute = &cobra.Command{
	Use:   "updateAttribute",
	Short: "Public Update user attribute",
	Long:  `Public Update user attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateAttribute called")
		gameProfileService := &service.GameProfileService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		profileId := cmd.Flag("profileId").Value.String()
		attributeName := cmd.Flag("attributeName").Value.String()
		requestBody := cmd.Flag("body").Value.String()
		var attribute *socialclientmodels.Attribute
		err := json.Unmarshal([]byte(requestBody), &attribute)
		if err != nil {
			return err
		}
		ok, err := gameProfileService.PublicUpdateAttribute(namespace, userId, attributeName, profileId, attribute)
		if err != nil {
			return err
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				return err
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateAttribute)
	updateAttribute.Flags().StringP("namespace", "n", "", "User namespace")
	updateAttribute.MarkFlagRequired("namespace")
	updateAttribute.Flags().StringP("userId", "u", "", "User ID")
	updateAttribute.MarkFlagRequired("userId")
	updateAttribute.Flags().StringP("profileId", "p", "", "User Profile ID")
	updateAttribute.MarkFlagRequired("profileId")
	updateAttribute.Flags().StringP("attributeName", "a", "", "Attribute Name")
	updateAttribute.MarkFlagRequired("attributeName")
	updateAttribute.Flags().StringP("body", "b", "", "Request Body. Example : '{\"name\":\"skin\", \"value\":\"White\"}' ")
	updateAttribute.MarkFlagRequired("body")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/sample-apps/cmd/csm/app"
	"github.com/AccelByte/sample-apps/cmd/csm/appStatusProgressV4"
	"github.com/AccelByte/sample-apps/cmd/csm/appUI"
	"github.com/AccelByte/sample-apps/cmd/csm/appV2"
	"github.com/AccelByte/sample-apps/cmd/csm/appV4"
	"github.com/AccelByte/sample-apps/cmd/csm/appV5"
	"github.com/AccelByte/sample-apps/cmd/csm/asyncMessaging"
	"github.com/AccelByte/sample-apps/cmd/csm/configuration"
	"github.com/AccelByte/sample-apps/cmd/csm/configurationV2"
	"github.com/AccelByte/sample-apps/cmd/csm/deployment"
	"github.com/AccelByte/sample-apps/cmd/csm/deploymentV2"
	"github.com/AccelByte/sample-apps/cmd/csm/extendFiles"
	"github.com/AccelByte/sample-apps/cmd/csm/image"
	"github.com/AccelByte/sample-apps/cmd/csm/imageV2"
	"github.com/AccelByte/sample-apps/cmd/csm/managedResources"
	"github.com/AccelByte/sample-apps/cmd/csm/managedResourcesKeyValue"
	"github.com/AccelByte/sample-apps/cmd/csm/managedResourcesSQL"
	"github.com/AccelByte/sample-apps/cmd/csm/messages"
	"github.com/AccelByte/sample-apps/cmd/csm/notificationSubscription"
	"github.com/AccelByte/sample-apps/cmd/csm/notificationSubscriptionV3"
	"github.com/AccelByte/sample-apps/cmd/csm/resourcesLimits"
	"github.com/spf13/cobra"
)

// CsmCmd represents the service's child command
var CsmCmd = &cobra.Command{
	Use:   "Csm",
	Short: "Csm to get all the commands",
}

func init() {
	CsmCmd.AddCommand(appUI.ListAppUICmd)
	CsmCmd.AddCommand(appUI.CreateAppUICmd)
	CsmCmd.AddCommand(appUI.DeleteAppUICmd)
	CsmCmd.AddCommand(appUI.UploadAppUIFileCmd)
	CsmCmd.AddCommand(app.GetAppListV1Cmd)
	CsmCmd.AddCommand(app.GetAppV1Cmd)
	CsmCmd.AddCommand(app.CreateAppV1Cmd)
	CsmCmd.AddCommand(app.DeleteAppV1Cmd)
	CsmCmd.AddCommand(app.UpdateAppV1Cmd)
	CsmCmd.AddCommand(deployment.CreateDeploymentV1Cmd)
	CsmCmd.AddCommand(image.GetAppImageListV1Cmd)
	CsmCmd.AddCommand(image.DeleteAppImagesV1Cmd)
	CsmCmd.AddCommand(app.GetAppReleaseV1Cmd)
	CsmCmd.AddCommand(configuration.GetListOfSecretsV1Cmd)
	CsmCmd.AddCommand(configuration.SaveSecretV1Cmd)
	CsmCmd.AddCommand(configuration.UpdateSecretV1Cmd)
	CsmCmd.AddCommand(configuration.DeleteSecretV1Cmd)
	CsmCmd.AddCommand(app.StartAppV1Cmd)
	CsmCmd.AddCommand(app.StopAppV1Cmd)
	CsmCmd.AddCommand(configuration.GetListOfVariablesV1Cmd)
	CsmCmd.AddCommand(configuration.SaveVariableV1Cmd)
	CsmCmd.AddCommand(configuration.UpdateVariableV1Cmd)
	CsmCmd.AddCommand(configuration.DeleteVariableV1Cmd)
	CsmCmd.AddCommand(deployment.GetListOfDeploymentV1Cmd)
	CsmCmd.AddCommand(deployment.GetDeploymentV1Cmd)
	CsmCmd.AddCommand(deployment.DeleteDeploymentV1Cmd)
	CsmCmd.AddCommand(extendFiles.GetExtendFileCmd)
	CsmCmd.AddCommand(messages.PublicGetMessagesCmd)
	CsmCmd.AddCommand(appV2.GetAppListV2Cmd)
	CsmCmd.AddCommand(appV2.GetAppV2Cmd)
	CsmCmd.AddCommand(appV2.CreateAppV2Cmd)
	CsmCmd.AddCommand(appV2.DeleteAppV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppV2Cmd)
	CsmCmd.AddCommand(appV2.ApplyAppConfigV2Cmd)
	CsmCmd.AddCommand(asyncMessaging.CreateSubscriptionHandlerCmd)
	CsmCmd.AddCommand(asyncMessaging.UnsubscribeTopicHandlerCmd)
	CsmCmd.AddCommand(deploymentV2.CreateDeploymentV2Cmd)
	CsmCmd.AddCommand(imageV2.GetAppImageListV2Cmd)
	CsmCmd.AddCommand(imageV2.DeleteAppImagesV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.CreateKeyValueCredentialV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.GetIntegrationAppKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.IntegrateAppKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.RemoveIntegrationAppKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.CreateNewNoSQLDatabaseCredentialV2Cmd)
	CsmCmd.AddCommand(managedResources.CreateNoSQLDatabaseCredentialV2Cmd)
	CsmCmd.AddCommand(managedResources.GetNoSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(managedResources.CreateNoSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(managedResources.DeleteNoSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppResourcesV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppResourcesResourceLimitFormV2Cmd)
	CsmCmd.AddCommand(configurationV2.GetListOfSecretsV2Cmd)
	CsmCmd.AddCommand(configurationV2.SaveSecretV2Cmd)
	CsmCmd.AddCommand(configurationV2.UpdateSecretV2Cmd)
	CsmCmd.AddCommand(configurationV2.DeleteSecretV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.CreateSQLDatabaseCredentialV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.GetSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.CreateSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.DeleteSQLDatabaseV2Cmd)
	CsmCmd.AddCommand(appV2.StartAppV2Cmd)
	CsmCmd.AddCommand(appV2.StopAppV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.GetNotificationSubscriberListV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.BulkSaveSubscriptionAppNotificationV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.SubscribeAppNotificationV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.GetSubscriptionV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.SubscribeV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.UnsubscribeV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.DeleteSubscriptionAppNotificationByUserIDV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.DeleteSubscriptionAppNotificationV2Cmd)
	CsmCmd.AddCommand(configurationV2.GetListOfVariablesV2Cmd)
	CsmCmd.AddCommand(configurationV2.SaveVariableV2Cmd)
	CsmCmd.AddCommand(configurationV2.UpdateVariableV2Cmd)
	CsmCmd.AddCommand(configurationV2.DeleteVariableV2Cmd)
	CsmCmd.AddCommand(asyncMessaging.ListTopicsHandlerCmd)
	CsmCmd.AddCommand(asyncMessaging.CreateTopicHandlerCmd)
	CsmCmd.AddCommand(asyncMessaging.DeleteTopicHandlerCmd)
	CsmCmd.AddCommand(deploymentV2.GetListOfDeploymentV2Cmd)
	CsmCmd.AddCommand(deploymentV2.GetDeploymentV2Cmd)
	CsmCmd.AddCommand(deploymentV2.DeleteDeploymentV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.GetKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.ListKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.CreateKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.GetKeyValueClusterLimitConfigV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.UpdateKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.DeleteKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesKeyValue.GetListIntegratedAppKeyValueClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.GetNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.UpdateNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.CreateNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.DeleteNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.StartNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.StopNoSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResources.GetNoSQLAccessTunnelV2Cmd)
	CsmCmd.AddCommand(resourcesLimits.GetResourcesLimitsCmd)
	CsmCmd.AddCommand(managedResourcesSQL.GetSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.UpdateSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.CreateSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.DeleteSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.StartSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.StopSQLClusterV2Cmd)
	CsmCmd.AddCommand(managedResourcesSQL.GetSQLAppListV2Cmd)
	CsmCmd.AddCommand(managedResources.GetNoSQLAppListV2Cmd)
	CsmCmd.AddCommand(notificationSubscriptionV3.GetNotificationSubscriberListV3Cmd)
	CsmCmd.AddCommand(notificationSubscriptionV3.DeleteSubscriptionAppNotificationV3Cmd)
	CsmCmd.AddCommand(appV4.GetAppDebugInfoV4Cmd)
	CsmCmd.AddCommand(appV4.UpdateAppDebugModeV4Cmd)
	CsmCmd.AddCommand(appStatusProgressV4.GetAppStatusProgressV4Cmd)
	CsmCmd.AddCommand(appV5.CreateAppV5Cmd)
}

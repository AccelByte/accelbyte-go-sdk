# Reporting Service Index

&nbsp;

## Operations

### Admin Extension Categories and Auto Moderation Actions Wrapper:  [AdminExtensionCategoriesAndAutoModerationActions](../../services-api/pkg/service/reporting/adminExtensionCategoriesAndAutoModerationActions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/extensionActions` | GET | AdminFindActionListShort | [AdminFindActionListShort](../../reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_extension_categories_and_auto_moderation_actions_client.go) | [AdminFindActionListShort](../../services-api/pkg/service/reporting/adminExtensionCategoriesAndAutoModerationActions.go) | [AdminFindActionListShort](../../samples/cli/cmd/reporting/adminExtensionCategoriesAndAutoModerationActions/adminFindActionList.go) |
| `/reporting/v1/admin/extensionActions` | POST | AdminCreateModActionShort | [AdminCreateModActionShort](../../reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_extension_categories_and_auto_moderation_actions_client.go) | [AdminCreateModActionShort](../../services-api/pkg/service/reporting/adminExtensionCategoriesAndAutoModerationActions.go) | [AdminCreateModActionShort](../../samples/cli/cmd/reporting/adminExtensionCategoriesAndAutoModerationActions/adminCreateModAction.go) |
| `/reporting/v1/admin/extensionCategories` | GET | AdminFindExtensionCategoryListShort | [AdminFindExtensionCategoryListShort](../../reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_extension_categories_and_auto_moderation_actions_client.go) | [AdminFindExtensionCategoryListShort](../../services-api/pkg/service/reporting/adminExtensionCategoriesAndAutoModerationActions.go) | [AdminFindExtensionCategoryListShort](../../samples/cli/cmd/reporting/adminExtensionCategoriesAndAutoModerationActions/adminFindExtensionCategoryList.go) |
| `/reporting/v1/admin/extensionCategories` | POST | AdminCreateExtensionCategoryShort | [AdminCreateExtensionCategoryShort](../../reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions/admin_extension_categories_and_auto_moderation_actions_client.go) | [AdminCreateExtensionCategoryShort](../../services-api/pkg/service/reporting/adminExtensionCategoriesAndAutoModerationActions.go) | [AdminCreateExtensionCategoryShort](../../samples/cli/cmd/reporting/adminExtensionCategoriesAndAutoModerationActions/adminCreateExtensionCategory.go) |

### Admin Configurations Wrapper:  [AdminConfigurations](../../services-api/pkg/service/reporting/adminConfigurations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/namespaces/{namespace}/configurations` | GET | GetShort | [GetShort](../../reporting-sdk/pkg/reportingclient/admin_configurations/admin_configurations_client.go) | [GetShort](../../services-api/pkg/service/reporting/adminConfigurations.go) | [GetShort](../../samples/cli/cmd/reporting/adminConfigurations/get.go) |
| `/reporting/v1/admin/namespaces/{namespace}/configurations` | POST | UpsertShort | [UpsertShort](../../reporting-sdk/pkg/reportingclient/admin_configurations/admin_configurations_client.go) | [UpsertShort](../../services-api/pkg/service/reporting/adminConfigurations.go) | [UpsertShort](../../samples/cli/cmd/reporting/adminConfigurations/upsert.go) |

### Admin Reasons Wrapper:  [AdminReasons](../../services-api/pkg/service/reporting/adminReasons.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/namespaces/{namespace}/reasonGroups` | GET | AdminListReasonGroupsShort | [AdminListReasonGroupsShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [AdminListReasonGroupsShort](../../services-api/pkg/service/reporting/adminReasons.go) | [AdminListReasonGroupsShort](../../samples/cli/cmd/reporting/adminReasons/adminListReasonGroups.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasonGroups` | POST | CreateReasonGroupShort | [CreateReasonGroupShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [CreateReasonGroupShort](../../services-api/pkg/service/reporting/adminReasons.go) | [CreateReasonGroupShort](../../samples/cli/cmd/reporting/adminReasons/createReasonGroup.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}` | GET | GetReasonGroupShort | [GetReasonGroupShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [GetReasonGroupShort](../../services-api/pkg/service/reporting/adminReasons.go) | [GetReasonGroupShort](../../samples/cli/cmd/reporting/adminReasons/getReasonGroup.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}` | DELETE | DeleteReasonGroupShort | [DeleteReasonGroupShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [DeleteReasonGroupShort](../../services-api/pkg/service/reporting/adminReasons.go) | [DeleteReasonGroupShort](../../samples/cli/cmd/reporting/adminReasons/deleteReasonGroup.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}` | PATCH | UpdateReasonGroupShort | [UpdateReasonGroupShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [UpdateReasonGroupShort](../../services-api/pkg/service/reporting/adminReasons.go) | [UpdateReasonGroupShort](../../samples/cli/cmd/reporting/adminReasons/updateReasonGroup.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons` | GET | AdminGetReasonsShort | [AdminGetReasonsShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [AdminGetReasonsShort](../../services-api/pkg/service/reporting/adminReasons.go) | [AdminGetReasonsShort](../../samples/cli/cmd/reporting/adminReasons/adminGetReasons.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons` | POST | CreateReasonShort | [CreateReasonShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [CreateReasonShort](../../services-api/pkg/service/reporting/adminReasons.go) | [CreateReasonShort](../../samples/cli/cmd/reporting/adminReasons/createReason.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons/all` | GET | AdminGetAllReasonsShort | [AdminGetAllReasonsShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [AdminGetAllReasonsShort](../../services-api/pkg/service/reporting/adminReasons.go) | [AdminGetAllReasonsShort](../../samples/cli/cmd/reporting/adminReasons/adminGetAllReasons.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons/unused` | GET | AdminGetUnusedReasonsShort | [AdminGetUnusedReasonsShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [AdminGetUnusedReasonsShort](../../services-api/pkg/service/reporting/adminReasons.go) | [AdminGetUnusedReasonsShort](../../samples/cli/cmd/reporting/adminReasons/adminGetUnusedReasons.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}` | GET | AdminGetReasonShort | [AdminGetReasonShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [AdminGetReasonShort](../../services-api/pkg/service/reporting/adminReasons.go) | [AdminGetReasonShort](../../samples/cli/cmd/reporting/adminReasons/adminGetReason.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}` | DELETE | DeleteReasonShort | [DeleteReasonShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [DeleteReasonShort](../../services-api/pkg/service/reporting/adminReasons.go) | [DeleteReasonShort](../../samples/cli/cmd/reporting/adminReasons/deleteReason.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}` | PATCH | UpdateReasonShort | [UpdateReasonShort](../../reporting-sdk/pkg/reportingclient/admin_reasons/admin_reasons_client.go) | [UpdateReasonShort](../../services-api/pkg/service/reporting/adminReasons.go) | [UpdateReasonShort](../../samples/cli/cmd/reporting/adminReasons/updateReason.go) |

### Admin Reports Wrapper:  [AdminReports](../../services-api/pkg/service/reporting/adminReports.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/namespaces/{namespace}/reports` | GET | ListReportsShort | [ListReportsShort](../../reporting-sdk/pkg/reportingclient/admin_reports/admin_reports_client.go) | [ListReportsShort](../../services-api/pkg/service/reporting/adminReports.go) | [ListReportsShort](../../samples/cli/cmd/reporting/adminReports/listReports.go) |
| `/reporting/v1/admin/namespaces/{namespace}/reports` | POST | AdminSubmitReportShort | [AdminSubmitReportShort](../../reporting-sdk/pkg/reportingclient/admin_reports/admin_reports_client.go) | [AdminSubmitReportShort](../../services-api/pkg/service/reporting/adminReports.go) | [AdminSubmitReportShort](../../samples/cli/cmd/reporting/adminReports/adminSubmitReport.go) |

### Admin Moderation Rule Wrapper:  [AdminModerationRule](../../services-api/pkg/service/reporting/adminModerationRule.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/namespaces/{namespace}/rule` | POST | CreateModerationRuleShort | [CreateModerationRuleShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [CreateModerationRuleShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [CreateModerationRuleShort](../../samples/cli/cmd/reporting/adminModerationRule/createModerationRule.go) |
| `/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}` | PUT | UpdateModerationRuleShort | [UpdateModerationRuleShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [UpdateModerationRuleShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [UpdateModerationRuleShort](../../samples/cli/cmd/reporting/adminModerationRule/updateModerationRule.go) |
| `/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}` | DELETE | DeleteModerationRuleShort | [DeleteModerationRuleShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [DeleteModerationRuleShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [DeleteModerationRuleShort](../../samples/cli/cmd/reporting/adminModerationRule/deleteModerationRule.go) |
| `/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status` | PUT | UpdateModerationRuleStatusShort | [UpdateModerationRuleStatusShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [UpdateModerationRuleStatusShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [UpdateModerationRuleStatusShort](../../samples/cli/cmd/reporting/adminModerationRule/updateModerationRuleStatus.go) |
| `/reporting/v1/admin/namespaces/{namespace}/rules` | GET | GetModerationRulesShort | [GetModerationRulesShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [GetModerationRulesShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [GetModerationRulesShort](../../samples/cli/cmd/reporting/adminModerationRule/getModerationRules.go) |
| `/reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}` | GET | GetModerationRuleDetailsShort | [GetModerationRuleDetailsShort](../../reporting-sdk/pkg/reportingclient/admin_moderation_rule/admin_moderation_rule_client.go) | [GetModerationRuleDetailsShort](../../services-api/pkg/service/reporting/adminModerationRule.go) | [GetModerationRuleDetailsShort](../../samples/cli/cmd/reporting/adminModerationRule/getModerationRuleDetails.go) |

### Admin Tickets Wrapper:  [AdminTickets](../../services-api/pkg/service/reporting/adminTickets.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/admin/namespaces/{namespace}/tickets` | GET | ListTicketsShort | [ListTicketsShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [ListTicketsShort](../../services-api/pkg/service/reporting/adminTickets.go) | [ListTicketsShort](../../samples/cli/cmd/reporting/adminTickets/listTickets.go) |
| `/reporting/v1/admin/namespaces/{namespace}/tickets/statistic` | GET | TicketStatisticShort | [TicketStatisticShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [TicketStatisticShort](../../services-api/pkg/service/reporting/adminTickets.go) | [TicketStatisticShort](../../samples/cli/cmd/reporting/adminTickets/ticketStatistic.go) |
| `/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}` | GET | GetTicketDetailShort | [GetTicketDetailShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [GetTicketDetailShort](../../services-api/pkg/service/reporting/adminTickets.go) | [GetTicketDetailShort](../../samples/cli/cmd/reporting/adminTickets/getTicketDetail.go) |
| `/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}` | DELETE | DeleteTicketShort | [DeleteTicketShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [DeleteTicketShort](../../services-api/pkg/service/reporting/adminTickets.go) | [DeleteTicketShort](../../samples/cli/cmd/reporting/adminTickets/deleteTicket.go) |
| `/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports` | GET | GetReportsByTicketShort | [GetReportsByTicketShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [GetReportsByTicketShort](../../services-api/pkg/service/reporting/adminTickets.go) | [GetReportsByTicketShort](../../samples/cli/cmd/reporting/adminTickets/getReportsByTicket.go) |
| `/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions` | POST | UpdateTicketResolutionsShort | [UpdateTicketResolutionsShort](../../reporting-sdk/pkg/reportingclient/admin_tickets/admin_tickets_client.go) | [UpdateTicketResolutionsShort](../../services-api/pkg/service/reporting/adminTickets.go) | [UpdateTicketResolutionsShort](../../samples/cli/cmd/reporting/adminTickets/updateTicketResolutions.go) |

### Public Reasons Wrapper:  [PublicReasons](../../services-api/pkg/service/reporting/publicReasons.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/public/namespaces/{namespace}/reasonGroups` | GET | PublicListReasonGroupsShort | [PublicListReasonGroupsShort](../../reporting-sdk/pkg/reportingclient/public_reasons/public_reasons_client.go) | [PublicListReasonGroupsShort](../../services-api/pkg/service/reporting/publicReasons.go) | [PublicListReasonGroupsShort](../../samples/cli/cmd/reporting/publicReasons/publicListReasonGroups.go) |
| `/reporting/v1/public/namespaces/{namespace}/reasons` | GET | PublicGetReasonsShort | [PublicGetReasonsShort](../../reporting-sdk/pkg/reportingclient/public_reasons/public_reasons_client.go) | [PublicGetReasonsShort](../../services-api/pkg/service/reporting/publicReasons.go) | [PublicGetReasonsShort](../../samples/cli/cmd/reporting/publicReasons/publicGetReasons.go) |

### Public Reports Wrapper:  [PublicReports](../../services-api/pkg/service/reporting/publicReports.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/reporting/v1/public/namespaces/{namespace}/reports` | POST | SubmitReportShort | [SubmitReportShort](../../reporting-sdk/pkg/reportingclient/public_reports/public_reports_client.go) | [SubmitReportShort](../../services-api/pkg/service/reporting/publicReports.go) | [SubmitReportShort](../../samples/cli/cmd/reporting/publicReports/submitReport.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `restapi.AdminAllReasonsResponse` | [RestapiAdminAllReasonsResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_admin_all_reasons_response.go) |
| `restapi.BanAccountActionRequest` | [RestapiBanAccountActionRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_ban_account_action_request.go) |
| `restapi.BanAccountActionResponse` | [RestapiBanAccountActionResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_ban_account_action_response.go) |
| `restapi.ModerationRuleActionsRequest` | [RestapiModerationRuleActionsRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rule_actions_request.go) |
| `restapi.ModerationRuleActionsResponse` | [RestapiModerationRuleActionsResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rule_actions_response.go) |
| `restapi.ModerationRuleActiveRequest` | [RestapiModerationRuleActiveRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rule_active_request.go) |
| `restapi.ModerationRuleRequest` | [RestapiModerationRuleRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rule_request.go) |
| `restapi.ModerationRuleResponse` | [RestapiModerationRuleResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rule_response.go) |
| `restapi.ModerationRulesList` | [RestapiModerationRulesList ](../../reporting-sdk/pkg/reportingclientmodels/restapi_moderation_rules_list.go) |
| `restapi.UnusedReasonListResponse` | [RestapiUnusedReasonListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_unused_reason_list_response.go) |
| `restapi.actionApiRequest` | [RestapiActionApiRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_action_api_request.go) |
| `restapi.actionApiResponse` | [RestapiActionApiResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_action_api_response.go) |
| `restapi.actionListApiResponse` | [RestapiActionListApiResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_action_list_api_response.go) |
| `restapi.adminReasonListResponse` | [RestapiAdminReasonListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_admin_reason_list_response.go) |
| `restapi.adminReasonResponse` | [RestapiAdminReasonResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_admin_reason_response.go) |
| `restapi.categoryLimit` | [RestapiCategoryLimit ](../../reporting-sdk/pkg/reportingclientmodels/restapi_category_limit.go) |
| `restapi.configResponse` | [RestapiConfigResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_config_response.go) |
| `restapi.createReasonGroupRequest` | [RestapiCreateReasonGroupRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_create_reason_group_request.go) |
| `restapi.createReasonRequest` | [RestapiCreateReasonRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_create_reason_request.go) |
| `restapi.errorResponse` | [RestapiErrorResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_error_response.go) |
| `restapi.extensionCategoryApiRequest` | [RestapiExtensionCategoryApiRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_extension_category_api_request.go) |
| `restapi.extensionCategoryApiResponse` | [RestapiExtensionCategoryApiResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_extension_category_api_response.go) |
| `restapi.extensionCategoryListApiResponse` | [RestapiExtensionCategoryListApiResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_extension_category_list_api_response.go) |
| `restapi.pagination` | [RestapiPagination ](../../reporting-sdk/pkg/reportingclientmodels/restapi_pagination.go) |
| `restapi.publicReasonGroupResponse` | [RestapiPublicReasonGroupResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_public_reason_group_response.go) |
| `restapi.publicReasonListResponse` | [RestapiPublicReasonListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_public_reason_list_response.go) |
| `restapi.publicReasonResponse` | [RestapiPublicReasonResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_public_reason_response.go) |
| `restapi.reasonGroupListResponse` | [RestapiReasonGroupListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_reason_group_list_response.go) |
| `restapi.reasonGroupResponse` | [RestapiReasonGroupResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_reason_group_response.go) |
| `restapi.reportListResponse` | [RestapiReportListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_report_list_response.go) |
| `restapi.reportResponse` | [RestapiReportResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_report_response.go) |
| `restapi.reportingLimit` | [RestapiReportingLimit ](../../reporting-sdk/pkg/reportingclientmodels/restapi_reporting_limit.go) |
| `restapi.submitReportRequest` | [RestapiSubmitReportRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_submit_report_request.go) |
| `restapi.submitReportResponse` | [RestapiSubmitReportResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_submit_report_response.go) |
| `restapi.ticketListResponse` | [RestapiTicketListResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_ticket_list_response.go) |
| `restapi.ticketResponse` | [RestapiTicketResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_ticket_response.go) |
| `restapi.ticketStatisticResponse` | [RestapiTicketStatisticResponse ](../../reporting-sdk/pkg/reportingclientmodels/restapi_ticket_statistic_response.go) |
| `restapi.updateReasonGroupRequest` | [RestapiUpdateReasonGroupRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_update_reason_group_request.go) |
| `restapi.updateTicketResolutionsRequest` | [RestapiUpdateTicketResolutionsRequest ](../../reporting-sdk/pkg/reportingclientmodels/restapi_update_ticket_resolutions_request.go) |

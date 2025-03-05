// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminQueryGameSessionDetailParams creates a new AdminQueryGameSessionDetailParams object
// with the default values initialized.
func NewAdminQueryGameSessionDetailParams() *AdminQueryGameSessionDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryGameSessionDetailParamsWithTimeout creates a new AdminQueryGameSessionDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryGameSessionDetailParamsWithTimeout(timeout time.Duration) *AdminQueryGameSessionDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryGameSessionDetailParamsWithContext creates a new AdminQueryGameSessionDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryGameSessionDetailParamsWithContext(ctx context.Context) *AdminQueryGameSessionDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionDetailParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryGameSessionDetailParamsWithHTTPClient creates a new AdminQueryGameSessionDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryGameSessionDetailParamsWithHTTPClient(client *http.Client) *AdminQueryGameSessionDetailParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryGameSessionDetailParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryGameSessionDetailParams contains all the parameters to send to the API endpoint
for the admin query game session detail operation typically these are written to a http.Request
*/
type AdminQueryGameSessionDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*CompletedOnly
	  only query for session that already ended. supported: TRUE, FALSE

	*/
	CompletedOnly *string
	/*ConfigurationName
	  configuration template name

	*/
	ConfigurationName *string
	/*DsPodName
	  pod name of a dedicated server

	*/
	DsPodName *string
	/*EndDate
	  End date time in RFC 3339 format: 2025-02-28T07:45:39Z

	*/
	EndDate *string
	/*GameSessionID
	  gamesession ID

	*/
	GameSessionID *string
	/*IsPersistent
	  game session is Persistent. supported: TRUE, FALSE

	*/
	IsPersistent *string
	/*Joinability
	  game session joinability to filter. joinability types: OPEN,CLOSED,INVITE_ONLY

	*/
	Joinability *string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*MatchPool
	  matchmaking pool

	*/
	MatchPool *string
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: created_at (default), updated_at

	*/
	OrderBy *string
	/*StartDate
	  Start date time in RFC 3339 format: 2025-02-28T07:45:39Z

	*/
	StartDate *string
	/*StatusV2
	  game session status to filter. supported status: NEED_TO_REQUEST,REQUESTED,AVAILABLE,FAILED_TO_REQUEST,UNKNOWN,ENDED,DS_ERROR,PREPARING

	*/
	StatusV2 *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithTimeout(timeout time.Duration) *AdminQueryGameSessionDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithContext(ctx context.Context) *AdminQueryGameSessionDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithHTTPClient(client *http.Client) *AdminQueryGameSessionDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryGameSessionDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithNamespace(namespace string) *AdminQueryGameSessionDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCompletedOnly adds the completedOnly to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithCompletedOnly(completedOnly *string) *AdminQueryGameSessionDetailParams {
	o.SetCompletedOnly(completedOnly)
	return o
}

// SetCompletedOnly adds the completedOnly to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetCompletedOnly(completedOnly *string) {
	o.CompletedOnly = completedOnly
}

// WithConfigurationName adds the configurationName to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithConfigurationName(configurationName *string) *AdminQueryGameSessionDetailParams {
	o.SetConfigurationName(configurationName)
	return o
}

// SetConfigurationName adds the configurationName to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetConfigurationName(configurationName *string) {
	o.ConfigurationName = configurationName
}

// WithDsPodName adds the dsPodName to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithDsPodName(dsPodName *string) *AdminQueryGameSessionDetailParams {
	o.SetDsPodName(dsPodName)
	return o
}

// SetDsPodName adds the dsPodName to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetDsPodName(dsPodName *string) {
	o.DsPodName = dsPodName
}

// WithEndDate adds the endDate to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithEndDate(endDate *string) *AdminQueryGameSessionDetailParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithGameSessionID adds the gameSessionID to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithGameSessionID(gameSessionID *string) *AdminQueryGameSessionDetailParams {
	o.SetGameSessionID(gameSessionID)
	return o
}

// SetGameSessionID adds the gameSessionId to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetGameSessionID(gameSessionID *string) {
	o.GameSessionID = gameSessionID
}

// WithIsPersistent adds the isPersistent to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithIsPersistent(isPersistent *string) *AdminQueryGameSessionDetailParams {
	o.SetIsPersistent(isPersistent)
	return o
}

// SetIsPersistent adds the isPersistent to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetIsPersistent(isPersistent *string) {
	o.IsPersistent = isPersistent
}

// WithJoinability adds the joinability to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithJoinability(joinability *string) *AdminQueryGameSessionDetailParams {
	o.SetJoinability(joinability)
	return o
}

// SetJoinability adds the joinability to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetJoinability(joinability *string) {
	o.Joinability = joinability
}

// WithLimit adds the limit to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithLimit(limit *int64) *AdminQueryGameSessionDetailParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchPool adds the matchPool to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithMatchPool(matchPool *string) *AdminQueryGameSessionDetailParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetMatchPool(matchPool *string) {
	o.MatchPool = matchPool
}

// WithOffset adds the offset to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithOffset(offset *int64) *AdminQueryGameSessionDetailParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithOrder(order *string) *AdminQueryGameSessionDetailParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithOrderBy(orderBy *string) *AdminQueryGameSessionDetailParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithStartDate adds the startDate to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithStartDate(startDate *string) *AdminQueryGameSessionDetailParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithStatusV2 adds the statusV2 to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithStatusV2(statusV2 *string) *AdminQueryGameSessionDetailParams {
	o.SetStatusV2(statusV2)
	return o
}

// SetStatusV2 adds the statusV2 to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetStatusV2(statusV2 *string) {
	o.StatusV2 = statusV2
}

// WithUserID adds the userID to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) WithUserID(userID *string) *AdminQueryGameSessionDetailParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query game session detail params
func (o *AdminQueryGameSessionDetailParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryGameSessionDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CompletedOnly != nil {

		// query param completedOnly
		var qrCompletedOnly string
		if o.CompletedOnly != nil {
			qrCompletedOnly = *o.CompletedOnly
		}
		qCompletedOnly := qrCompletedOnly
		if qCompletedOnly != "" {
			if err := r.SetQueryParam("completedOnly", qCompletedOnly); err != nil {
				return err
			}
		}

	}

	if o.ConfigurationName != nil {

		// query param configurationName
		var qrConfigurationName string
		if o.ConfigurationName != nil {
			qrConfigurationName = *o.ConfigurationName
		}
		qConfigurationName := qrConfigurationName
		if qConfigurationName != "" {
			if err := r.SetQueryParam("configurationName", qConfigurationName); err != nil {
				return err
			}
		}

	}

	if o.DsPodName != nil {

		// query param dsPodName
		var qrDsPodName string
		if o.DsPodName != nil {
			qrDsPodName = *o.DsPodName
		}
		qDsPodName := qrDsPodName
		if qDsPodName != "" {
			if err := r.SetQueryParam("dsPodName", qDsPodName); err != nil {
				return err
			}
		}

	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.GameSessionID != nil {

		// query param gameSessionID
		var qrGameSessionID string
		if o.GameSessionID != nil {
			qrGameSessionID = *o.GameSessionID
		}
		qGameSessionID := qrGameSessionID
		if qGameSessionID != "" {
			if err := r.SetQueryParam("gameSessionID", qGameSessionID); err != nil {
				return err
			}
		}

	}

	if o.IsPersistent != nil {

		// query param isPersistent
		var qrIsPersistent string
		if o.IsPersistent != nil {
			qrIsPersistent = *o.IsPersistent
		}
		qIsPersistent := qrIsPersistent
		if qIsPersistent != "" {
			if err := r.SetQueryParam("isPersistent", qIsPersistent); err != nil {
				return err
			}
		}

	}

	if o.Joinability != nil {

		// query param joinability
		var qrJoinability string
		if o.Joinability != nil {
			qrJoinability = *o.Joinability
		}
		qJoinability := qrJoinability
		if qJoinability != "" {
			if err := r.SetQueryParam("joinability", qJoinability); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.MatchPool != nil {

		// query param matchPool
		var qrMatchPool string
		if o.MatchPool != nil {
			qrMatchPool = *o.MatchPool
		}
		qMatchPool := qrMatchPool
		if qMatchPool != "" {
			if err := r.SetQueryParam("matchPool", qMatchPool); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
				return err
			}
		}

	}

	if o.StatusV2 != nil {

		// query param statusV2
		var qrStatusV2 string
		if o.StatusV2 != nil {
			qrStatusV2 = *o.StatusV2
		}
		qStatusV2 := qrStatusV2
		if qStatusV2 != "" {
			if err := r.SetQueryParam("statusV2", qStatusV2); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userID
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userID", qUserID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
